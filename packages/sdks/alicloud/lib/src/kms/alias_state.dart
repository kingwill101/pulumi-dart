// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Alias resources.
class AliasState {
  /// The alias of CMK. `Encrypt`、`GenerateDataKey`、`DescribeKey` can be called using aliases. Length of characters other than prefixes: minimum length of 1 character and maximum length of 255 characters. Must contain prefix `alias/`.
  final pulumi.Input<String>? aliasName;
  /// The id of the key.
  ///
  /// &gt; **NOTE:** Each alias represents only one master key(CMK).
  ///
  /// &gt; **NOTE:** Within an area of the same user, alias is not reproducible.
  ///
  /// &gt; **NOTE:** UpdateAlias can be used to update the mapping relationship between alias and master key(CMK).
  final pulumi.Input<String>? keyId;

  /// Creates a new [AliasState].
  /// [aliasName] The alias of CMK. `Encrypt`、`GenerateDataKey`、`DescribeKey` can be called using aliases. Length of characters other than prefixes: minimum length of 1 character and maximum length of 255 characters. Must contain prefix `alias/`.
  /// [keyId] The id of the key.
  const AliasState({
    this.aliasName,
    this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': ?aliasName,
      'keyId': ?keyId,
    };
  }

  factory AliasState.fromMap(Map<String, dynamic> map) {
    return AliasState(
      aliasName: (() { final guardedValue = map['aliasName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

