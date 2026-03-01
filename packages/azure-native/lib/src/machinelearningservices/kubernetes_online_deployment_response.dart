// ignore_for_file: unused_element, unnecessary_cast

import 'code_configuration_response.dart';
import 'container_resource_requirements_response.dart';
import 'data_collector_response.dart';
import 'default_scale_settings_response.dart';
import 'online_request_settings_response.dart';
import 'probe_settings_response.dart';

/// Properties specific to a KubernetesOnlineDeployment.
class KubernetesOnlineDeploymentResponse {
  /// If true, enables Application Insights logging.
  final bool? appInsightsEnabled;
  /// Code configuration for the endpoint deployment.
  final CodeConfigurationResponse? codeConfiguration;
  /// The resource requirements for the container (cpu and memory).
  final ContainerResourceRequirementsResponse? containerResourceRequirements;
  /// The mdc configuration, we disable mdc when it's null.
  final DataCollectorResponse? dataCollector;
  /// Description of the endpoint deployment.
  final String? description;
  /// If Enabled, allow egress public network access. If Disabled, this will create secure egress. Default: Enabled.
  final String? egressPublicNetworkAccess;
  /// Enum to determine endpoint compute type.
  /// Expected value is 'Kubernetes'.
  final String endpointComputeType;
  /// ARM resource ID or AssetId of the environment specification for the endpoint deployment.
  final String? environmentId;
  /// Environment variables configuration for the deployment.
  final Map<String, String>? environmentVariables;
  /// Compute instance type. Default: Standard_F4s_v2.
  final String? instanceType;
  /// Liveness probe monitors the health of the container regularly.
  final ProbeSettingsResponse? livenessProbe;
  /// The URI path to the model.
  final String? model;
  /// The path to mount the model in custom container.
  final String? modelMountPath;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final Map<String, String>? properties;
  /// Provisioning state for the endpoint deployment.
  final String provisioningState;
  /// Readiness probe validates if the container is ready to serve traffic. The properties and defaults are the same as liveness probe.
  final ProbeSettingsResponse? readinessProbe;
  /// Request settings for the deployment.
  final OnlineRequestSettingsResponse? requestSettings;
  /// Scale settings for the deployment.
  /// If it is null or not provided,
  /// it defaults to TargetUtilizationScaleSettings for KubernetesOnlineDeployment
  /// and to DefaultScaleSettings for ManagedOnlineDeployment.
  final DefaultScaleSettingsResponse? scaleSettings;
  /// Startup probe verify whether an application within a container has started successfully.
  final ProbeSettingsResponse? startupProbe;

  /// Creates a new [KubernetesOnlineDeploymentResponse].
  /// [appInsightsEnabled] If true, enables Application Insights logging.
  /// [codeConfiguration] Code configuration for the endpoint deployment.
  /// [containerResourceRequirements] The resource requirements for the container (cpu and memory).
  /// [dataCollector] The mdc configuration, we disable mdc when it's null.
  /// [description] Description of the endpoint deployment.
  /// [egressPublicNetworkAccess] If Enabled, allow egress public network access. If Disabled, this will create secure egress. Default: Enabled.
  /// [endpointComputeType] Enum to determine endpoint compute type.
  /// [environmentId] ARM resource ID or AssetId of the environment specification for the endpoint deployment.
  /// [environmentVariables] Environment variables configuration for the deployment.
  /// [instanceType] Compute instance type. Default: Standard_F4s_v2.
  /// [livenessProbe] Liveness probe monitors the health of the container regularly.
  /// [model] The URI path to the model.
  /// [modelMountPath] The path to mount the model in custom container.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [provisioningState] Provisioning state for the endpoint deployment.
  /// [readinessProbe] Readiness probe validates if the container is ready to serve traffic. The properties and defaults are the same as liveness probe.
  /// [requestSettings] Request settings for the deployment.
  /// [scaleSettings] Scale settings for the deployment.
  /// [startupProbe] Startup probe verify whether an application within a container has started successfully.
  KubernetesOnlineDeploymentResponse({
    this.appInsightsEnabled,
    this.codeConfiguration,
    this.containerResourceRequirements,
    this.dataCollector,
    this.description,
    this.egressPublicNetworkAccess,
    required this.endpointComputeType,
    this.environmentId,
    this.environmentVariables,
    this.instanceType,
    this.livenessProbe,
    this.model,
    this.modelMountPath,
    this.properties,
    required this.provisioningState,
    this.readinessProbe,
    this.requestSettings,
    this.scaleSettings,
    this.startupProbe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInsightsEnabled': ?appInsightsEnabled,
      'codeConfiguration': ?codeConfiguration == null ? null : codeConfiguration!.toMap(),
      'containerResourceRequirements': ?containerResourceRequirements == null ? null : containerResourceRequirements!.toMap(),
      'dataCollector': ?dataCollector == null ? null : dataCollector!.toMap(),
      'description': ?description,
      'egressPublicNetworkAccess': ?egressPublicNetworkAccess,
      'endpointComputeType': endpointComputeType,
      'environmentId': ?environmentId,
      'environmentVariables': ?environmentVariables,
      'instanceType': ?instanceType,
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'model': ?model,
      'modelMountPath': ?modelMountPath,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'readinessProbe': ?readinessProbe == null ? null : readinessProbe!.toMap(),
      'requestSettings': ?requestSettings == null ? null : requestSettings!.toMap(),
      'scaleSettings': ?scaleSettings == null ? null : scaleSettings!.toMap(),
      'startupProbe': ?startupProbe == null ? null : startupProbe!.toMap(),
    };
  }

  factory KubernetesOnlineDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesOnlineDeploymentResponse(
      appInsightsEnabled: map['appInsightsEnabled'] == null ? null : map['appInsightsEnabled'] as bool,
      codeConfiguration: map['codeConfiguration'] == null ? null : CodeConfigurationResponse.fromMap((map['codeConfiguration'] as Map).cast<String, dynamic>()),
      containerResourceRequirements: map['containerResourceRequirements'] == null ? null : ContainerResourceRequirementsResponse.fromMap((map['containerResourceRequirements'] as Map).cast<String, dynamic>()),
      dataCollector: map['dataCollector'] == null ? null : DataCollectorResponse.fromMap((map['dataCollector'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      egressPublicNetworkAccess: map['egressPublicNetworkAccess'] == null ? null : map['egressPublicNetworkAccess'] as String,
      endpointComputeType: map['endpointComputeType'] as String,
      environmentId: map['environmentId'] == null ? null : map['environmentId'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : (map['environmentVariables'] as Map).cast<String, String>(),
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      livenessProbe: map['livenessProbe'] == null ? null : ProbeSettingsResponse.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>()),
      model: map['model'] == null ? null : map['model'] as String,
      modelMountPath: map['modelMountPath'] == null ? null : map['modelMountPath'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      readinessProbe: map['readinessProbe'] == null ? null : ProbeSettingsResponse.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>()),
      requestSettings: map['requestSettings'] == null ? null : OnlineRequestSettingsResponse.fromMap((map['requestSettings'] as Map).cast<String, dynamic>()),
      scaleSettings: map['scaleSettings'] == null ? null : DefaultScaleSettingsResponse.fromMap((map['scaleSettings'] as Map).cast<String, dynamic>()),
      startupProbe: map['startupProbe'] == null ? null : ProbeSettingsResponse.fromMap((map['startupProbe'] as Map).cast<String, dynamic>()),
    );
  }
}

