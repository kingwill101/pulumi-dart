// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_provider.dart';
import 'authentication_rule.dart';

/// `Authentication` defines the authentication configuration for API methods provided by an API service. Example: name: calendar.googleapis.com authentication: providers: - id: google_calendar_auth jwks_uri: https://www.googleapis.com/oauth2/v1/certs issuer: https://securetoken.google.com rules: - selector: "*" requirements: provider_id: google_calendar_auth - selector: google.calendar.Delegate oauth: canonical_scopes: https://www.googleapis.com/auth/calendar.read
class Authentication {
  /// Defines a set of authentication providers that a service supports.
  final List<AuthProvider>? providers;

  /// A list of authentication rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<AuthenticationRule>? rules;

  /// Creates a new [Authentication].
  /// [providers] Defines a set of authentication providers that a service supports.
  /// [rules] A list of authentication rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  Authentication({
    this.providers,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final providersValue = providers;
    if (providersValue != null) {
      map['providers'] =
          pulumi.Input.encodeList<AuthProvider, Map<String, dynamic>>(
              providersValue, (value) => value.toMap());
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] =
          pulumi.Input.encodeList<AuthenticationRule, Map<String, dynamic>>(
              rulesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Authentication.fromMap(Map<String, dynamic> map) {
    return Authentication(
      providers: map['providers'] == null
          ? null
          : pulumi.Input.decodeList<AuthProvider>(
              map['providers'],
              (value) =>
                  AuthProvider.fromMap((value as Map).cast<String, dynamic>())),
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<AuthenticationRule>(
              map['rules'],
              (value) => AuthenticationRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
