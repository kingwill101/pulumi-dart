// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transfer_tag_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_transfer_tag_tag_args_doc}
class TagArgs {
  /// Tag name.
  final pulumi.Input<String> key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the Transfer Family resource to tag.
  final pulumi.Input<String> resourceArn;
  /// Tag value.
  final pulumi.Input<String> value;

  /// Creates a new [TagArgs].
  /// [key] Tag name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the Transfer Family resource to tag.
  /// [value] Tag value.
  const TagArgs({
    required this.key,
    this.region,
    required this.resourceArn,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'region': ?region,
      'resourceArn': resourceArn,
      'value': value,
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      key: pulumi.Input.fromValue(map['key'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
