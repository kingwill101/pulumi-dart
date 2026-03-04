// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data encryption properties of a server.
class DataEncryption {
  /// Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the geographically redundant storage associated to a server that is configured to support geographically redundant backups.
  final pulumi.Input<String>? geoBackupKeyURI;

  /// Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the geographically redundant storage associated to a server that is configured to support geographically redundant backups.
  final pulumi.Input<String>? geoBackupUserAssignedIdentityId;

  /// URI of the key in Azure Key Vault used for data encryption of the primary storage associated to a server.
  final pulumi.Input<String>? primaryKeyURI;

  /// Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the primary storage associated to a server.
  final pulumi.Input<String>? primaryUserAssignedIdentityId;

  /// Data encryption type used by a server.
  final pulumi.Input<String>? type;

  /// Creates a new [DataEncryption].
  /// [geoBackupKeyURI] Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the geographically redundant storage associated to a server that is configured to support geographically redundant backups.
  /// [geoBackupUserAssignedIdentityId] Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the geographically redundant storage associated to a server that is configured to support geographically redundant backups.
  /// [primaryKeyURI] URI of the key in Azure Key Vault used for data encryption of the primary storage associated to a server.
  /// [primaryUserAssignedIdentityId] Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the primary storage associated to a server.
  /// [type] Data encryption type used by a server.
  DataEncryption({
    this.geoBackupKeyURI,
    this.geoBackupUserAssignedIdentityId,
    this.primaryKeyURI,
    this.primaryUserAssignedIdentityId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoBackupKeyURI': ?geoBackupKeyURI,
      'geoBackupUserAssignedIdentityId': ?geoBackupUserAssignedIdentityId,
      'primaryKeyURI': ?primaryKeyURI,
      'primaryUserAssignedIdentityId': ?primaryUserAssignedIdentityId,
      'type': ?type,
    };
  }

  factory DataEncryption.fromMap(Map<String, dynamic> map) {
    return DataEncryption(
      geoBackupKeyURI: (() {
        final guardedValue = map['geoBackupKeyURI'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      geoBackupUserAssignedIdentityId: (() {
        final guardedValue = map['geoBackupUserAssignedIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryKeyURI: (() {
        final guardedValue = map['primaryKeyURI'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryUserAssignedIdentityId: (() {
        final guardedValue = map['primaryUserAssignedIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
