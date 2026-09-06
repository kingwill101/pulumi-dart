// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_enforcement_enum.dart';
import 'storage_profile.dart';

/// The properties to create a new replica.
class ServerPropertiesForReplica {
  /// The mode to create a new server.
  /// Expected value is 'Replica'.
  final pulumi.Input<String> createMode;
  /// Status showing whether the server enabled infrastructure encryption.
  final pulumi.Input<dynamic>? infrastructureEncryption;
  /// Enforce a minimal Tls version for the server.
  final pulumi.Input<dynamic>? minimalTlsVersion;
  /// Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// The master server id to create replica from.
  final pulumi.Input<String> sourceServerId;
  /// Enable ssl enforcement or not when connect to server.
  final pulumi.Input<SslEnforcementEnum?>? sslEnforcement;
  /// Storage profile of a server.
  final pulumi.Input<StorageProfile?>? storageProfile;
  /// Server version.
  final pulumi.Input<dynamic>? version;

  /// Creates a new [ServerPropertiesForReplica].
  /// [createMode] The mode to create a new server.
  /// [infrastructureEncryption] Status showing whether the server enabled infrastructure encryption.
  /// [minimalTlsVersion] Enforce a minimal Tls version for the server.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  /// [sourceServerId] The master server id to create replica from.
  /// [sslEnforcement] Enable ssl enforcement or not when connect to server.
  /// [storageProfile] Storage profile of a server.
  /// [version] Server version.
  const ServerPropertiesForReplica({
    required this.createMode,
    this.infrastructureEncryption,
    this.minimalTlsVersion,
    this.publicNetworkAccess,
    required this.sourceServerId,
    this.sslEnforcement,
    this.storageProfile,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createMode': createMode,
      'infrastructureEncryption': ?infrastructureEncryption,
      'minimalTlsVersion': ?minimalTlsVersion,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sourceServerId': sourceServerId,
      'sslEnforcement': ?pulumi.Input.mapOptionalInputValue<SslEnforcementEnum, String>(sslEnforcement, (value) => value.wireValue),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory ServerPropertiesForReplica.fromMap(Map<String, dynamic> map) {
    return ServerPropertiesForReplica(
      createMode: pulumi.Input.fromValue(map['createMode'] as String),
      infrastructureEncryption: (() { final guardedValue = map['infrastructureEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      minimalTlsVersion: (() { final guardedValue = map['minimalTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceServerId: pulumi.Input.fromValue(map['sourceServerId'] as String),
      sslEnforcement: (() { final guardedValue = map['sslEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslEnforcementEnum.fromValue(guardedValue as String)); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
