// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the platform of ContainerApp Service Authentication/Authorization.
class AuthPlatformResponse {
  /// &lt;code&gt;true&lt;/code&gt; if the Authentication / Authorization feature is enabled for the current app; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? enabled;

  /// The RuntimeVersion of the Authentication / Authorization feature in use for the current app.
  /// The setting in this value can control the behavior of certain features in the Authentication / Authorization module.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [AuthPlatformResponse].
  /// [enabled] &lt;code&gt;true&lt;/code&gt; if the Authentication / Authorization feature is enabled for the current app; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [runtimeVersion] The RuntimeVersion of the Authentication / Authorization feature in use for the current app.
  AuthPlatformResponse({this.enabled, this.runtimeVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory AuthPlatformResponse.fromMap(Map<String, dynamic> map) {
    return AuthPlatformResponse(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      runtimeVersion: (() {
        final guardedValue = map['runtimeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
