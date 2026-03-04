// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apple_registration_response.dart';
import 'login_scopes_response.dart';

/// The configuration settings of the Apple provider.
class AppleResponse {
  /// &lt;code&gt;false&lt;/code&gt; if the Apple provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? enabled;

  /// The configuration settings of the login flow.
  final pulumi.Input<LoginScopesResponse>? login;

  /// The configuration settings of the Apple registration.
  final pulumi.Input<AppleRegistrationResponse>? registration;

  /// Creates a new [AppleResponse].
  /// [enabled] &lt;code&gt;false&lt;/code&gt; if the Apple provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the Apple registration.
  AppleResponse({this.enabled, this.login, this.registration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'login':
          ?pulumi.Input.mapOptionalInputValue<
            LoginScopesResponse,
            Map<String, dynamic>
          >(login, (value) => value.toMap()),
      'registration':
          ?pulumi.Input.mapOptionalInputValue<
            AppleRegistrationResponse,
            Map<String, dynamic>
          >(registration, (value) => value.toMap()),
    };
  }

  factory AppleResponse.fromMap(Map<String, dynamic> map) {
    return AppleResponse(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      login: (() {
        final guardedValue = map['login'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoginScopesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      registration: (() {
        final guardedValue = map['registration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppleRegistrationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
