// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_notification.dart';

/// Input properties used for looking up and filtering Vault resources.
class VaultState {
  /// The policy document. This is a JSON formatted string.
  /// The heredoc syntax or `file` function is helpful here. Use the [Glacier Developer Guide](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html) for more information on Glacier Vault Policy
  final pulumi.Input<String>? accessPolicy;
  /// The ARN of the vault.
  final pulumi.Input<String>? arn;
  /// The URI of the vault that was created.
  final pulumi.Input<String>? location;
  /// The name of the Vault. Names can be between 1 and 255 characters long and the valid characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.' (period).
  final pulumi.Input<String>? name;
  /// The notifications for the Vault. Fields documented below.
  final pulumi.Input<VaultNotification>? notification;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VaultState].
  /// [accessPolicy] The policy document. This is a JSON formatted string.
  /// [arn] The ARN of the vault.
  /// [location] The URI of the vault that was created.
  /// [name] The name of the Vault. Names can be between 1 and 255 characters long and the valid characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.' (period).
  /// [notification] The notifications for the Vault. Fields documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  VaultState({
    this.accessPolicy,
    this.arn,
    this.location,
    this.name,
    this.notification,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': ?accessPolicy,
      'arn': ?arn,
      'location': ?location,
      'name': ?name,
      'notification': ?pulumi.Input.mapOptionalInputValue<VaultNotification, Map<String, dynamic>>(notification, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory VaultState.fromMap(Map<String, dynamic> map) {
    return VaultState(
      accessPolicy: map['accessPolicy'] == null ? null : (map['accessPolicy'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notification: map['notification'] == null ? null : (VaultNotification.fromMap((map['notification'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

