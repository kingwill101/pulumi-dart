// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ProposedMultiRegionAccessPointPolicy
class ProposedMultiRegionAccessPointPolicyResponse {
  /// <p>The details of the proposed policy.</p>
  final String? policy;

  /// Creates a new [ProposedMultiRegionAccessPointPolicyResponse].
  /// [policy] <p>The details of the proposed policy.</p>
  ProposedMultiRegionAccessPointPolicyResponse({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory ProposedMultiRegionAccessPointPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ProposedMultiRegionAccessPointPolicyResponse(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}

