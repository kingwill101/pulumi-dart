// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyAlias resources.
class KeyAliasState {
  /// Name of the Key Alias.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? aliasName;
  /// ARN of the key.
  final pulumi.Input<String>? keyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [KeyAliasState].
  /// [aliasName] Name of the Key Alias.
  /// [keyArn] ARN of the key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  KeyAliasState({
    this.aliasName,
    this.keyArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': ?aliasName,
      'keyArn': ?keyArn,
      'region': ?region,
    };
  }

  factory KeyAliasState.fromMap(Map<String, dynamic> map) {
    return KeyAliasState(
      aliasName: (() { final guardedValue = map['aliasName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyArn: (() { final guardedValue = map['keyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

