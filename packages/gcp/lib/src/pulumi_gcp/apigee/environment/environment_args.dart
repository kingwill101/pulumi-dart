// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../environment_client_ip_resolution_config/environment_client_ip_resolution_config.dart';
import '../environment_node_config/environment_node_config.dart';
import '../environment_properties/environment_properties.dart';

/// The set of arguments for Environment.
class EnvironmentArgs {
  /// Optional. API Proxy type supported by the environment. The type can be set when creating
  /// the Environment and cannot be changed.
  /// Possible values are: `API_PROXY_TYPE_UNSPECIFIED`, `PROGRAMMABLE`, `CONFIGURABLE`.
  final Input<String>? apiProxyType;

  /// The algorithm to resolve IP. This will affect Analytics, API Security, and other features that use the client ip. To remove a client ip resolution config, update the field to an empty value. Example: '{ "clientIpResolutionConfig" = {} }' For more information, see: https://cloud.google.com/apigee/docs/api-platform/system-administration/client-ip-resolution
  /// Structure is documented below.
  final Input<EnvironmentClientIpResolutionConfig>? clientIpResolutionConfig;

  /// Optional. Deployment type supported by the environment. The deployment type can be
  /// set when creating the environment and cannot be changed. When you enable archive
  /// deployment, you will be prevented from performing a subset of actions within the
  /// environment, including:
  /// Managing the deployment of API proxy or shared flow revisions;
  /// Creating, updating, or deleting resource files;
  /// Creating, updating, or deleting target servers.
  /// Possible values are: `DEPLOYMENT_TYPE_UNSPECIFIED`, `PROXY`, `ARCHIVE`.
  final Input<String>? deploymentType;

  /// Description of the environment.
  final Input<String>? description;

  /// Display name of the environment.
  final Input<String>? displayName;

  /// Optional. URI of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that the scheme must be one of "http" or "https", and the port must be supplied.
  final Input<String>? forwardProxyUri;

  /// The resource ID of the environment.
  final Input<String>? name;

  /// NodeConfig for setting the min/max number of nodes associated with the environment.
  /// Structure is documented below.
  final Input<EnvironmentNodeConfig>? nodeConfig;

  /// The Apigee Organization associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}`.
  final Input<String> orgId;

  /// Key-value pairs that may be used for customizing the environment.
  /// Structure is documented below.
  final Input<EnvironmentProperties>? properties;

  /// Types that can be selected for an Environment. Each of the types are
  /// limited by capability and capacity. Refer to Apigee's public documentation
  /// to understand about each of these types in details.
  /// An Apigee org can support heterogeneous Environments.
  /// Possible values are: `ENVIRONMENT_TYPE_UNSPECIFIED`, `BASE`, `INTERMEDIATE`, `COMPREHENSIVE`.
  final Input<String>? type;

  EnvironmentArgs({
    this.apiProxyType,
    this.clientIpResolutionConfig,
    this.deploymentType,
    this.description,
    this.displayName,
    this.forwardProxyUri,
    this.name,
    this.nodeConfig,
    required this.orgId,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiProxyTypeValue = apiProxyType;
    if (apiProxyTypeValue != null) {
      map['apiProxyType'] = apiProxyTypeValue;
    }
    final clientIpResolutionConfigValue = clientIpResolutionConfig;
    if (clientIpResolutionConfigValue != null) {
      map['clientIpResolutionConfig'] = Input.mapOptionalInputValue<
              EnvironmentClientIpResolutionConfig, Map<String, dynamic>>(
          clientIpResolutionConfigValue, (value) => value.toMap());
    }
    final deploymentTypeValue = deploymentType;
    if (deploymentTypeValue != null) {
      map['deploymentType'] = deploymentTypeValue;
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = Input.mapOptionalInputValue<EnvironmentNodeConfig,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    map['orgId'] = orgId;
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = Input.mapOptionalInputValue<EnvironmentProperties,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      apiProxyType: Input.asOptionalInput<String>(map['apiProxyType']),
      clientIpResolutionConfig:
          Input.asOptionalInput<EnvironmentClientIpResolutionConfig>(
              map['clientIpResolutionConfig']),
      deploymentType: Input.asOptionalInput<String>(map['deploymentType']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      forwardProxyUri: Input.asOptionalInput<String>(map['forwardProxyUri']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeConfig:
          Input.asOptionalInput<EnvironmentNodeConfig>(map['nodeConfig']),
      orgId: Input.asInput<String>(map['orgId']),
      properties:
          Input.asOptionalInput<EnvironmentProperties>(map['properties']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
