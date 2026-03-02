// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_configuration.dart';
import 'data_collector.dart';
import 'default_scale_settings.dart';
import 'online_request_settings.dart';
import 'probe_settings.dart';

/// Properties specific to a ManagedOnlineDeployment.
class ManagedOnlineDeployment {
  /// If true, enables Application Insights logging.
  final pulumi.Input<bool>? appInsightsEnabled;
  /// Code configuration for the endpoint deployment.
  final pulumi.Input<CodeConfiguration>? codeConfiguration;
  /// The mdc configuration, we disable mdc when it's null.
  final pulumi.Input<DataCollector>? dataCollector;
  /// Description of the endpoint deployment.
  final pulumi.Input<String>? description;
  /// If Enabled, allow egress public network access. If Disabled, this will create secure egress. Default: Enabled.
  final pulumi.Input<String>? egressPublicNetworkAccess;
  /// Enum to determine endpoint compute type.
  /// Expected value is 'Managed'.
  final pulumi.Input<String> endpointComputeType;
  /// ARM resource ID or AssetId of the environment specification for the endpoint deployment.
  final pulumi.Input<String>? environmentId;
  /// Environment variables configuration for the deployment.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// Compute instance type. Default: Standard_F4s_v2.
  final pulumi.Input<String>? instanceType;
  /// Liveness probe monitors the health of the container regularly.
  final pulumi.Input<ProbeSettings>? livenessProbe;
  /// The URI path to the model.
  final pulumi.Input<String>? model;
  /// The path to mount the model in custom container.
  final pulumi.Input<String>? modelMountPath;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>>? properties;
  /// Readiness probe validates if the container is ready to serve traffic. The properties and defaults are the same as liveness probe.
  final pulumi.Input<ProbeSettings>? readinessProbe;
  /// Request settings for the deployment.
  final pulumi.Input<OnlineRequestSettings>? requestSettings;
  /// Scale settings for the deployment.
  /// If it is null or not provided,
  /// it defaults to TargetUtilizationScaleSettings for KubernetesOnlineDeployment
  /// and to DefaultScaleSettings for ManagedOnlineDeployment.
  final pulumi.Input<DefaultScaleSettings>? scaleSettings;
  /// Startup probe verify whether an application within a container has started successfully.
  final pulumi.Input<ProbeSettings>? startupProbe;

  /// Creates a new [ManagedOnlineDeployment].
  /// [appInsightsEnabled] If true, enables Application Insights logging.
  /// [codeConfiguration] Code configuration for the endpoint deployment.
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
  /// [readinessProbe] Readiness probe validates if the container is ready to serve traffic. The properties and defaults are the same as liveness probe.
  /// [requestSettings] Request settings for the deployment.
  /// [scaleSettings] Scale settings for the deployment.
  /// [startupProbe] Startup probe verify whether an application within a container has started successfully.
  ManagedOnlineDeployment({
    this.appInsightsEnabled,
    this.codeConfiguration,
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
    this.readinessProbe,
    this.requestSettings,
    this.scaleSettings,
    this.startupProbe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInsightsEnabled': ?appInsightsEnabled,
      'codeConfiguration': ?pulumi.Input.mapOptionalInputValue<CodeConfiguration, Map<String, dynamic>>(codeConfiguration, (value) => value.toMap()),
      'dataCollector': ?pulumi.Input.mapOptionalInputValue<DataCollector, Map<String, dynamic>>(dataCollector, (value) => value.toMap()),
      'description': ?description,
      'egressPublicNetworkAccess': ?egressPublicNetworkAccess,
      'endpointComputeType': endpointComputeType,
      'environmentId': ?environmentId,
      'environmentVariables': ?environmentVariables,
      'instanceType': ?instanceType,
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<ProbeSettings, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'model': ?model,
      'modelMountPath': ?modelMountPath,
      'properties': ?properties,
      'readinessProbe': ?pulumi.Input.mapOptionalInputValue<ProbeSettings, Map<String, dynamic>>(readinessProbe, (value) => value.toMap()),
      'requestSettings': ?pulumi.Input.mapOptionalInputValue<OnlineRequestSettings, Map<String, dynamic>>(requestSettings, (value) => value.toMap()),
      'scaleSettings': ?pulumi.Input.mapOptionalInputValue<DefaultScaleSettings, Map<String, dynamic>>(scaleSettings, (value) => value.toMap()),
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<ProbeSettings, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
    };
  }

  factory ManagedOnlineDeployment.fromMap(Map<String, dynamic> map) {
    return ManagedOnlineDeployment(
      appInsightsEnabled: map['appInsightsEnabled'] == null ? null : (map['appInsightsEnabled']! as bool).input(),
      codeConfiguration: map['codeConfiguration'] == null ? null : (CodeConfiguration.fromMap((map['codeConfiguration']! as Map).cast<String, dynamic>())).input(),
      dataCollector: map['dataCollector'] == null ? null : (DataCollector.fromMap((map['dataCollector']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      egressPublicNetworkAccess: map['egressPublicNetworkAccess'] == null ? null : (map['egressPublicNetworkAccess']! as String).input(),
      endpointComputeType: (map['endpointComputeType'] as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId']! as String).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables']! as Map).cast<String, String>()).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      livenessProbe: map['livenessProbe'] == null ? null : (ProbeSettings.fromMap((map['livenessProbe']! as Map).cast<String, dynamic>())).input(),
      model: map['model'] == null ? null : (map['model']! as String).input(),
      modelMountPath: map['modelMountPath'] == null ? null : (map['modelMountPath']! as String).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      readinessProbe: map['readinessProbe'] == null ? null : (ProbeSettings.fromMap((map['readinessProbe']! as Map).cast<String, dynamic>())).input(),
      requestSettings: map['requestSettings'] == null ? null : (OnlineRequestSettings.fromMap((map['requestSettings']! as Map).cast<String, dynamic>())).input(),
      scaleSettings: map['scaleSettings'] == null ? null : (DefaultScaleSettings.fromMap((map['scaleSettings']! as Map).cast<String, dynamic>())).input(),
      startupProbe: map['startupProbe'] == null ? null : (ProbeSettings.fromMap((map['startupProbe']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

