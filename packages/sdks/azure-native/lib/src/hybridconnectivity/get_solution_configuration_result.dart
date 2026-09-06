// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSolutionConfiguration.
class GetSolutionConfigurationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The last time resources were inventoried
  final String? lastSyncTime;
  /// The name of the resource
  final String? name;
  /// The resource provisioning state.
  final String? provisioningState;
  /// Solution settings
  final Map<String, String>? solutionSettings;
  /// The type of the solution
  final String? solutionType;
  /// The status of solution configurations
  final String? status;
  /// The detailed message of status details
  final String? statusDetails;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetSolutionConfigurationResult({
    this.azureApiVersion,
    this.id,
    this.lastSyncTime,
    this.name,
    this.provisioningState,
    this.solutionSettings,
    this.solutionType,
    this.status,
    this.statusDetails,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'lastSyncTime': ?lastSyncTime,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'solutionSettings': ?solutionSettings,
      'solutionType': ?solutionType,
      'status': ?status,
      'statusDetails': ?statusDetails,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSolutionConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetSolutionConfigurationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSyncTime: (() { final guardedValue = map['lastSyncTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      solutionSettings: (() { final guardedValue = map['solutionSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      solutionType: (() { final guardedValue = map['solutionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusDetails: (() { final guardedValue = map['statusDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
