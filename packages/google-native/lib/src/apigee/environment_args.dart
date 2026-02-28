// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_api_proxy_type.dart';
import 'environment_deployment_type.dart';
import 'environment_type.dart';
import 'google_cloud_apigee_v1_node_config.dart';
import 'google_cloud_apigee_v1_properties.dart';

/// {@template pulumi_apigee_v1_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_environment_args_doc}
class EnvironmentArgs {
  /// Optional. API Proxy type supported by the environment. The type can be set when creating the Environment and cannot be changed.
  final pulumi.Input<EnvironmentApiProxyType>? apiProxyType;
  /// Optional. Deployment type supported by the environment. The deployment type can be set when creating the environment and cannot be changed. When you enable archive deployment, you will be **prevented from performing** a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment, including: * Managing the deployment of API proxy or shared flow revisions * Creating, updating, or deleting resource files * Creating, updating, or deleting target servers
  final pulumi.Input<EnvironmentDeploymentType>? deploymentType;
  /// Optional. Description of the environment.
  final pulumi.Input<String>? description;
  /// Optional. Display name for this environment.
  final pulumi.Input<String>? displayName;
  /// Optional. Url of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that scheme must be one of "http" or "https", and port must be supplied.
  final pulumi.Input<String>? forwardProxyUri;
  final pulumi.Input<bool>? hasAttachedFlowHooks;
  /// Name of the environment. Values must match the regular expression `^[.\\p{Alnum}-_]{1,255}$`
  final pulumi.Input<String>? name;
  /// Optional. NodeConfig of the environment.
  final pulumi.Input<GoogleCloudApigeeV1NodeConfig>? nodeConfig;
  final pulumi.Input<String> organizationId;
  /// Optional. Key-value pairs that may be used for customizing the environment.
  final pulumi.Input<GoogleCloudApigeeV1Properties>? properties;
  /// Optional. EnvironmentType selected for the environment.
  final pulumi.Input<EnvironmentType>? type;

  /// Creates a new [EnvironmentArgs].
  /// [apiProxyType] Optional. API Proxy type supported by the environment. The type can be set when creating the Environment and cannot be changed.
  /// [deploymentType] Optional. Deployment type supported by the environment. The deployment type can be set when creating the environment and cannot be changed. When you enable archive deployment, you will be **prevented from performing** a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment, including: * Managing the deployment of API proxy or shared flow revisions * Creating, updating, or deleting resource files * Creating, updating, or deleting target servers
  /// [description] Optional. Description of the environment.
  /// [displayName] Optional. Display name for this environment.
  /// [forwardProxyUri] Optional. Url of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that scheme must be one of "http" or "https", and port must be supplied.
  /// [hasAttachedFlowHooks] Optional.
  /// [name] Name of the environment. Values must match the regular expression `^[.\\p{Alnum}-_]{1,255}$`
  /// [nodeConfig] Optional. NodeConfig of the environment.
  /// [organizationId] Required.
  /// [properties] Optional. Key-value pairs that may be used for customizing the environment.
  /// [type] Optional. EnvironmentType selected for the environment.
  EnvironmentArgs({
    EnvironmentApiProxyType? apiProxyType,
    EnvironmentDeploymentType? deploymentType,
    String? description,
    String? displayName,
    String? forwardProxyUri,
    bool? hasAttachedFlowHooks,
    String? name,
    GoogleCloudApigeeV1NodeConfig? nodeConfig,
    required String organizationId,
    GoogleCloudApigeeV1Properties? properties,
    EnvironmentType? type,
  }) :
      apiProxyType = pulumi.Input.asOptionalInput<EnvironmentApiProxyType>(apiProxyType),
      deploymentType = pulumi.Input.asOptionalInput<EnvironmentDeploymentType>(deploymentType),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      forwardProxyUri = pulumi.Input.asOptionalInput<String>(forwardProxyUri),
      hasAttachedFlowHooks = pulumi.Input.asOptionalInput<bool>(hasAttachedFlowHooks),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeConfig = pulumi.Input.asOptionalInput<GoogleCloudApigeeV1NodeConfig>(nodeConfig),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      properties = pulumi.Input.asOptionalInput<GoogleCloudApigeeV1Properties>(properties),
      type = pulumi.Input.asOptionalInput<EnvironmentType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProxyType': ?pulumi.Input.mapOptionalInputValue<EnvironmentApiProxyType, String>(apiProxyType, (value) => value.value),
      'deploymentType': ?pulumi.Input.mapOptionalInputValue<EnvironmentDeploymentType, String>(deploymentType, (value) => value.value),
      'description': ?description,
      'displayName': ?displayName,
      'forwardProxyUri': ?forwardProxyUri,
      'hasAttachedFlowHooks': ?hasAttachedFlowHooks,
      'name': ?name,
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1NodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'organizationId': organizationId,
      'properties': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1Properties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<EnvironmentType, String>(type, (value) => value.value),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      apiProxyType: map['apiProxyType'] == null ? null : EnvironmentApiProxyType.fromValue(map['apiProxyType'] as String),
      deploymentType: map['deploymentType'] == null ? null : EnvironmentDeploymentType.fromValue(map['deploymentType'] as String),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      forwardProxyUri: map['forwardProxyUri'] == null ? null : map['forwardProxyUri'] as String,
      hasAttachedFlowHooks: map['hasAttachedFlowHooks'] == null ? null : map['hasAttachedFlowHooks'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      nodeConfig: map['nodeConfig'] == null ? null : GoogleCloudApigeeV1NodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>()),
      organizationId: map['organizationId'] as String,
      properties: map['properties'] == null ? null : GoogleCloudApigeeV1Properties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : EnvironmentType.fromValue(map['type'] as String),
    );
  }
}

