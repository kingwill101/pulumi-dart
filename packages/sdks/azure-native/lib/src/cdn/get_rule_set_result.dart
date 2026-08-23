// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getRuleSet.
class GetRuleSetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String deploymentStatus;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The name of the profile which holds the rule set.
  final String profileName;
  /// Provisioning status
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetRuleSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deploymentStatus] Required.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [profileName] The name of the profile which holds the rule set.
  /// [provisioningState] Provisioning status
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetRuleSetResult({
    required this.azureApiVersion,
    required this.deploymentStatus,
    required this.id,
    required this.name,
    required this.profileName,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deploymentStatus': deploymentStatus,
      'id': id,
      'name': name,
      'profileName': profileName,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetRuleSetResult.fromMap(Map<String, dynamic> map) {
    return GetRuleSetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deploymentStatus: map['deploymentStatus'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      profileName: map['profileName'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
