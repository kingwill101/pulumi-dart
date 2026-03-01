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
    pulumi.Output<EndpointDeploymentConfig>? deploymentConfig,
    required pulumi.Output<String> endpointConfigName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      deploymentConfig = pulumi.Input.asOptionalInput<EndpointDeploymentConfig>(deploymentConfig),
      endpointConfigName = pulumi.Input.asInput<String>(endpointConfigName),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      deploymentConfig: map['deploymentConfig'] == null ? null : pulumi.Output.create<EndpointDeploymentConfig>(EndpointDeploymentConfig.fromMap((map['deploymentConfig'] as Map).cast<String, dynamic>())),
      endpointConfigName: pulumi.Output.create<String>(map['endpointConfigName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

