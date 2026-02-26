// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_deployment_config/endpoint_deployment_config.dart';

/// The set of arguments for Endpoint.
class EndpointArgs4 {
  /// The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config.
  final Input<EndpointDeploymentConfig>? deploymentConfig;

  /// The name of the endpoint configuration to use.
  final Input<String> endpointConfigName;

  /// The name of the endpoint. If omitted, the provider will assign a random, unique name.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  EndpointArgs4({
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
      map['deploymentConfig'] = Input.mapOptionalInputValue<
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

  factory EndpointArgs4.fromMap(Map<String, dynamic> map) {
    return EndpointArgs4(
      deploymentConfig: Input.asOptionalInput<EndpointDeploymentConfig>(
          map['deploymentConfig']),
      endpointConfigName: Input.asInput<String>(map['endpointConfigName']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
