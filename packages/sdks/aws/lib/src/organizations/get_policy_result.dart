// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicy.
class GetPolicyResult {
  /// ARN of the policy.
  final String? arn;
  /// Indicates if a policy is an AWS managed policy.
  final bool? awsManaged;
  /// The text content of the policy.
  final String? content;
  /// The description of the policy.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The friendly name of the policy.
  final String? name;
  final String? policyId;
  /// The type of policy values can be `AISERVICES_OPT_OUT_POLICY | BACKUP_POLICY | CHATBOT_POLICY | DECLARATIVE_POLICY_EC2 | RESOURCE_CONTROL_POLICY | SERVICE_CONTROL_POLICY | TAG_POLICY`
  final String? type;

  /// Creates a new [GetPolicyResult].
  /// [arn] ARN of the policy.
  /// [awsManaged] Indicates if a policy is an AWS managed policy.
  /// [content] The text content of the policy.
  /// [description] The description of the policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The friendly name of the policy.
  /// [policyId] Optional.
  /// [type] The type of policy values can be `AISERVICES_OPT_OUT_POLICY | BACKUP_POLICY | CHATBOT_POLICY | DECLARATIVE_POLICY_EC2 | RESOURCE_CONTROL_POLICY | SERVICE_CONTROL_POLICY | TAG_POLICY`
  const GetPolicyResult({
    this.arn,
    this.awsManaged,
    this.content,
    this.description,
    this.id,
    this.name,
    this.policyId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsManaged': ?awsManaged,
      'content': ?content,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'policyId': ?policyId,
      'type': ?type,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      awsManaged: (() { final guardedValue = map['awsManaged']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
