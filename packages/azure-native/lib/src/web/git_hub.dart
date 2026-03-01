// ignore_for_file: unused_element, unnecessary_cast

import 'client_registration.dart';
import 'login_scopes.dart';

/// The configuration settings of the GitHub provider.
class GitHub {
  /// <code>false</code> if the GitHub provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final bool? enabled;
  /// The configuration settings of the login flow.
  final LoginScopes? login;
  /// The configuration settings of the app registration for the GitHub provider.
  final ClientRegistration? registration;

  /// Creates a new [GitHub].
  /// [enabled] <code>false</code> if the GitHub provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the app registration for the GitHub provider.
  GitHub({
    this.enabled,
    this.login,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'login': ?login == null ? null : login!.toMap(),
      'registration': ?registration == null ? null : registration!.toMap(),
    };
  }

  factory GitHub.fromMap(Map<String, dynamic> map) {
    return GitHub(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      login: map['login'] == null ? null : LoginScopes.fromMap((map['login'] as Map).cast<String, dynamic>()),
      registration: map['registration'] == null ? null : ClientRegistration.fromMap((map['registration'] as Map).cast<String, dynamic>()),
    );
  }
}

