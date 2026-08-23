// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_registration.dart';
import 'login_scopes.dart';

/// The configuration settings of the GitHub provider.
class GitHub {
  /// &lt;code&gt;false&lt;/code&gt; if the GitHub provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the login flow.
  final pulumi.Input<LoginScopes>? login;
  /// The configuration settings of the app registration for the GitHub provider.
  final pulumi.Input<ClientRegistration>? registration;

  /// Creates a new [GitHub].
  /// [enabled] &lt;code&gt;false&lt;/code&gt; if the GitHub provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the app registration for the GitHub provider.
  const GitHub({
    this.enabled,
    this.login,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'login': ?pulumi.Input.mapOptionalInputValue<LoginScopes, Map<String, dynamic>>(login, (value) => value.toMap()),
      'registration': ?pulumi.Input.mapOptionalInputValue<ClientRegistration, Map<String, dynamic>>(registration, (value) => value.toMap()),
    };
  }

  factory GitHub.fromMap(Map<String, dynamic> map) {
    return GitHub(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoginScopes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registration: (() { final guardedValue = map['registration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientRegistration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
