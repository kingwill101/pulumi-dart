// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_tag_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_ec2_tag_tag_args_doc}
class TagArgs {
  /// The tag name.
  final pulumi.Input<String> key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the EC2 resource to manage the tag for.
  final pulumi.Input<String> resourceId;
  /// The value of the tag.
  final pulumi.Input<String> value;

  /// Creates a new [TagArgs].
  /// [key] The tag name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The ID of the EC2 resource to manage the tag for.
  /// [value] The value of the tag.
  TagArgs({
    required String key,
    String? region,
    required String resourceId,
    required String value,
  }) :
      key = pulumi.Input.asInput<String>(key),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'region': ?region,
      'resourceId': resourceId,
      'value': value,
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      key: map['key'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceId: map['resourceId'] as String,
      value: map['value'] as String,
    );
  }
}

