// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthPolicy.
class GetAuthPolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? policy;
  final String? region;
  final String? resourceIdentifier;
  final String? state;

  /// Creates a new [GetAuthPolicyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policy] Optional.
  /// [region] Optional.
  /// [resourceIdentifier] Optional.
  /// [state] Optional.
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
