// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_get_vault_get_vault_args_doc}
/// Arguments for getVault.
/// {@endtemplate}
/// {@macro pulumi_backup_get_vault_get_vault_args_doc}
class GetVaultArgs {
  /// Name of the backup vault.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Metadata that you can assign to help organize the resources that you create.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVaultArgs].
  /// [name] Name of the backup vault.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that you can assign to help organize the resources that you create.
  GetVaultArgs({
    required String name,
    String? region,
    Map<String, String>? tags,
  })  : name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetVaultArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
