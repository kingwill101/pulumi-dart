// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResourcePolicy.
class GetResourcePolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The [policy][1] for the resource.
  final String policy;
  final String region;
  final String resourceArn;

  /// Creates a new [GetResourcePolicyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policy] The [policy][1] for the resource.
  /// [region] Required.
  /// [resourceArn] Required.
  GetResourcePolicyResult({
    required this.id,
    required this.policy,
    required this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'policy': policy,
      'region': region,
      'resourceArn': resourceArn,
    };
  }

  factory GetResourcePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyResult(
      id: map['id'] as String,
      policy: map['policy'] as String,
      region: map['region'] as String,
      resourceArn: map['resourceArn'] as String,
    );
  }
}

