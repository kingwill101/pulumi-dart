// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_vault_vault_args_doc}
/// The set of arguments for Vault.
/// {@endtemplate}
/// {@macro pulumi_backup_vault_vault_args_doc}
class VaultArgs {
  /// A boolean that indicates that all recovery points stored in the vault are deleted so that the vault can be destroyed without error.
  final pulumi.Input<bool>? forceDestroy;

  /// The server-side encryption key that is used to protect your backups.
  final pulumi.Input<String>? kmsKeyArn;

  /// Name of the backup vault to create.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Metadata that you can assign to help organize the resources that you create. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VaultArgs].
  /// [forceDestroy] A boolean that indicates that all recovery points stored in the vault are deleted so that the vault can be destroyed without error.
  /// [kmsKeyArn] The server-side encryption key that is used to protect your backups.
  /// [name] Name of the backup vault to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that you can assign to help organize the resources that you create. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VaultArgs({
    bool? forceDestroy,
    String? kmsKeyArn,
    String? name,
    String? region,
    Map<String, String>? tags,
  })  : forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
        kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
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

  factory VaultArgs.fromMap(Map<String, dynamic> map) {
    return VaultArgs(
      forceDestroy:
          map['forceDestroy'] == null ? null : map['forceDestroy'] as bool,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
