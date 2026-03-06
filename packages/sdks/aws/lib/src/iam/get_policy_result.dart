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

  /// Creates a new [GetPolicyResult].
  /// [arn] ARN of the policy.
  /// [attachmentCount] Number of entities (users, groups, and roles) that the policy is attached to.
  /// [description] Description of the policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [path] Path to the policy.
  /// [pathPrefix] Optional.
  /// [policy] Policy document of the policy.
  /// [policyId] Policy's ID.
  /// [tags] Key-value mapping of tags for the IAM Policy.
  const GetPolicyResult({
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
    return <String, dynamic>{
      'arn': arn,
      'attachmentCount': attachmentCount,
      'description': description,
      'id': id,
      'name': name,
      'path': path,
      'pathPrefix': ?pathPrefix,
      'policy': policy,
      'policyId': policyId,
      'tags': tags,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      arn: map['arn'] as String,
      attachmentCount: map['attachmentCount'] as int,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      path: map['path'] as String,
      pathPrefix: (() { final guardedValue = map['pathPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: map['policy'] as String,
      policyId: map['policyId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

