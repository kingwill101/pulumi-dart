// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_requirement.dart';
import 'oauth_requirements.dart';

/// Authentication rules for the service. By default, if a method has any authentication requirements, every request must include a valid credential matching one of the requirements. It's an error to include more than one kind of credential in a single request. If a method doesn't have any auth requirements, request credentials will be ignored.
class AuthenticationRule {
  /// If true, the service accepts API keys without any other credential. This flag only applies to HTTP and gRPC requests.
  final bool? allowWithoutCredential;

  /// The requirements for OAuth credentials.
  final OAuthRequirements? oauth;

  /// Requirements for additional authentication providers.
  final List<AuthRequirement>? requirements;

  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final String? selector;

  AuthenticationRule({
    this.allowWithoutCredential,
    this.oauth,
    this.requirements,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowWithoutCredentialValue = allowWithoutCredential;
    if (allowWithoutCredentialValue != null) {
      map['allowWithoutCredential'] = allowWithoutCredentialValue;
    }
    final oauthValue = oauth;
    if (oauthValue != null) {
      map['oauth'] = oauthValue.toMap();
    }
    final requirementsValue = requirements;
    if (requirementsValue != null) {
      map['requirements'] =
          pulumi.Input.encodeList<AuthRequirement, Map<String, dynamic>>(
              requirementsValue, (value) => value.toMap());
    }
    final selectorValue = selector;
    if (selectorValue != null) {
      map['selector'] = selectorValue;
    }
    return map;
  }

  factory AuthenticationRule.fromMap(Map<String, dynamic> map) {
    return AuthenticationRule(
      allowWithoutCredential: map['allowWithoutCredential'] == null
          ? null
          : map['allowWithoutCredential'] as bool,
      oauth: map['oauth'] == null
          ? null
          : OAuthRequirements.fromMap(
              (map['oauth'] as Map).cast<String, dynamic>()),
      requirements: map['requirements'] == null
          ? null
          : pulumi.Input.decodeList<AuthRequirement>(
              map['requirements'],
              (value) => AuthRequirement.fromMap(
                  (value as Map).cast<String, dynamic>())),
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}
