// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The date encryption for cmk.
class DataEncryptionResponse {
  /// Geo backup key uri as key vault can't cross region, need cmk in same region as geo backup
  final pulumi.Input<String>? geoBackupKeyURI;

  /// Geo backup user identity resource id as identity can't cross region, need identity in same region as geo backup
  final pulumi.Input<String>? geoBackupUserAssignedIdentityId;

  /// Primary key uri
  final pulumi.Input<String>? primaryKeyURI;

  /// Primary user identity resource id
  final pulumi.Input<String>? primaryUserAssignedIdentityId;

  /// The key type, AzureKeyVault for enable cmk, SystemManaged for disable cmk.
  final pulumi.Input<String>? type;

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
