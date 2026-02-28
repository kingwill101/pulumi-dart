// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_alias_get_alias_args_doc}
/// Arguments for getAlias.
/// {@endtemplate}
/// {@macro pulumi_kms_get_alias_get_alias_args_doc}
class GetAliasArgs {
  /// Display name of the alias. The name must start with the word "alias" followed by a forward slash (alias/)
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAliasArgs].
  /// [name] Display name of the alias. The name must start with the word "alias" followed by a forward slash (alias/)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetAliasArgs({
    required String name,
    String? region,
  })  : name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetAliasArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
