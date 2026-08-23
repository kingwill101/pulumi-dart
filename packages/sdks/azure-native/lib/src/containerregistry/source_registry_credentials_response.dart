// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the credential parameters for accessing the source registry.
class SourceRegistryCredentialsResponse {
  /// The authentication mode which determines the source registry login scope. The credentials for the source registry
  /// will be generated using the given scope. These credentials will be used to login to
  /// the source registry during the run.
  final pulumi.Input<String>? loginMode;

  /// Creates a new [SourceRegistryCredentialsResponse].
  /// [loginMode] The authentication mode which determines the source registry login scope. The credentials for the source registry
  const SourceRegistryCredentialsResponse({
    this.loginMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginMode': ?loginMode,
    };
  }

  factory SourceRegistryCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return SourceRegistryCredentialsResponse(
      loginMode: (() { final guardedValue = map['loginMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
