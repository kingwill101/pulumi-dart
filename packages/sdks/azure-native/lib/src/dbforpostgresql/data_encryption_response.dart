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
  DataEncryptionResponse({
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
      geoBackupEncryptionKeyStatus: (map['geoBackupEncryptionKeyStatus'] as String).input(),
      geoBackupKeyURI: map['geoBackupKeyURI'] == null ? null : (map['geoBackupKeyURI']! as String).input(),
      geoBackupUserAssignedIdentityId: map['geoBackupUserAssignedIdentityId'] == null ? null : (map['geoBackupUserAssignedIdentityId']! as String).input(),
      primaryEncryptionKeyStatus: (map['primaryEncryptionKeyStatus'] as String).input(),
      primaryKeyURI: map['primaryKeyURI'] == null ? null : (map['primaryKeyURI']! as String).input(),
      primaryUserAssignedIdentityId: map['primaryUserAssignedIdentityId'] == null ? null : (map['primaryUserAssignedIdentityId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

