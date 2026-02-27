// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInfrastructureConfiguration.
class GetInfrastructureConfigurationArgs {
  /// ARN of the infrastructure configuration.
  final pulumi.Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the infrastructure created by the infrastructure configuration.
  final pulumi.Input<Map<String, String>>? resourceTags;

  /// Key-value map of resource tags for the infrastructure configuration.
  final pulumi.Input<Map<String, String>>? tags;

  GetInfrastructureConfigurationArgs({
    required this.arn,
    this.region,
    this.resourceTags,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = resourceTagsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetInfrastructureConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureConfigurationArgs(
      arn: pulumi.Input.asInput<String>(map['arn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceTags: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['resourceTags']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
