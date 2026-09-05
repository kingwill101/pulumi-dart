// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_deployment_config.dart';

/// {@template pulumi_sagemaker_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_endpoint_endpoint_args_doc}
class EndpointArgs {
  /// The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config.
  final pulumi.Input<EndpointDeploymentConfig?>? deploymentConfig;
  /// The name of the endpoint configuration to use.
  final pulumi.Input<String> endpointConfigName;
  /// The name of the endpoint. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [EndpointArgs].
  /// [deploymentConfig] The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config.
  /// [endpointConfigName] The name of the endpoint configuration to use.
  /// [name] The name of the endpoint. If omitted, the provider will assign a random, unique name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const EndpointArgs({
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
      deploymentConfig: (() { final guardedValue = map['deploymentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointDeploymentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointConfigName: pulumi.Input.fromValue(map['endpointConfigName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
