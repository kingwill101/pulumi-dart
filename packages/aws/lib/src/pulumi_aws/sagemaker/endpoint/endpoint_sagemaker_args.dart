// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_deployment_config/endpoint_deployment_config.dart';

/// The set of arguments for Endpoint.
class EndpointSagemakerArgs {
  /// The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config.
  final pulumi.Input<EndpointDeploymentConfig>? deploymentConfig;

  /// The name of the endpoint configuration to use.
  final pulumi.Input<String> endpointConfigName;

  /// The name of the endpoint. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  EndpointSagemakerArgs({
    this.deploymentConfig,
    required this.endpointConfigName,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deploymentConfigValue = deploymentConfig;
    if (deploymentConfigValue != null) {
      map['deploymentConfig'] = pulumi.Input.mapOptionalInputValue<
              EndpointDeploymentConfig, Map<String, dynamic>>(
          deploymentConfigValue, (value) => value.toMap());
    }
    map['endpointConfigName'] = endpointConfigName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory EndpointSagemakerArgs.fromMap(Map<String, dynamic> map) {
    return EndpointSagemakerArgs(
      deploymentConfig: pulumi.Input.asOptionalInput<EndpointDeploymentConfig>(
          map['deploymentConfig']),
      endpointConfigName:
          pulumi.Input.asInput<String>(map['endpointConfigName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
