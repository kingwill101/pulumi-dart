// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_enforcement_enum.dart';
import 'storage_profile.dart';

/// The properties used to create a new server by restoring from a backup.
class ServerPropertiesForRestore {
  /// The mode to create a new server.
  /// Expected value is 'PointInTimeRestore'.
  final String createMode;
  /// Enforce a minimal Tls version for the server.
  final String? minimalTlsVersion;
  /// Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final String? publicNetworkAccess;
  /// Restore point creation time (ISO8601 format), specifying the time to restore from.
  final String restorePointInTime;
  /// The source server id to restore from.
  final String sourceServerId;
  /// Enable ssl enforcement or not when connect to server.
  final SslEnforcementEnum? sslEnforcement;
  /// Storage profile of a server.
  final StorageProfile? storageProfile;
  /// Server version.
  final String? version;

  /// Creates a new [ServerPropertiesForRestore].
  /// [createMode] The mode to create a new server.
  /// [minimalTlsVersion] Enforce a minimal Tls version for the server.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  /// [restorePointInTime] Restore point creation time (ISO8601 format), specifying the time to restore from.
  /// [sourceServerId] The source server id to restore from.
  /// [sslEnforcement] Enable ssl enforcement or not when connect to server.
  /// [storageProfile] Storage profile of a server.
  /// [version] Server version.
  ServerPropertiesForRestore({
    required this.createMode,
    this.minimalTlsVersion,
    this.publicNetworkAccess,
    required this.restorePointInTime,
    required this.sourceServerId,
    this.sslEnforcement,
    this.storageProfile,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createMode': createMode,
      'minimalTlsVersion': ?minimalTlsVersion,
      'publicNetworkAccess': ?publicNetworkAccess,
      'restorePointInTime': restorePointInTime,
      'sourceServerId': sourceServerId,
      'sslEnforcement': ?sslEnforcement == null ? null : sslEnforcement!.value,
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'version': ?version,
    };
  }

  factory ServerPropertiesForRestore.fromMap(Map<String, dynamic> map) {
    return ServerPropertiesForRestore(
      createMode: map['createMode'] as String,
      minimalTlsVersion: map['minimalTlsVersion'] == null ? null : map['minimalTlsVersion'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      restorePointInTime: map['restorePointInTime'] as String,
      sourceServerId: map['sourceServerId'] as String,
      sslEnforcement: map['sslEnforcement'] == null ? null : SslEnforcementEnum.fromValue(map['sslEnforcement'] as String),
      storageProfile: map['storageProfile'] == null ? null : StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

