// ignore_for_file: unused_element, unnecessary_cast

import 'open_id_connect_login_response.dart';
import 'open_id_connect_registration_response.dart';

/// The configuration settings of the custom Open ID Connect provider.
class CustomOpenIdConnectProviderResponse {
  /// <code>false</code> if the custom Open ID provider provider should not be enabled; otherwise, <code>true</code>.
  final bool? enabled;
  /// The configuration settings of the login flow of the custom Open ID Connect provider.
  final OpenIdConnectLoginResponse? login;
  /// The configuration settings of the app registration for the custom Open ID Connect provider.
  final OpenIdConnectRegistrationResponse? registration;

  /// Creates a new [CustomOpenIdConnectProviderResponse].
  /// [enabled] <code>false</code> if the custom Open ID provider provider should not be enabled; otherwise, <code>true</code>.
  /// [login] The configuration settings of the login flow of the custom Open ID Connect provider.
  /// [registration] The configuration settings of the app registration for the custom Open ID Connect provider.
  CustomOpenIdConnectProviderResponse({
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

  factory CustomOpenIdConnectProviderResponse.fromMap(Map<String, dynamic> map) {
    return CustomOpenIdConnectProviderResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      login: map['login'] == null ? null : OpenIdConnectLoginResponse.fromMap((map['login'] as Map).cast<String, dynamic>()),
      registration: map['registration'] == null ? null : OpenIdConnectRegistrationResponse.fromMap((map['registration'] as Map).cast<String, dynamic>()),
    );
  }
}

