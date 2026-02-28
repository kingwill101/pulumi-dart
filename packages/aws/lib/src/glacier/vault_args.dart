// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_notification.dart';

/// {@template pulumi_glacier_vault_vault_args_doc}
/// The set of arguments for Vault.
/// {@endtemplate}
/// {@macro pulumi_glacier_vault_vault_args_doc}
class VaultArgs {
  /// The policy document. This is a JSON formatted string.
  /// The heredoc syntax or `file` function is helpful here. Use the [Glacier Developer Guide](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html) for more information on Glacier Vault Policy
  final pulumi.Input<String>? accessPolicy;

  /// The name of the Vault. Names can be between 1 and 255 characters long and the valid characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.' (period).
  final pulumi.Input<String>? name;

  /// The notifications for the Vault. Fields documented below.
  final pulumi.Input<VaultNotification>? notification;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VaultArgs].
  /// [accessPolicy] The policy document. This is a JSON formatted string.
  /// [name] The name of the Vault. Names can be between 1 and 255 characters long and the valid characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.' (period).
  /// [notification] The notifications for the Vault. Fields documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VaultArgs({
    String? accessPolicy,
    String? name,
    VaultNotification? notification,
    String? region,
    Map<String, String>? tags,
  })  : accessPolicy = pulumi.Input.asOptionalInput<String>(accessPolicy),
        name = pulumi.Input.asOptionalInput<String>(name),
        notification =
            pulumi.Input.asOptionalInput<VaultNotification>(notification),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessPolicyValue = accessPolicy;
    if (accessPolicyValue != null) {
      map['accessPolicy'] = accessPolicyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationValue = notification;
    if (notificationValue != null) {
      map['notification'] = pulumi.Input.mapOptionalInputValue<
          VaultNotification,
          Map<String, dynamic>>(notificationValue, (value) => value.toMap());
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
      accessPolicy:
          map['accessPolicy'] == null ? null : map['accessPolicy'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      notification: map['notification'] == null
          ? null
          : VaultNotification.fromMap(
              (map['notification'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
