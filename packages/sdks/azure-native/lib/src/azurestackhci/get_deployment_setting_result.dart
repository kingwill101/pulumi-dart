// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_configuration_response.dart';
import 'ece_reported_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDeploymentSetting.
class GetDeploymentSettingResult {
  /// Azure resource ids of Arc machines to be part of cluster.
  final List<String> arcNodeResourceIds;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Scale units will contains list of deployment data
  final DeploymentConfigurationResponse deploymentConfiguration;
  /// The deployment mode for cluster deployment.
  final String deploymentMode;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The intended operation for a cluster.
  final String? operationType;
  /// DeploymentSetting provisioning state
  final String provisioningState;
  /// Deployment Status reported from cluster.
  final EceReportedPropertiesResponse reportedProperties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDeploymentSettingResult].
  /// [arcNodeResourceIds] Azure resource ids of Arc machines to be part of cluster.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deploymentConfiguration] Scale units will contains list of deployment data
  /// [deploymentMode] The deployment mode for cluster deployment.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [operationType] The intended operation for a cluster.
  /// [provisioningState] DeploymentSetting provisioning state
  /// [reportedProperties] Deployment Status reported from cluster.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDeploymentSettingResult({
    required this.arcNodeResourceIds,
    required this.azureApiVersion,
    required this.deploymentConfiguration,
    required this.deploymentMode,
    required this.id,
    required this.name,
    this.operationType,
    required this.provisioningState,
    required this.reportedProperties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcNodeResourceIds': arcNodeResourceIds,
      'azureApiVersion': azureApiVersion,
      'deploymentConfiguration': deploymentConfiguration.toMap(),
      'deploymentMode': deploymentMode,
      'id': id,
      'name': name,
      'operationType': ?operationType,
      'provisioningState': provisioningState,
      'reportedProperties': reportedProperties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDeploymentSettingResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentSettingResult(
      arcNodeResourceIds: (map['arcNodeResourceIds'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      deploymentConfiguration: DeploymentConfigurationResponse.fromMap((map['deploymentConfiguration']! as Map).cast<String, dynamic>()),
      deploymentMode: map['deploymentMode'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      reportedProperties: EceReportedPropertiesResponse.fromMap((map['reportedProperties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

