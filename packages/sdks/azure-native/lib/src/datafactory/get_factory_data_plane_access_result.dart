// ignore_for_file: unused_element, unnecessary_cast

import 'user_access_policy_response.dart';

/// Result data returned by getFactoryDataPlaneAccess.
class GetFactoryDataPlaneAccessResult {
  /// Data Plane read only access token.
  final String? accessToken;
  /// Data Plane service base URL.
  final String? dataPlaneUrl;
  /// The user access policy.
  final UserAccessPolicyResponse? policy;

  /// Creates a new [GetFactoryDataPlaneAccessResult].
  /// [accessToken] Data Plane read only access token.
  /// [dataPlaneUrl] Data Plane service base URL.
  /// [policy] The user access policy.
  GetFactoryDataPlaneAccessResult({
    this.accessToken,
    this.dataPlaneUrl,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'dataPlaneUrl': ?dataPlaneUrl,
      'policy': ?policy == null ? null : policy!.toMap(),
    };
  }

  factory GetFactoryDataPlaneAccessResult.fromMap(Map<String, dynamic> map) {
    return GetFactoryDataPlaneAccessResult(
      accessToken: map['accessToken'] == null ? null : map['accessToken']! as String,
      dataPlaneUrl: map['dataPlaneUrl'] == null ? null : map['dataPlaneUrl']! as String,
      policy: map['policy'] == null ? null : UserAccessPolicyResponse.fromMap((map['policy']! as Map).cast<String, dynamic>()),
    );
  }
}

