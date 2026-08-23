// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSenderUsername.
class GetSenderUsernameResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The location where the SenderUsername resource data is stored at rest.
  final String dataLocation;
  /// The display name for the senderUsername.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Provisioning state of the resource. Unknown is the default state for Communication Services.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// A sender senderUsername to be used when sending emails.
  final String username;

  /// Creates a new [GetSenderUsernameResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataLocation] The location where the SenderUsername resource data is stored at rest.
  /// [displayName] The display name for the senderUsername.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource. Unknown is the default state for Communication Services.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [username] A sender senderUsername to be used when sending emails.
  const GetSenderUsernameResult({
    required this.azureApiVersion,
    required this.dataLocation,
    this.displayName,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataLocation': dataLocation,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
      'username': username,
    };
  }

  factory GetSenderUsernameResult.fromMap(Map<String, dynamic> map) {
    return GetSenderUsernameResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataLocation: map['dataLocation'] as String,
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      username: map['username'] as String,
    );
  }
}
