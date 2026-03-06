// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSmtpUsername.
class GetSmtpUsernameResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The application Id for the linked Entra Application.
  final String entraApplicationId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The tenant of the linked Entra Application.
  final String tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The SMTP username. Could be free form or in the email address format.
  final String username;

  /// Creates a new [GetSmtpUsernameResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [entraApplicationId] The application Id for the linked Entra Application.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The tenant of the linked Entra Application.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [username] The SMTP username. Could be free form or in the email address format.
  const GetSmtpUsernameResult({
    required this.azureApiVersion,
    required this.entraApplicationId,
    required this.id,
    required this.name,
    required this.systemData,
    required this.tenantId,
    required this.type,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'entraApplicationId': entraApplicationId,
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'tenantId': tenantId,
      'type': type,
      'username': username,
    };
  }

  factory GetSmtpUsernameResult.fromMap(Map<String, dynamic> map) {
    return GetSmtpUsernameResult(
      azureApiVersion: map['azureApiVersion'] as String,
      entraApplicationId: map['entraApplicationId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      username: map['username'] as String,
    );
  }
}

