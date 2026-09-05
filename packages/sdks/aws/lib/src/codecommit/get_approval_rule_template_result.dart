// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApprovalRuleTemplate.
class GetApprovalRuleTemplateResult {
  /// The ID of the approval rule template.
  final String? approvalRuleTemplateId;
  /// Content of the approval rule template.
  final String? content;
  /// Date the approval rule template was created, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String? creationDate;
  /// Description of the approval rule template.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Date the approval rule template was most recently changed, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String? lastModifiedDate;
  /// ARN of the user who made the most recent changes to the approval rule template.
  final String? lastModifiedUser;
  final String? name;
  final String? region;
  /// SHA-256 hash signature for the content of the approval rule template.
  final String? ruleContentSha256;

  /// Creates a new [GetApprovalRuleTemplateResult].
  /// [approvalRuleTemplateId] The ID of the approval rule template.
  /// [content] Content of the approval rule template.
  /// [creationDate] Date the approval rule template was created, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [description] Description of the approval rule template.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModifiedDate] Date the approval rule template was most recently changed, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [lastModifiedUser] ARN of the user who made the most recent changes to the approval rule template.
  /// [name] Optional.
  /// [region] Optional.
  /// [ruleContentSha256] SHA-256 hash signature for the content of the approval rule template.
  const GetApprovalRuleTemplateResult({
    this.approvalRuleTemplateId,
    this.content,
    this.creationDate,
    this.description,
    this.id,
    this.lastModifiedDate,
    this.lastModifiedUser,
    this.name,
    this.region,
    this.ruleContentSha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRuleTemplateId': ?approvalRuleTemplateId,
      'content': ?content,
      'creationDate': ?creationDate,
      'description': ?description,
      'id': ?id,
      'lastModifiedDate': ?lastModifiedDate,
      'lastModifiedUser': ?lastModifiedUser,
      'name': ?name,
      'region': ?region,
      'ruleContentSha256': ?ruleContentSha256,
    };
  }

  factory GetApprovalRuleTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetApprovalRuleTemplateResult(
      approvalRuleTemplateId: (() { final guardedValue = map['approvalRuleTemplateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedDate: (() { final guardedValue = map['lastModifiedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedUser: (() { final guardedValue = map['lastModifiedUser']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleContentSha256: (() { final guardedValue = map['ruleContentSha256']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
