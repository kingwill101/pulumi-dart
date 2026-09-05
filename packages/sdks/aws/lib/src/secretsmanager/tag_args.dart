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
  final pulumi.Input<String?>? region;
  /// ID of the AWS Secrets Manager secret to tag.
  final pulumi.Input<String> secretId;
  /// Tag value.
  final pulumi.Input<String> value;

  /// Creates a new [TagArgs].
  /// [key] Tag name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretId] ID of the AWS Secrets Manager secret to tag.
  /// [value] Tag value.
  const TagArgs({
    required this.key,
    this.region,
    required this.secretId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'region': ?region,
      'secretId': secretId,
      'value': value,
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      key: pulumi.Input.fromValue(map['key'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
