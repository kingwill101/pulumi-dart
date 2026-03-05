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
      'sslEnforcement': ?pulumi.Input.mapOptionalInputValue<SslEnforcementEnum, String>(sslEnforcement, (value) => value.wireValue),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory ServerPropertiesForRestore.fromMap(Map<String, dynamic> map) {
    return ServerPropertiesForRestore(
      createMode: pulumi.Input.fromValue(map['createMode'] as String),
      minimalTlsVersion: (() { final guardedValue = map['minimalTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restorePointInTime: pulumi.Input.fromValue(map['restorePointInTime'] as String),
      sourceServerId: pulumi.Input.fromValue(map['sourceServerId'] as String),
      sslEnforcement: (() { final guardedValue = map['sslEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslEnforcementEnum.fromValue(guardedValue as String)); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

