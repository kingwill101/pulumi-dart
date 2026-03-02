// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_enforcement_enum.dart';
import 'storage_profile.dart';

/// The properties used to create a new server by restoring from a backup.
class ServerPropertiesForRestore {
  /// The mode to create a new server.
  /// Expected value is 'PointInTimeRestore'.
  final pulumi.Input<String> createMode;
  /// Enforce a minimal Tls version for the server.
  final pulumi.Input<String>? minimalTlsVersion;
  /// Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final pulumi.Input<String>? publicNetworkAccess;
  /// Restore point creation time (ISO8601 format), specifying the time to restore from.
  final pulumi.Input<String> restorePointInTime;
  /// The source server id to restore from.
  final pulumi.Input<String> sourceServerId;
  /// Enable ssl enforcement or not when connect to server.
  final pulumi.Input<SslEnforcementEnum>? sslEnforcement;
  /// Storage profile of a server.
  final pulumi.Input<StorageProfile>? storageProfile;
  /// Server version.
  final pulumi.Input<String>? version;

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
      'sslEnforcement': ?pulumi.Input.mapOptionalInputValue<SslEnforcementEnum, String>(sslEnforcement, (value) => value.value),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory ServerPropertiesForRestore.fromMap(Map<String, dynamic> map) {
    return ServerPropertiesForRestore(
      createMode: (map['createMode'] as String).input(),
      minimalTlsVersion: map['minimalTlsVersion'] == null ? null : (map['minimalTlsVersion']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      restorePointInTime: (map['restorePointInTime'] as String).input(),
      sourceServerId: (map['sourceServerId'] as String).input(),
      sslEnforcement: map['sslEnforcement'] == null ? null : (SslEnforcementEnum.fromValue(map['sslEnforcement']! as String)).input(),
      storageProfile: map['storageProfile'] == null ? null : (StorageProfile.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

