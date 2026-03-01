// ignore_for_file: unused_element, unnecessary_cast

import 'client_registration_response.dart';
import 'login_scopes_response.dart';

/// The configuration settings of the GitHub provider.
class GitHubResponse {
  /// <code>false</code> if the GitHub provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final bool? enabled;
  /// The configuration settings of the login flow.
  final LoginScopesResponse? login;
  /// The configuration settings of the app registration for the GitHub provider.
  final ClientRegistrationResponse? registration;

  /// Creates a new [GitHubResponse].
  /// [enabled] <code>false</code> if the GitHub provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the app registration for the GitHub provider.
  GitHubResponse({
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

  factory GitHubResponse.fromMap(Map<String, dynamic> map) {
    return GitHubResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      login: map['login'] == null ? null : LoginScopesResponse.fromMap((map['login'] as Map).cast<String, dynamic>()),
      registration: map['registration'] == null ? null : ClientRegistrationResponse.fromMap((map['registration'] as Map).cast<String, dynamic>()),
    );
  }
}

