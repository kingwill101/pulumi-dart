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
  GetInfrastructureConfigurationArgs({
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
      arn: (map['arn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceTags: map['resourceTags'] == null ? null : (((map['resourceTags'] as Map).cast<String, String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

