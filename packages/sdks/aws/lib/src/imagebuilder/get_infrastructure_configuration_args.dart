// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_imagebuilder_get_infrastructure_configuration_get_infrastructure_configuration_args_doc}
/// Arguments for getInfrastructureConfiguration.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_get_infrastructure_configuration_get_infrastructure_configuration_args_doc}
class GetInfrastructureConfigurationArgs {
  /// ARN of the infrastructure configuration.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the infrastructure created by the infrastructure configuration.
  final pulumi.Input<Map<String, String>>? resourceTags;
  /// Key-value map of resource tags for the infrastructure configuration.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetInfrastructureConfigurationArgs].
  /// [arn] ARN of the infrastructure configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTags] Key-value map of resource tags for the infrastructure created by the infrastructure configuration.
  /// [tags] Key-value map of resource tags for the infrastructure configuration.
  const GetInfrastructureConfigurationArgs({
    required this.arn,
    this.region,
    this.resourceTags,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
      'resourceTags': ?resourceTags,
      'tags': ?tags,
    };
  }

  factory GetInfrastructureConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureConfigurationArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
