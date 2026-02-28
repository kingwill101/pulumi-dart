// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_provider_response.dart';
import 'authentication_rule_response.dart';

/// `Authentication` defines the authentication configuration for API methods provided by an API service. Example: name: calendar.googleapis.com authentication: providers: - id: google_calendar_auth jwks_uri: https://www.googleapis.com/oauth2/v1/certs issuer: https://securetoken.google.com rules: - selector: "*" requirements: provider_id: google_calendar_auth - selector: google.calendar.Delegate oauth: canonical_scopes: https://www.googleapis.com/auth/calendar.read
class AuthenticationResponse {
  /// Defines a set of authentication providers that a service supports.
  final List<AuthProviderResponse> providers;

  /// A list of authentication rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<AuthenticationRuleResponse> rules;

  /// Creates a new [AuthenticationResponse].
  /// [providers] Defines a set of authentication providers that a service supports.
  /// [rules] A list of authentication rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  AuthenticationResponse({
    required this.providers,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['providers'] =
        pulumi.Input.encodeList<AuthProviderResponse, Map<String, dynamic>>(
            providers, (value) => value.toMap());
    map['rules'] = pulumi.Input.encodeList<AuthenticationRuleResponse,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory AuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse(
      providers: pulumi.Input.decodeList<AuthProviderResponse>(
          map['providers'],
          (value) => AuthProviderResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      rules: pulumi.Input.decodeList<AuthenticationRuleResponse>(
          map['rules'],
          (value) => AuthenticationRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
