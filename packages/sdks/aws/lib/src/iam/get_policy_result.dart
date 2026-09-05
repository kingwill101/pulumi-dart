// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicy.
class GetPolicyResult {
  /// ARN of the policy.
  final String? arn;
  /// Number of entities (users, groups, and roles) that the policy is attached to.
  final int? attachmentCount;
  /// Description of the policy.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// Path to the policy.
  final String? path;
  final String? pathPrefix;
  /// Policy document of the policy.
  final String? policy;
  /// Policy's ID.
  final String? policyId;
  /// Key-value mapping of tags for the IAM Policy.
  final Map<String, String>? tags;

  /// Creates a new [GetPolicyResult].
  /// [arn] ARN of the policy.
  /// [attachmentCount] Number of entities (users, groups, and roles) that the policy is attached to.
  /// [description] Description of the policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [path] Path to the policy.
  /// [pathPrefix] Optional.
  /// [policy] Policy document of the policy.
  /// [policyId] Policy's ID.
  /// [tags] Key-value mapping of tags for the IAM Policy.
  const GetPolicyResult({
    this.arn,
    this.attachmentCount,
    this.description,
    this.id,
    this.name,
    this.path,
    this.pathPrefix,
    this.policy,
    this.policyId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachmentCount': ?attachmentCount,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'path': ?path,
      'pathPrefix': ?pathPrefix,
      'policy': ?policy,
      'policyId': ?policyId,
      'tags': ?tags,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attachmentCount: (() { final guardedValue = map['attachmentCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pathPrefix: (() { final guardedValue = map['pathPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
