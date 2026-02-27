// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Alias.
class AliasArgs2 {
  /// The display name of the alias. The name must start with the word "alias" followed by a forward slash (alias/)
  final Input<String>? name;

  /// Creates an unique alias beginning with the specified prefix.
  /// The name must start with the word "alias" followed by a forward slash (alias/).  Conflicts with `name`.
  final Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier for the key for which the alias is for, can be either an ARN or key_id.
  final Input<String> targetKeyId;

  AliasArgs2({
    this.name,
    this.namePrefix,
    this.region,
    required this.targetKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetKeyId'] = targetKeyId;
    return map;
  }

  factory AliasArgs2.fromMap(Map<String, dynamic> map) {
    return AliasArgs2(
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      targetKeyId: Input.asInput<String>(map['targetKeyId']),
    );
  }
}
