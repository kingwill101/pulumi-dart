// ignore_for_file: unused_element, unnecessary_cast


/// The date encryption for cmk.
class DataEncryptionResponse {
  /// Geo backup key uri as key vault can't cross region, need cmk in same region as geo backup
  final String? geoBackupKeyURI;
  /// Geo backup user identity resource id as identity can't cross region, need identity in same region as geo backup
  final String? geoBackupUserAssignedIdentityId;
  /// Primary key uri
  final String? primaryKeyURI;
  /// Primary user identity resource id
  final String? primaryUserAssignedIdentityId;
  /// The key type, AzureKeyVault for enable cmk, SystemManaged for disable cmk.
  final String? type;

  /// Creates a new [DataEncryptionResponse].
  /// [geoBackupKeyURI] Geo backup key uri as key vault can't cross region, need cmk in same region as geo backup
  /// [geoBackupUserAssignedIdentityId] Geo backup user identity resource id as identity can't cross region, need identity in same region as geo backup
  /// [primaryKeyURI] Primary key uri
  /// [primaryUserAssignedIdentityId] Primary user identity resource id
  /// [type] The key type, AzureKeyVault for enable cmk, SystemManaged for disable cmk.
  DataEncryptionResponse({
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

  factory DataEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return DataEncryptionResponse(
      geoBackupKeyURI: map['geoBackupKeyURI'] == null ? null : map['geoBackupKeyURI'] as String,
      geoBackupUserAssignedIdentityId: map['geoBackupUserAssignedIdentityId'] == null ? null : map['geoBackupUserAssignedIdentityId'] as String,
      primaryKeyURI: map['primaryKeyURI'] == null ? null : map['primaryKeyURI'] as String,
      primaryUserAssignedIdentityId: map['primaryUserAssignedIdentityId'] == null ? null : map['primaryUserAssignedIdentityId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

