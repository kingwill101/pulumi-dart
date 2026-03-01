// ignore_for_file: unused_element, unnecessary_cast


/// The content trust policy for a container registry.
class TrustPolicyResponse {
  /// The value that indicates whether the policy is enabled or not.
  final String? status;
  /// The type of trust policy.
  final String? type;

  /// Creates a new [TrustPolicyResponse].
  /// [status] The value that indicates whether the policy is enabled or not.
  /// [type] The type of trust policy.
  TrustPolicyResponse({
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'type': ?type,
    };
  }

  factory TrustPolicyResponse.fromMap(Map<String, dynamic> map) {
    return TrustPolicyResponse(
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

