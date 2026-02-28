// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_alias_alias_args_doc}
/// The set of arguments for Alias.
/// {@endtemplate}
/// {@macro pulumi_kms_alias_alias_args_doc}
class AliasArgs {
  /// The display name of the alias. The name must start with the word "alias" followed by a forward slash (alias/)
  final pulumi.Input<String>? name;

  /// Creates an unique alias beginning with the specified prefix.
  /// The name must start with the word "alias" followed by a forward slash (alias/).  Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier for the key for which the alias is for, can be either an ARN or key_id.
  final pulumi.Input<String> targetKeyId;

  /// Creates a new [AliasArgs].
  /// [name] The display name of the alias. The name must start with the word "alias" followed by a forward slash (alias/)
  /// [namePrefix] Creates an unique alias beginning with the specified prefix.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetKeyId] Identifier for the key for which the alias is for, can be either an ARN or key_id.
  AliasArgs({
    String? name,
    String? namePrefix,
    String? region,
    required String targetKeyId,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        region = pulumi.Input.asOptionalInput<String>(region),
        targetKeyId = pulumi.Input.asInput<String>(targetKeyId);

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

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      targetKeyId: map['targetKeyId'] as String,
    );
  }
}
