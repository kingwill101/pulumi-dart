// ignore_for_file: unused_element, unnecessary_cast

import 'default_authorization_policy_response.dart';
import 'jwt_claim_checks_response.dart';

/// The configuration settings of the Azure Active Directory token validation flow.
class AzureActiveDirectoryValidationResponse {
  /// The list of audiences that can make successful authentication/authorization requests.
  final List<String>? allowedAudiences;
  /// The configuration settings of the default authorization policy.
  final DefaultAuthorizationPolicyResponse? defaultAuthorizationPolicy;
  /// The configuration settings of the checks that should be made while validating the JWT Claims.
  final JwtClaimChecksResponse? jwtClaimChecks;

  /// Creates a new [AzureActiveDirectoryValidationResponse].
  /// [allowedAudiences] The list of audiences that can make successful authentication/authorization requests.
  /// [defaultAuthorizationPolicy] The configuration settings of the default authorization policy.
  /// [jwtClaimChecks] The configuration settings of the checks that should be made while validating the JWT Claims.
  AzureActiveDirectoryValidationResponse({
    this.allowedAudiences,
    this.defaultAuthorizationPolicy,
    this.jwtClaimChecks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'defaultAuthorizationPolicy': ?defaultAuthorizationPolicy == null ? null : defaultAuthorizationPolicy!.toMap(),
      'jwtClaimChecks': ?jwtClaimChecks == null ? null : jwtClaimChecks!.toMap(),
    };
  }

  factory AzureActiveDirectoryValidationResponse.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryValidationResponse(
      allowedAudiences: map['allowedAudiences'] == null ? null : (map['allowedAudiences'] as List).cast<String>(),
      defaultAuthorizationPolicy: map['defaultAuthorizationPolicy'] == null ? null : DefaultAuthorizationPolicyResponse.fromMap((map['defaultAuthorizationPolicy'] as Map).cast<String, dynamic>()),
      jwtClaimChecks: map['jwtClaimChecks'] == null ? null : JwtClaimChecksResponse.fromMap((map['jwtClaimChecks'] as Map).cast<String, dynamic>()),
    );
  }
}

