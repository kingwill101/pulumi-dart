// ignore_for_file: unused_element, unnecessary_cast

import 'open_id_connect_login.dart';
import 'open_id_connect_registration.dart';

/// The configuration settings of the custom Open ID Connect provider.
class CustomOpenIdConnectProvider {
  /// <code>false</code> if the custom Open ID provider provider should not be enabled; otherwise, <code>true</code>.
  final bool? enabled;
  /// The configuration settings of the login flow of the custom Open ID Connect provider.
  final OpenIdConnectLogin? login;
  /// The configuration settings of the app registration for the custom Open ID Connect provider.
  final OpenIdConnectRegistration? registration;

  /// Creates a new [CustomOpenIdConnectProvider].
  /// [enabled] <code>false</code> if the custom Open ID provider provider should not be enabled; otherwise, <code>true</code>.
  /// [login] The configuration settings of the login flow of the custom Open ID Connect provider.
  /// [registration] The configuration settings of the app registration for the custom Open ID Connect provider.
  CustomOpenIdConnectProvider({
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

  factory CustomOpenIdConnectProvider.fromMap(Map<String, dynamic> map) {
    return CustomOpenIdConnectProvider(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      login: map['login'] == null ? null : OpenIdConnectLogin.fromMap((map['login'] as Map).cast<String, dynamic>()),
      registration: map['registration'] == null ? null : OpenIdConnectRegistration.fromMap((map['registration'] as Map).cast<String, dynamic>()),
    );
  }
}

