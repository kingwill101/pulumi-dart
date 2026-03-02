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
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the Transfer Family resource to tag.
  final pulumi.Input<String> resourceArn;
  /// Tag value.
  final pulumi.Input<String> value;

  /// Creates a new [TagArgs].
  /// [key] Tag name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] Amazon Resource Name (ARN) of the Transfer Family resource to tag.
  /// [value] Tag value.
  TagArgs({
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
      key: (map['key'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArn: (map['resourceArn'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

