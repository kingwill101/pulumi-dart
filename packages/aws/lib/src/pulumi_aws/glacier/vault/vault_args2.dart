// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vault_notification/vault_notification.dart';

/// The set of arguments for Vault.
class VaultArgs2 {
  /// The policy document. This is a JSON formatted string.
  /// The heredoc syntax or <span pulumi-lang-nodejs="`file`" pulumi-lang-dotnet="`File`" pulumi-lang-go="`file`" pulumi-lang-python="`file`" pulumi-lang-yaml="`file`" pulumi-lang-java="`file`">`file`</span> function is helpful here. Use the [Glacier Developer Guide](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html) for more information on Glacier Vault Policy
  final Input<String>? accessPolicy;

  /// The name of the Vault. Names can be between 1 and 255 characters long and the valid characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.' (period).
  final Input<String>? name;

  /// The notifications for the Vault. Fields documented below.
  final Input<VaultNotification>? notification;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  VaultArgs2({
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
      map['notification'] =
          Input.mapOptionalInputValue<VaultNotification, Map<String, dynamic>>(
              notificationValue, (value) => value.toMap());
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

  factory VaultArgs2.fromMap(Map<String, dynamic> map) {
    return VaultArgs2(
      accessPolicy: Input.asOptionalInput<String>(map['accessPolicy']),
      name: Input.asOptionalInput<String>(map['name']),
      notification:
          Input.asOptionalInput<VaultNotification>(map['notification']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
