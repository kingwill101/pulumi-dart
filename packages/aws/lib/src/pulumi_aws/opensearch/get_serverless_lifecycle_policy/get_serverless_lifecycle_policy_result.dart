// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getServerlessLifecyclePolicy.
class GetServerlessLifecyclePolicyResult {
  /// The date the lifecycle policy was created.
  final String createdDate;

  /// Description of the policy. Typically used to store information about the permissions defined in the policy.
  final String description;
  final String id;

  /// The date the lifecycle policy was last modified.
  final String lastModifiedDate;
  final String name;

  /// JSON policy document to use as the content for the new policy.
  final String policy;

  /// Version of the policy.
  final String policyVersion;
  final String region;
  final String type;

  GetServerlessLifecyclePolicyResult({
    required this.createdDate,
    required this.description,
    required this.id,
    required this.lastModifiedDate,
    required this.name,
    required this.policy,
    required this.policyVersion,
    required this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createdDate'] = createdDate;
    map['description'] = description;
    map['id'] = id;
    map['lastModifiedDate'] = lastModifiedDate;
    map['name'] = name;
    map['policy'] = policy;
    map['policyVersion'] = policyVersion;
    map['region'] = region;
    map['type'] = type;
    return map;
  }

  factory GetServerlessLifecyclePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessLifecyclePolicyResult(
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      lastModifiedDate: map['lastModifiedDate'] as String,
      name: map['name'] as String,
      policy: map['policy'] as String,
      policyVersion: map['policyVersion'] as String,
      region: map['region'] as String,
      type: map['type'] as String,
    );
  }
}
