// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_alias_alias_args_doc}
/// The set of arguments for Alias.
/// {@endtemplate}
/// {@macro pulumi_kms_alias_alias_args_doc}
class AliasArgs {
  /// The alias of CMK. `Encrypt`、`GenerateDataKey`、`DescribeKey` can be called using aliases. Length of characters other than prefixes: minimum length of 1 character and maximum length of 255 characters. Must contain prefix `alias/`.
  final pulumi.Input<String> aliasName;
  /// The id of the key.
  ///
  /// > **NOTE:** Each alias represents only one master key(CMK).
  ///
  /// > **NOTE:** Within an area of the same user, alias is not reproducible.
  ///
  /// > **NOTE:** UpdateAlias can be used to update the mapping relationship between alias and master key(CMK).
  final pulumi.Input<String> keyId;

  /// Creates a new [AliasArgs].
  /// [aliasName] The alias of CMK. `Encrypt`、`GenerateDataKey`、`DescribeKey` can be called using aliases. Length of characters other than prefixes: minimum length of 1 character and maximum length of 255 characters. Must contain prefix `alias/`.
  /// [keyId] The id of the key.
  AliasArgs({
    required this.aliasName,
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': aliasName,
      'keyId': keyId,
    };
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      aliasName: (map['aliasName'] as String).input(),
      keyId: (map['keyId'] as String).input(),
    );
  }
}

