// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthPolicy.
class GetAuthPolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Auth policy. The policy string in JSON must not contain newlines or blank lines.
  final String? policy;
  final String? region;
  final String? resourceIdentifier;
  /// State of the auth policy. The auth policy is only active when the auth type is set to AWS_IAM. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is NONE, then, any auth policy you provide will remain inactive.
  final String? state;

  /// Creates a new [GetAuthPolicyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policy] Auth policy. The policy string in JSON must not contain newlines or blank lines.
  /// [region] Optional.
  /// [resourceIdentifier] Optional.
  /// [state] State of the auth policy. The auth policy is only active when the auth type is set to AWS_IAM. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is NONE, then, any auth policy you provide will remain inactive.
  const GetAuthPolicyResult({
    this.id,
    this.policy,
    this.region,
    this.resourceIdentifier,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'policy': ?policy,
      'region': ?region,
      'resourceIdentifier': ?resourceIdentifier,
      'state': ?state,
    };
  }

  factory GetAuthPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAuthPolicyResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceIdentifier: (() { final guardedValue = map['resourceIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
