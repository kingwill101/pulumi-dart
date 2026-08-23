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
  const GetFactoryDataPlaneAccessResult({
    this.accessToken,
    this.dataPlaneUrl,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'dataPlaneUrl': ?dataPlaneUrl,
      'policy': ?policy?.toMap(),
    };
  }

  factory GetFactoryDataPlaneAccessResult.fromMap(Map<String, dynamic> map) {
    return GetFactoryDataPlaneAccessResult(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataPlaneUrl: (() { final guardedValue = map['dataPlaneUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return UserAccessPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
