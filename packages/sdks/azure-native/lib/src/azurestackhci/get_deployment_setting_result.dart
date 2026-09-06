// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_configuration_response.dart';
import 'ece_reported_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDeploymentSetting.
class GetDeploymentSettingResult {
  /// Azure resource ids of Arc machines to be part of cluster.
  final List<String>? arcNodeResourceIds;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Scale units will contains list of deployment data
  final DeploymentConfigurationResponse? deploymentConfiguration;
  /// The deployment mode for cluster deployment.
  final String? deploymentMode;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The intended operation for a cluster.
  final String? operationType;
  /// DeploymentSetting provisioning state
  final String? provisioningState;
  /// Deployment Status reported from cluster.
  final EceReportedPropertiesResponse? reportedProperties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  GetDeploymentSettingResult({
    this.arcNodeResourceIds,
    this.azureApiVersion,
    this.deploymentConfiguration,
    this.deploymentMode,
    this.id,
    this.name,
    String? operationType,
    this.provisioningState,
    this.reportedProperties,
    this.systemData,
    this.type,
  }) : operationType = operationType ?? 'ClusterProvisioning';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcNodeResourceIds': ?arcNodeResourceIds,
      'azureApiVersion': ?azureApiVersion,
      'deploymentConfiguration': ?deploymentConfiguration?.toMap(),
      'deploymentMode': ?deploymentMode,
      'id': ?id,
      'name': ?name,
      'operationType': ?operationType,
      'provisioningState': ?provisioningState,
      'reportedProperties': ?reportedProperties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDeploymentSettingResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentSettingResult(
      arcNodeResourceIds: (() { final guardedValue = map['arcNodeResourceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentConfiguration: (() { final guardedValue = map['deploymentConfiguration']; if (guardedValue == null) return null; return DeploymentConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reportedProperties: (() { final guardedValue = map['reportedProperties']; if (guardedValue == null) return null; return EceReportedPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
