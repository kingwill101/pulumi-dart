// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSolutionConfiguration.
class GetSolutionConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The last time resources were inventoried
  final String lastSyncTime;
  /// The name of the resource
  final String name;
  /// The resource provisioning state.
  final String provisioningState;
  /// Solution settings
  final Map<String, String>? solutionSettings;
  /// The type of the solution
  final String solutionType;
  /// The status of solution configurations
  final String status;
  /// The detailed message of status details
  final String statusDetails;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSolutionConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastSyncTime] The last time resources were inventoried
  /// [name] The name of the resource
  /// [provisioningState] The resource provisioning state.
  /// [solutionSettings] Solution settings
  /// [solutionType] The type of the solution
  /// [status] The status of solution configurations
  /// [statusDetails] The detailed message of status details
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSolutionConfigurationResult({
    required this.azureApiVersion,
    required this.id,
    required this.lastSyncTime,
    required this.name,
    required this.provisioningState,
    this.solutionSettings,
    required this.solutionType,
    required this.status,
    required this.statusDetails,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'lastSyncTime': lastSyncTime,
      'name': name,
      'provisioningState': provisioningState,
      'solutionSettings': ?solutionSettings,
      'solutionType': solutionType,
      'status': status,
      'statusDetails': statusDetails,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSolutionConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetSolutionConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      lastSyncTime: map['lastSyncTime'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      solutionSettings: map['solutionSettings'] == null ? null : (map['solutionSettings'] as Map).cast<String, String>(),
      solutionType: map['solutionType'] as String,
      status: map['status'] as String,
      statusDetails: map['statusDetails'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

