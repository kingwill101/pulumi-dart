// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'environment_api_proxy_type.dart';
import 'environment_deployment_type.dart';
import 'environment_type.dart';
import 'google_cloud_apigee_v1_node_config.dart';
import 'google_cloud_apigee_v1_properties.dart';

/// The set of arguments for Environment.
class EnvironmentArgs {
  /// Optional. API Proxy type supported by the environment. The type can be set when creating the Environment and cannot be changed.
  final Input<EnvironmentApiProxyType>? apiProxyType;

  /// Optional. Deployment type supported by the environment. The deployment type can be set when creating the environment and cannot be changed. When you enable archive deployment, you will be **prevented from performing** a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment, including: * Managing the deployment of API proxy or shared flow revisions * Creating, updating, or deleting resource files * Creating, updating, or deleting target servers
  final Input<EnvironmentDeploymentType>? deploymentType;

  /// Optional. Description of the environment.
  final Input<String>? description;

  /// Optional. Display name for this environment.
  final Input<String>? displayName;

  /// Optional. Url of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that scheme must be one of "http" or "https", and port must be supplied.
  final Input<String>? forwardProxyUri;
  final Input<bool>? hasAttachedFlowHooks;

  /// Name of the environment. Values must match the regular expression `^[.\\p{Alnum}-_]{1,255}$`
  final Input<String>? name;

  /// Optional. NodeConfig of the environment.
  final Input<GoogleCloudApigeeV1NodeConfig>? nodeConfig;
  final Input<String> organizationId;

  /// Optional. Key-value pairs that may be used for customizing the environment.
  final Input<GoogleCloudApigeeV1Properties>? properties;

  /// Optional. EnvironmentType selected for the environment.
  final Input<EnvironmentType>? type;

  EnvironmentArgs({
    this.apiProxyType,
    this.deploymentType,
    this.description,
    this.displayName,
    this.forwardProxyUri,
    this.hasAttachedFlowHooks,
    this.name,
    this.nodeConfig,
    required this.organizationId,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiProxyTypeValue = apiProxyType;
    if (apiProxyTypeValue != null) {
      map['apiProxyType'] =
          Input.mapOptionalInputValue<EnvironmentApiProxyType, String>(
              apiProxyTypeValue, (value) => value.value);
    }
    final deploymentTypeValue = deploymentType;
    if (deploymentTypeValue != null) {
      map['deploymentType'] =
          Input.mapOptionalInputValue<EnvironmentDeploymentType, String>(
              deploymentTypeValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final forwardProxyUriValue = forwardProxyUri;
    if (forwardProxyUriValue != null) {
      map['forwardProxyUri'] = forwardProxyUriValue;
    }
    final hasAttachedFlowHooksValue = hasAttachedFlowHooks;
    if (hasAttachedFlowHooksValue != null) {
      map['hasAttachedFlowHooks'] = hasAttachedFlowHooksValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = Input.mapOptionalInputValue<
          GoogleCloudApigeeV1NodeConfig,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    map['organizationId'] = organizationId;
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = Input.mapOptionalInputValue<
          GoogleCloudApigeeV1Properties,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<EnvironmentType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      apiProxyType:
          Input.asOptionalInput<EnvironmentApiProxyType>(map['apiProxyType']),
      deploymentType: Input.asOptionalInput<EnvironmentDeploymentType>(
          map['deploymentType']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      forwardProxyUri: Input.asOptionalInput<String>(map['forwardProxyUri']),
      hasAttachedFlowHooks:
          Input.asOptionalInput<bool>(map['hasAttachedFlowHooks']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeConfig: Input.asOptionalInput<GoogleCloudApigeeV1NodeConfig>(
          map['nodeConfig']),
      organizationId: Input.asInput<String>(map['organizationId']),
      properties: Input.asOptionalInput<GoogleCloudApigeeV1Properties>(
          map['properties']),
      type: Input.asOptionalInput<EnvironmentType>(map['type']),
    );
  }
}
