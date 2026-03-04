// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_configuration_response.dart';
import 'data_collector_response.dart';
import 'default_scale_settings_response.dart';
import 'online_request_settings_response.dart';
import 'probe_settings_response.dart';

/// Properties specific to a ManagedOnlineDeployment.
class ManagedOnlineDeploymentResponse {
  /// If true, enables Application Insights logging.
  final pulumi.Input<bool>? appInsightsEnabled;

  /// Code configuration for the endpoint deployment.
  final pulumi.Input<CodeConfigurationResponse>? codeConfiguration;

  /// The mdc configuration, we disable mdc when it's null.
  final pulumi.Input<DataCollectorResponse>? dataCollector;

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
  final pulumi.Input<ProbeSettingsResponse>? livenessProbe;

  /// The URI path to the model.
  final pulumi.Input<String>? model;

  /// The path to mount the model in custom container.
  final pulumi.Input<String>? modelMountPath;

  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>>? properties;

  /// Provisioning state for the endpoint deployment.
  final pulumi.Input<String> provisioningState;

  /// Readiness probe validates if the container is ready to serve traffic. The properties and defaults are the same as liveness probe.
  final pulumi.Input<ProbeSettingsResponse>? readinessProbe;

  /// Request settings for the deployment.
  final pulumi.Input<OnlineRequestSettingsResponse>? requestSettings;

  /// Scale settings for the deployment.
  /// If it is null or not provided,
  /// it defaults to TargetUtilizationScaleSettings for KubernetesOnlineDeployment
  /// and to DefaultScaleSettings for ManagedOnlineDeployment.
  final pulumi.Input<DefaultScaleSettingsResponse>? scaleSettings;

  /// Startup probe verify whether an application within a container has started successfully.
  final pulumi.Input<ProbeSettingsResponse>? startupProbe;

  /// Creates a new [ManagedOnlineDeploymentResponse].
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
  /// [provisioningState] Provisioning state for the endpoint deployment.
  /// [readinessProbe] Readiness probe validates if the container is ready to serve traffic. The properties and defaults are the same as liveness probe.
  /// [requestSettings] Request settings for the deployment.
  /// [scaleSettings] Scale settings for the deployment.
  /// [startupProbe] Startup probe verify whether an application within a container has started successfully.
  ManagedOnlineDeploymentResponse({
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
    required this.provisioningState,
    this.readinessProbe,
    this.requestSettings,
    this.scaleSettings,
    this.startupProbe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInsightsEnabled': ?appInsightsEnabled,
      'codeConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            CodeConfigurationResponse,
            Map<String, dynamic>
          >(codeConfiguration, (value) => value.toMap()),
      'dataCollector':
          ?pulumi.Input.mapOptionalInputValue<
            DataCollectorResponse,
            Map<String, dynamic>
          >(dataCollector, (value) => value.toMap()),
      'description': ?description,
      'egressPublicNetworkAccess': ?egressPublicNetworkAccess,
      'endpointComputeType': endpointComputeType,
      'environmentId': ?environmentId,
      'environmentVariables': ?environmentVariables,
      'instanceType': ?instanceType,
      'livenessProbe':
          ?pulumi.Input.mapOptionalInputValue<
            ProbeSettingsResponse,
            Map<String, dynamic>
          >(livenessProbe, (value) => value.toMap()),
      'model': ?model,
      'modelMountPath': ?modelMountPath,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'readinessProbe':
          ?pulumi.Input.mapOptionalInputValue<
            ProbeSettingsResponse,
            Map<String, dynamic>
          >(readinessProbe, (value) => value.toMap()),
      'requestSettings':
          ?pulumi.Input.mapOptionalInputValue<
            OnlineRequestSettingsResponse,
            Map<String, dynamic>
          >(requestSettings, (value) => value.toMap()),
      'scaleSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DefaultScaleSettingsResponse,
            Map<String, dynamic>
          >(scaleSettings, (value) => value.toMap()),
      'startupProbe':
          ?pulumi.Input.mapOptionalInputValue<
            ProbeSettingsResponse,
            Map<String, dynamic>
          >(startupProbe, (value) => value.toMap()),
    };
  }

  factory ManagedOnlineDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return ManagedOnlineDeploymentResponse(
      appInsightsEnabled: (() {
        final guardedValue = map['appInsightsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      codeConfiguration: (() {
        final guardedValue = map['codeConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CodeConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataCollector: (() {
        final guardedValue = map['dataCollector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataCollectorResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      egressPublicNetworkAccess: (() {
        final guardedValue = map['egressPublicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointComputeType: pulumi.Input.fromValue(
        map['endpointComputeType'] as String,
      ),
      environmentId: (() {
        final guardedValue = map['environmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentVariables: (() {
        final guardedValue = map['environmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      livenessProbe: (() {
        final guardedValue = map['livenessProbe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProbeSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      model: (() {
        final guardedValue = map['model'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelMountPath: (() {
        final guardedValue = map['modelMountPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      readinessProbe: (() {
        final guardedValue = map['readinessProbe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProbeSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      requestSettings: (() {
        final guardedValue = map['requestSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OnlineRequestSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      scaleSettings: (() {
        final guardedValue = map['scaleSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefaultScaleSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      startupProbe: (() {
        final guardedValue = map['startupProbe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProbeSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
