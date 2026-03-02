// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_authorization_policy_response.dart';
import 'jwt_claim_checks_response.dart';

/// The configuration settings of the Azure Active Directory token validation flow.
class AzureActiveDirectoryValidationResponse {
  /// The list of audiences that can make successful authentication/authorization requests.
  final pulumi.Input<List<String>>? allowedAudiences;
  /// The configuration settings of the default authorization policy.
  final pulumi.Input<DefaultAuthorizationPolicyResponse>? defaultAuthorizationPolicy;
  /// The configuration settings of the checks that should be made while validating the JWT Claims.
  final pulumi.Input<JwtClaimChecksResponse>? jwtClaimChecks;

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
      'defaultAuthorizationPolicy': ?pulumi.Input.mapOptionalInputValue<DefaultAuthorizationPolicyResponse, Map<String, dynamic>>(defaultAuthorizationPolicy, (value) => value.toMap()),
      'jwtClaimChecks': ?pulumi.Input.mapOptionalInputValue<JwtClaimChecksResponse, Map<String, dynamic>>(jwtClaimChecks, (value) => value.toMap()),
    };
  }

  factory AzureActiveDirectoryValidationResponse.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryValidationResponse(
      allowedAudiences: map['allowedAudiences'] == null ? null : ((map['allowedAudiences']! as List).cast<String>()).input(),
      defaultAuthorizationPolicy: map['defaultAuthorizationPolicy'] == null ? null : (DefaultAuthorizationPolicyResponse.fromMap((map['defaultAuthorizationPolicy']! as Map).cast<String, dynamic>())).input(),
      jwtClaimChecks: map['jwtClaimChecks'] == null ? null : (JwtClaimChecksResponse.fromMap((map['jwtClaimChecks']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

