// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data encryption properties of a server.
class DataEncryptionResponse {
  /// Status of key used by a server configured with data encryption based on customer managed key, to encrypt the geographically redundant storage associated to the server when it is configured to support geographically redundant backups.
  final pulumi.Input<String> geoBackupEncryptionKeyStatus;
  /// Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the geographically redundant storage associated to a server that is configured to support geographically redundant backups.
  final pulumi.Input<String>? geoBackupKeyURI;
  /// Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the geographically redundant storage associated to a server that is configured to support geographically redundant backups.
  final pulumi.Input<String>? geoBackupUserAssignedIdentityId;
  /// Status of key used by a server configured with data encryption based on customer managed key, to encrypt the primary storage associated to the server.
  final pulumi.Input<String> primaryEncryptionKeyStatus;
  /// URI of the key in Azure Key Vault used for data encryption of the primary storage associated to a server.
  final pulumi.Input<String>? primaryKeyURI;
  /// Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the primary storage associated to a server.
  final pulumi.Input<String>? primaryUserAssignedIdentityId;
  /// Data encryption type used by a server.
  final pulumi.Input<String>? type;

  /// Creates a new [DataEncryptionResponse].
  /// [geoBackupEncryptionKeyStatus] Status of key used by a server configured with data encryption based on customer managed key, to encrypt the geographically redundant storage associated to the server when it is configured to support geographically redundant backups.
  /// [geoBackupKeyURI] Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the geographically redundant storage associated to a server that is configured to support geographically redundant backups.
  /// [geoBackupUserAssignedIdentityId] Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the geographically redundant storage associated to a server that is configured to support geographically redundant backups.
  /// [primaryEncryptionKeyStatus] Status of key used by a server configured with data encryption based on customer managed key, to encrypt the primary storage associated to the server.
  /// [primaryKeyURI] URI of the key in Azure Key Vault used for data encryption of the primary storage associated to a server.
  /// [primaryUserAssignedIdentityId] Identifier of the user assigned managed identity used to access the key in Azure Key Vault for data encryption of the primary storage associated to a server.
  /// [type] Data encryption type used by a server.
  const DataEncryptionResponse({
    required this.geoBackupEncryptionKeyStatus,
    this.geoBackupKeyURI,
    this.geoBackupUserAssignedIdentityId,
    required this.primaryEncryptionKeyStatus,
    this.primaryKeyURI,
    this.primaryUserAssignedIdentityId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoBackupEncryptionKeyStatus': geoBackupEncryptionKeyStatus,
      'geoBackupKeyURI': ?geoBackupKeyURI,
      'geoBackupUserAssignedIdentityId': ?geoBackupUserAssignedIdentityId,
      'primaryEncryptionKeyStatus': primaryEncryptionKeyStatus,
      'primaryKeyURI': ?primaryKeyURI,
      'primaryUserAssignedIdentityId': ?primaryUserAssignedIdentityId,
      'type': ?type,
    };
  }

  factory DataEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return DataEncryptionResponse(
      geoBackupEncryptionKeyStatus: pulumi.Input.fromValue(map['geoBackupEncryptionKeyStatus'] as String),
      geoBackupKeyURI: (() { final guardedValue = map['geoBackupKeyURI']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      geoBackupUserAssignedIdentityId: (() { final guardedValue = map['geoBackupUserAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryEncryptionKeyStatus: pulumi.Input.fromValue(map['primaryEncryptionKeyStatus'] as String),
      primaryKeyURI: (() { final guardedValue = map['primaryKeyURI']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryUserAssignedIdentityId: (() { final guardedValue = map['primaryUserAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

