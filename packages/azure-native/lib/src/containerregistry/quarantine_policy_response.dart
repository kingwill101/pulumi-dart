// ignore_for_file: unused_element, unnecessary_cast


/// The quarantine policy for a container registry.
class QuarantinePolicyResponse {
  /// The value that indicates whether the policy is enabled or not.
  final String? status;

  /// Creates a new [QuarantinePolicyResponse].
  /// [status] The value that indicates whether the policy is enabled or not.
  QuarantinePolicyResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory QuarantinePolicyResponse.fromMap(Map<String, dynamic> map) {
    return QuarantinePolicyResponse(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

