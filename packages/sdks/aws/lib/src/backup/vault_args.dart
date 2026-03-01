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
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDestroy': ?forceDestroy,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory VaultArgs.fromMap(Map<String, dynamic> map) {
    return VaultArgs(
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

