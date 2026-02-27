// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_requirement_response.dart';
import 'oauth_requirements_response.dart';

/// Authentication rules for the service. By default, if a method has any authentication requirements, every request must include a valid credential matching one of the requirements. It's an error to include more than one kind of credential in a single request. If a method doesn't have any auth requirements, request credentials will be ignored.
class AuthenticationRuleResponse {
  /// If true, the service accepts API keys without any other credential. This flag only applies to HTTP and gRPC requests.
  final bool allowWithoutCredential;

  /// The requirements for OAuth credentials.
  final OAuthRequirementsResponse oauth;

  /// Requirements for additional authentication providers.
  final List<AuthRequirementResponse> requirements;

  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final String selector;

  AuthenticationRuleResponse({
    required this.allowWithoutCredential,
    required this.oauth,
    required this.requirements,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowWithoutCredential'] = allowWithoutCredential;
    map['oauth'] = oauth.toMap();
    map['requirements'] =
        pulumi.Input.encodeList<AuthRequirementResponse, Map<String, dynamic>>(
            requirements, (value) => value.toMap());
    map['selector'] = selector;
    return map;
  }

  factory AuthenticationRuleResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationRuleResponse(
      allowWithoutCredential: map['allowWithoutCredential'] as bool,
      oauth: OAuthRequirementsResponse.fromMap(
          (map['oauth'] as Map).cast<String, dynamic>()),
      requirements: pulumi.Input.decodeList<AuthRequirementResponse>(
          map['requirements'],
          (value) => AuthRequirementResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      selector: map['selector'] as String,
    );
  }
}
