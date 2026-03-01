// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_paymentcryptography_key_alias_key_alias_args_doc}
/// The set of arguments for KeyAlias.
/// {@endtemplate}
/// {@macro pulumi_paymentcryptography_key_alias_key_alias_args_doc}
class KeyAliasArgs {
  /// Name of the Key Alias.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> aliasName;
  /// ARN of the key.
  final pulumi.Input<String>? keyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [KeyAliasArgs].
  /// [aliasName] Name of the Key Alias.
  /// [keyArn] ARN of the key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  KeyAliasArgs({
    required String aliasName,
    String? keyArn,
    String? region,
  }) :
      aliasName = pulumi.Input.asInput<String>(aliasName),
      keyArn = pulumi.Input.asOptionalInput<String>(keyArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': aliasName,
      'keyArn': ?keyArn,
      'region': ?region,
    };
  }

  factory KeyAliasArgs.fromMap(Map<String, dynamic> map) {
    return KeyAliasArgs(
      aliasName: map['aliasName'] as String,
      keyArn: map['keyArn'] == null ? null : map['keyArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

