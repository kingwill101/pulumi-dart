// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_enforcement_enum.dart';
import 'storage_profile.dart';

/// The properties used to create a new server.
class ServerPropertiesForDefaultCreate {
  /// The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  final pulumi.Input<String> administratorLogin;
  /// The password of the administrator login.
  final pulumi.Input<String> administratorLoginPassword;
  /// The mode to create a new server.
  /// Expected value is 'Default'.
  final pulumi.Input<String> createMode;
  /// Enforce a minimal Tls version for the server.
  final pulumi.Input<String>? minimalTlsVersion;
  /// Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final pulumi.Input<String>? publicNetworkAccess;
  /// Enable ssl enforcement or not when connect to server.
  final pulumi.Input<SslEnforcementEnum>? sslEnforcement;
  /// Storage profile of a server.
  final pulumi.Input<StorageProfile>? storageProfile;
  /// Server version.
  final pulumi.Input<String>? version;

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
      'sslEnforcement': ?pulumi.Input.mapOptionalInputValue<SslEnforcementEnum, String>(sslEnforcement, (value) => value.value),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory ServerPropertiesForDefaultCreate.fromMap(Map<String, dynamic> map) {
    return ServerPropertiesForDefaultCreate(
      administratorLogin: (map['administratorLogin'] as String).input(),
      administratorLoginPassword: (map['administratorLoginPassword'] as String).input(),
      createMode: (map['createMode'] as String).input(),
      minimalTlsVersion: map['minimalTlsVersion'] == null ? null : (map['minimalTlsVersion']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      sslEnforcement: map['sslEnforcement'] == null ? null : (SslEnforcementEnum.fromValue(map['sslEnforcement']! as String)).input(),
      storageProfile: map['storageProfile'] == null ? null : (StorageProfile.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

