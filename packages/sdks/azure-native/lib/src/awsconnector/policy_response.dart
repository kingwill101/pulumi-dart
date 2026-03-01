// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Policy
class PolicyResponse {
  /// The entire contents of the policy that defines permissions. For more information, see [Overview of JSON policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json).
  final dynamic policyDocument;
  /// The friendly name (not ARN) identifying the policy.
  final String? policyName;

  /// Creates a new [PolicyResponse].
  /// [policyDocument] The entire contents of the policy that defines permissions. For more information, see [Overview of JSON policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json).
  /// [policyName] The friendly name (not ARN) identifying the policy.
  PolicyResponse({
    this.policyDocument,
    this.policyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDocument': ?policyDocument,
      'policyName': ?policyName,
    };
  }

  factory PolicyResponse.fromMap(Map<String, dynamic> map) {
    return PolicyResponse(
      policyDocument: map['policyDocument'] == null ? null : map['policyDocument'],
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
    );
  }
}

