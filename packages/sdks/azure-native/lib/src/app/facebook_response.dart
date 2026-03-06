// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_registration_response.dart';
import 'login_scopes_response.dart';

/// The configuration settings of the Facebook provider.
class FacebookResponse {
  /// &lt;code&gt;false&lt;/code&gt; if the Facebook provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? enabled;
  /// The version of the Facebook api to be used while logging in.
  final pulumi.Input<String>? graphApiVersion;
  /// The configuration settings of the login flow.
  final pulumi.Input<LoginScopesResponse>? login;
  /// The configuration settings of the app registration for the Facebook provider.
  final pulumi.Input<AppRegistrationResponse>? registration;

  /// Creates a new [FacebookResponse].
  /// [enabled] &lt;code&gt;false&lt;/code&gt; if the Facebook provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [graphApiVersion] The version of the Facebook api to be used while logging in.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the app registration for the Facebook provider.
  const FacebookResponse({
    this.enabled,
    this.graphApiVersion,
    this.login,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'graphApiVersion': ?graphApiVersion,
      'login': ?pulumi.Input.mapOptionalInputValue<LoginScopesResponse, Map<String, dynamic>>(login, (value) => value.toMap()),
      'registration': ?pulumi.Input.mapOptionalInputValue<AppRegistrationResponse, Map<String, dynamic>>(registration, (value) => value.toMap()),
    };
  }

  factory FacebookResponse.fromMap(Map<String, dynamic> map) {
    return FacebookResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      graphApiVersion: (() { final guardedValue = map['graphApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoginScopesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registration: (() { final guardedValue = map['registration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppRegistrationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

