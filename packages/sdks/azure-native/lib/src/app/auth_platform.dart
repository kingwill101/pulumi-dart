// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the platform of ContainerApp Service Authentication/Authorization.
class AuthPlatform {
  /// <code>true</code> if the Authentication / Authorization feature is enabled for the current app; otherwise, <code>false</code>.
  final pulumi.Input<bool>? enabled;
  /// The RuntimeVersion of the Authentication / Authorization feature in use for the current app.
  /// The setting in this value can control the behavior of certain features in the Authentication / Authorization module.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [AuthPlatform].
  /// [enabled] <code>true</code> if the Authentication / Authorization feature is enabled for the current app; otherwise, <code>false</code>.
  /// [runtimeVersion] The RuntimeVersion of the Authentication / Authorization feature in use for the current app.
  AuthPlatform({
    this.enabled,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory AuthPlatform.fromMap(Map<String, dynamic> map) {
    return AuthPlatform(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion']! as String).input(),
    );
  }
}

