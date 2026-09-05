// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResourcePolicy.
class GetResourcePolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The policy for the resource.
  final String? policy;
  final String? region;
  final String? resourceArn;

  /// Creates a new [GetResourcePolicyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policy] The policy for the resource.
  /// [region] Optional.
  /// [resourceArn] Optional.
  const GetResourcePolicyResult({
    this.id,
    this.policy,
    this.region,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'policy': ?policy,
      'region': ?region,
      'resourceArn': ?resourceArn,
    };
  }

  factory GetResourcePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
