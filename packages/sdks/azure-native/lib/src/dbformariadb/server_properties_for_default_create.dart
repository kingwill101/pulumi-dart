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
      'sslEnforcement':
          ?pulumi.Input.mapOptionalInputValue<SslEnforcementEnum, String>(
            sslEnforcement,
            (value) => value.wireValue,
          ),
      'storageProfile':
          ?pulumi.Input.mapOptionalInputValue<
            StorageProfile,
            Map<String, dynamic>
          >(storageProfile, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory ServerPropertiesForDefaultCreate.fromMap(Map<String, dynamic> map) {
    return ServerPropertiesForDefaultCreate(
      administratorLogin: pulumi.Input.fromValue(
        map['administratorLogin'] as String,
      ),
      administratorLoginPassword: pulumi.Input.fromValue(
        map['administratorLoginPassword'] as String,
      ),
      createMode: pulumi.Input.fromValue(map['createMode'] as String),
      minimalTlsVersion: (() {
        final guardedValue = map['minimalTlsVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslEnforcement: (() {
        final guardedValue = map['sslEnforcement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SslEnforcementEnum.fromValue(guardedValue as String),
        );
      })(),
      storageProfile: (() {
        final guardedValue = map['storageProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
