// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the platform of ContainerApp Service Authentication/Authorization.
class AuthPlatform {
  /// <code>true</code> if the Authentication / Authorization feature is enabled for the current app; otherwise, <code>false</code>.
  final bool? enabled;
  /// The RuntimeVersion of the Authentication / Authorization feature in use for the current app.
  /// The setting in this value can control the behavior of certain features in the Authentication / Authorization module.
  final String? runtimeVersion;

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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
    );
  }
}

