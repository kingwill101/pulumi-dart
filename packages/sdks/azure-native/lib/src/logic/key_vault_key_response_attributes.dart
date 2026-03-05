// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The key attributes.
class KeyVaultKeyResponseAttributes {
  /// When the key was created.
  final pulumi.Input<double>? created;
  /// Whether the key is enabled or not.
  final pulumi.Input<bool>? enabled;
  /// When the key was updated.
  final pulumi.Input<double>? updated;

  /// Creates a new [KeyVaultKeyResponseAttributes].
  /// [created] When the key was created.
  /// [enabled] Whether the key is enabled or not.
  /// [updated] When the key was updated.
  KeyVaultKeyResponseAttributes({
    this.created,
    this.enabled,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'enabled': ?enabled,
      'updated': ?updated,
    };
  }

  factory KeyVaultKeyResponseAttributes.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyResponseAttributes(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

