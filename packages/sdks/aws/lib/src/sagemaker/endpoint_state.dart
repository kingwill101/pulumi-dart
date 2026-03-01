// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_deployment_config.dart';

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this endpoint.
  final pulumi.Input<String>? arn;
  /// The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config.
  final pulumi.Input<EndpointDeploymentConfig>? deploymentConfig;
  /// The name of the endpoint configuration to use.
  final pulumi.Input<String>? endpointConfigName;
  /// The name of the endpoint. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [EndpointState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this endpoint.
  /// [deploymentConfig] The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config.
  /// [endpointConfigName] The name of the endpoint configuration to use.
  /// [name] The name of the endpoint. If omitted, the provider will assign a random, unique name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  EndpointState({
    pulumi.Output<String>? arn,
    pulumi.Output<EndpointDeploymentConfig>? deploymentConfig,
    pulumi.Output<String>? endpointConfigName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      deploymentConfig = pulumi.Input.asOptionalInput<EndpointDeploymentConfig>(deploymentConfig),
      endpointConfigName = pulumi.Input.asOptionalInput<String>(endpointConfigName),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deploymentConfig': ?pulumi.Input.mapOptionalInputValue<EndpointDeploymentConfig, Map<String, dynamic>>(deploymentConfig, (value) => value.toMap()),
      'endpointConfigName': ?endpointConfigName,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      deploymentConfig: map['deploymentConfig'] == null ? null : pulumi.Output.create<EndpointDeploymentConfig>(EndpointDeploymentConfig.fromMap((map['deploymentConfig'] as Map).cast<String, dynamic>())),
      endpointConfigName: map['endpointConfigName'] == null ? null : pulumi.Output.create<String>(map['endpointConfigName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

