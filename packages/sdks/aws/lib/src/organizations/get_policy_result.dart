// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// The Amazon Resource Name of the policy.
  final String arn;

  /// Indicates if a policy is an AWS managed policy.
  final bool awsManaged;

  /// The text content of the policy.
  final String content;

  /// The description of the policy.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The friendly name of the policy.
  final String name;
  final String policyId;

  /// The type of policy values can be `AISERVICES_OPT_OUT_POLICY | BACKUP_POLICY | CHATBOT_POLICY | DECLARATIVE_POLICY_EC2 | RESOURCE_CONTROL_POLICY | SERVICE_CONTROL_POLICY | TAG_POLICY`
  final String type;

  /// Creates a new [GetPolicyResult].
  /// [arn] The Amazon Resource Name of the policy.
  /// [awsManaged] Indicates if a policy is an AWS managed policy.
  /// [content] The text content of the policy.
  /// [description] The description of the policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The friendly name of the policy.
  /// [policyId] Required.
  /// [type] The type of policy values can be `AISERVICES_OPT_OUT_POLICY | BACKUP_POLICY | CHATBOT_POLICY | DECLARATIVE_POLICY_EC2 | RESOURCE_CONTROL_POLICY | SERVICE_CONTROL_POLICY | TAG_POLICY`
  GetPolicyResult({
    required this.arn,
    required this.awsManaged,
    required this.content,
    required this.description,
    required this.id,
    required this.name,
    required this.policyId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'awsManaged': awsManaged,
      'content': content,
      'description': description,
      'id': id,
      'name': name,
      'policyId': policyId,
      'type': type,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      arn: map['arn'] as String,
      awsManaged: map['awsManaged'] as bool,
      content: map['content'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      policyId: map['policyId'] as String,
      type: map['type'] as String,
    );
  }
}
