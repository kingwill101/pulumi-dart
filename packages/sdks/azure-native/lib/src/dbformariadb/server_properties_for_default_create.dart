// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_enforcement_enum.dart';
import 'storage_profile.dart';

/// The properties used to create a new server.
class ServerPropertiesForDefaultCreate {
  /// The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  final String administratorLogin;
  /// The password of the administrator login.
  final String administratorLoginPassword;
  /// The mode to create a new server.
  /// Expected value is 'Default'.
  final String createMode;
  /// Enforce a minimal Tls version for the server.
  final String? minimalTlsVersion;
  /// Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final String? publicNetworkAccess;
  /// Enable ssl enforcement or not when connect to server.
  final SslEnforcementEnum? sslEnforcement;
  /// Storage profile of a server.
  final StorageProfile? storageProfile;
  /// Server version.
  final String? version;

  /// Creates a new [ServerPropertiesForDefaultCreate].
  /// [administratorLogin] The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  /// [administratorLoginPassword] The password of the administrator login.
  /// [createMode] The mode to create a new server.
  /// [minimalTlsVersion] Enforce a minimal Tls version for the server.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  /// [sslEnforcement] Enable ssl enforcement or not when connect to server.
  /// [storageProfile] Storage profile of a server.
  /// [version] Server version.
  ServerPropertiesForDefaultCreate({
    required this.administratorLogin,
    required this.administratorLoginPassword,
    required this.createMode,
    this.minimalTlsVersion,
    this.publicNetworkAccess,
    this.sslEnforcement,
    this.storageProfile,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': administratorLogin,
      'administratorLoginPassword': administratorLoginPassword,
      'createMode': createMode,
      'minimalTlsVersion': ?minimalTlsVersion,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sslEnforcement': ?sslEnforcement == null ? null : sslEnforcement!.value,
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'version': ?version,
    };
  }

  factory ServerPropertiesForDefaultCreate.fromMap(Map<String, dynamic> map) {
    return ServerPropertiesForDefaultCreate(
      administratorLogin: map['administratorLogin'] as String,
      administratorLoginPassword: map['administratorLoginPassword'] as String,
      createMode: map['createMode'] as String,
      minimalTlsVersion: map['minimalTlsVersion'] == null ? null : map['minimalTlsVersion'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      sslEnforcement: map['sslEnforcement'] == null ? null : SslEnforcementEnum.fromValue(map['sslEnforcement'] as String),
      storageProfile: map['storageProfile'] == null ? null : StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

