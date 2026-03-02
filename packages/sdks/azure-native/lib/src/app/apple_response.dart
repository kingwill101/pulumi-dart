// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apple_registration_response.dart';
import 'login_scopes_response.dart';

/// The configuration settings of the Apple provider.
class AppleResponse {
  /// <code>false</code> if the Apple provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the login flow.
  final pulumi.Input<LoginScopesResponse>? login;
  /// The configuration settings of the Apple registration.
  final pulumi.Input<AppleRegistrationResponse>? registration;

  /// Creates a new [AppleResponse].
  /// [enabled] <code>false</code> if the Apple provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the Apple registration.
  AppleResponse({
    this.enabled,
    this.login,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'login': ?pulumi.Input.mapOptionalInputValue<LoginScopesResponse, Map<String, dynamic>>(login, (value) => value.toMap()),
      'registration': ?pulumi.Input.mapOptionalInputValue<AppleRegistrationResponse, Map<String, dynamic>>(registration, (value) => value.toMap()),
    };
  }

  factory AppleResponse.fromMap(Map<String, dynamic> map) {
    return AppleResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      login: map['login'] == null ? null : (LoginScopesResponse.fromMap((map['login']! as Map).cast<String, dynamic>())).input(),
      registration: map['registration'] == null ? null : (AppleRegistrationResponse.fromMap((map['registration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

