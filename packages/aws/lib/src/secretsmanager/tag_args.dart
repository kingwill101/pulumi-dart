// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretsmanager_tag_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_secretsmanager_tag_tag_args_doc}
class TagArgs {
  /// Tag name.
  final pulumi.Input<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the AWS Secrets Manager secret to tag.
  final pulumi.Input<String> secretId;

  /// Tag value.
  final pulumi.Input<String> value;

  /// Creates a new [TagArgs].
  /// [key] Tag name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretId] ID of the AWS Secrets Manager secret to tag.
  /// [value] Tag value.
  TagArgs({
    required String key,
    String? region,
    required String secretId,
    required String value,
  })  : key = pulumi.Input.asInput<String>(key),
        region = pulumi.Input.asOptionalInput<String>(region),
        secretId = pulumi.Input.asInput<String>(secretId),
        value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secretId'] = secretId;
    map['value'] = value;
    return map;
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      key: map['key'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      secretId: map['secretId'] as String,
      value: map['value'] as String,
    );
  }
}
