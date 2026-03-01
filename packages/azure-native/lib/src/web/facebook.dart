// ignore_for_file: unused_element, unnecessary_cast

import 'app_registration.dart';
import 'login_scopes.dart';

/// The configuration settings of the Facebook provider.
class Facebook {
  /// <code>false</code> if the Facebook provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final bool? enabled;
  /// The version of the Facebook api to be used while logging in.
  final String? graphApiVersion;
  /// The configuration settings of the login flow.
  final LoginScopes? login;
  /// The configuration settings of the app registration for the Facebook provider.
  final AppRegistration? registration;

  /// Creates a new [Facebook].
  /// [enabled] <code>false</code> if the Facebook provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [graphApiVersion] The version of the Facebook api to be used while logging in.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the app registration for the Facebook provider.
  Facebook({
    this.enabled,
    this.graphApiVersion,
    this.login,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'graphApiVersion': ?graphApiVersion,
      'login': ?login == null ? null : login!.toMap(),
      'registration': ?registration == null ? null : registration!.toMap(),
    };
  }

  factory Facebook.fromMap(Map<String, dynamic> map) {
    return Facebook(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      graphApiVersion: map['graphApiVersion'] == null ? null : map['graphApiVersion'] as String,
      login: map['login'] == null ? null : LoginScopes.fromMap((map['login'] as Map).cast<String, dynamic>()),
      registration: map['registration'] == null ? null : AppRegistration.fromMap((map['registration'] as Map).cast<String, dynamic>()),
    );
  }
}

