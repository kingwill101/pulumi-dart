// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// ARN of the policy.
  final String arn;

  /// Number of entities (users, groups, and roles) that the policy is attached to.
  final int attachmentCount;

  /// Description of the policy.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Path to the policy.
  final String path;
  final String? pathPrefix;

  /// Policy document of the policy.
  final String policy;

  /// Policy's ID.
  final String policyId;

  /// Key-value mapping of tags for the IAM Policy.
  final Map<String, String> tags;

  GetPolicyResult({
    required this.arn,
    required this.attachmentCount,
    required this.description,
    required this.id,
    required this.name,
    required this.path,
    this.pathPrefix,
    required this.policy,
    required this.policyId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['attachmentCount'] = attachmentCount;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['path'] = path;
    final pathPrefixValue = pathPrefix;
    if (pathPrefixValue != null) {
      map['pathPrefix'] = pathPrefixValue;
    }
    map['policy'] = policy;
    map['policyId'] = policyId;
    map['tags'] = tags;
    return map;
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      arn: map['arn'] as String,
      attachmentCount: map['attachmentCount'] as int,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      path: map['path'] as String,
      pathPrefix:
          map['pathPrefix'] == null ? null : map['pathPrefix'] as String,
      policy: map['policy'] as String,
      policyId: map['policyId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
