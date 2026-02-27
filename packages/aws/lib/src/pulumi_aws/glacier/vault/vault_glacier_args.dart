// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vault_notification/vault_notification.dart';

/// The set of arguments for Vault.
class VaultGlacierArgs {
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

  VaultGlacierArgs({
    this.accessPolicy,
    this.name,
    this.notification,
    this.region,
    this.tags,
  });

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

  factory VaultGlacierArgs.fromMap(Map<String, dynamic> map) {
    return VaultGlacierArgs(
      accessPolicy: pulumi.Input.asOptionalInput<String>(map['accessPolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      notification:
          pulumi.Input.asOptionalInput<VaultNotification>(map['notification']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
