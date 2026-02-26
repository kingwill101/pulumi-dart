// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for KeyAlias.
class KeyAliasArgs {
  /// Name of the Key Alias.
  ///
  /// The following arguments are optional:
  final Input<String> aliasName;

  /// ARN of the key.
  final Input<String>? keyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  KeyAliasArgs({
    required this.aliasName,
    this.keyArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aliasName'] = aliasName;
    final keyArnValue = keyArn;
    if (keyArnValue != null) {
      map['keyArn'] = keyArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory KeyAliasArgs.fromMap(Map<String, dynamic> map) {
    return KeyAliasArgs(
      aliasName: Input.asInput<String>(map['aliasName']),
      keyArn: Input.asOptionalInput<String>(map['keyArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
