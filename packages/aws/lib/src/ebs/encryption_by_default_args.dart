// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_encryption_by_default_encryption_by_default_args_doc}
/// The set of arguments for EncryptionByDefault.
/// {@endtemplate}
/// {@macro pulumi_ebs_encryption_by_default_encryption_by_default_args_doc}
class EncryptionByDefaultArgs {
  /// Whether or not default EBS encryption is enabled. Valid values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EncryptionByDefaultArgs].
  /// [enabled] Whether or not default EBS encryption is enabled. Valid values are `true` or `false`. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EncryptionByDefaultArgs({bool? enabled, String? region})
    : enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled, 'region': ?region};
  }

  factory EncryptionByDefaultArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionByDefaultArgs(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
