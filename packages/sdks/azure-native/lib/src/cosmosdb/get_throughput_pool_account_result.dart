// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getThroughputPoolAccount.
class GetThroughputPoolAccountResult {
  /// The instance id of global database account in the throughputPool.
  final String accountInstanceId;
  /// The location of  global database account in the throughputPool.
  final String? accountLocation;
  /// The resource identifier of global database account in the throughputPool.
  final String? accountResourceIdentifier;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// A provisioning state of the ThroughputPool Account.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetThroughputPoolAccountResult].
  /// [accountInstanceId] The instance id of global database account in the throughputPool.
  /// [accountLocation] The location of  global database account in the throughputPool.
  /// [accountResourceIdentifier] The resource identifier of global database account in the throughputPool.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] A provisioning state of the ThroughputPool Account.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetThroughputPoolAccountResult({
    required this.accountInstanceId,
    this.accountLocation,
    this.accountResourceIdentifier,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountInstanceId': accountInstanceId,
      'accountLocation': ?accountLocation,
      'accountResourceIdentifier': ?accountResourceIdentifier,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetThroughputPoolAccountResult.fromMap(Map<String, dynamic> map) {
    return GetThroughputPoolAccountResult(
      accountInstanceId: map['accountInstanceId'] as String,
      accountLocation: (() { final guardedValue = map['accountLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountResourceIdentifier: (() { final guardedValue = map['accountResourceIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
