// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_deployment_config.dart';

/// {@template pulumi_sagemaker_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_endpoint_endpoint_args_doc}
class EndpointArgs {
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

  /// Creates a new [EndpointArgs].
  /// [deploymentConfig] The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config.
  /// [endpointConfigName] The name of the endpoint configuration to use.
  /// [name] The name of the endpoint. If omitted, the provider will assign a random, unique name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  EndpointArgs({
    this.deploymentConfig,
    required this.endpointConfigName,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentConfig': ?pulumi.Input.mapOptionalInputValue<EndpointDeploymentConfig, Map<String, dynamic>>(deploymentConfig, (value) => value.toMap()),
      'endpointConfigName': endpointConfigName,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      deploymentConfig: map['deploymentConfig'] == null ? null : ((EndpointDeploymentConfig.fromMap((map['deploymentConfig']! as Map).cast<String, dynamic>())).input()).input(),
      endpointConfigName: (map['endpointConfigName'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

