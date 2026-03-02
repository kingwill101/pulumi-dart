// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Permissions the identity has for keys, secrets, certificates and storage.
class PermissionsResponse {
  /// Permissions to certificates
  final pulumi.Input<List<String>>? certificates;
  /// Permissions to keys
  final pulumi.Input<List<String>>? keys;
  /// Permissions to secrets
  final pulumi.Input<List<String>>? secrets;
  /// Permissions to storage accounts
  final pulumi.Input<List<String>>? storage;

  /// Creates a new [PermissionsResponse].
  /// [certificates] Permissions to certificates
  /// [keys] Permissions to keys
  /// [secrets] Permissions to secrets
  /// [storage] Permissions to storage accounts
  PermissionsResponse({
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

  factory PermissionsResponse.fromMap(Map<String, dynamic> map) {
    return PermissionsResponse(
      certificates: map['certificates'] == null ? null : ((map['certificates'] as List).cast<String>()).input(),
      keys: map['keys'] == null ? null : ((map['keys'] as List).cast<String>()).input(),
      secrets: map['secrets'] == null ? null : ((map['secrets'] as List).cast<String>()).input(),
      storage: map['storage'] == null ? null : ((map['storage'] as List).cast<String>()).input(),
    );
  }
}

