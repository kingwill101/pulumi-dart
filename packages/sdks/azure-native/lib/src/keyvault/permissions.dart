// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Permissions the identity has for keys, secrets, certificates and storage.
class Permissions {
  /// Permissions to certificates
  final pulumi.Input<List<dynamic>?>? certificates;
  /// Permissions to keys
  final pulumi.Input<List<dynamic>?>? keys;
  /// Permissions to secrets
  final pulumi.Input<List<dynamic>?>? secrets;
  /// Permissions to storage accounts
  final pulumi.Input<List<dynamic>?>? storage;

  /// Creates a new [Permissions].
  /// [certificates] Permissions to certificates
  /// [keys] Permissions to keys
  /// [secrets] Permissions to secrets
  /// [storage] Permissions to storage accounts
  const Permissions({
    this.certificates,
    this.keys,
    this.secrets,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates,
      'keys': ?keys,
      'secrets': ?secrets,
      'storage': ?storage,
    };
  }

  factory Permissions.fromMap(Map<String, dynamic> map) {
    return Permissions(
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}
