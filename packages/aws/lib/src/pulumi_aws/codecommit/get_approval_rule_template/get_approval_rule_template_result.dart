// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getApprovalRuleTemplate.
class GetApprovalRuleTemplateResult {
  /// The ID of the approval rule template.
  final String approvalRuleTemplateId;

  /// Content of the approval rule template.
  final String content;

  /// Date the approval rule template was created, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String creationDate;

  /// Description of the approval rule template.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Date the approval rule template was most recently changed, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String lastModifiedDate;

  /// ARN of the user who made the most recent changes to the approval rule template.
  final String lastModifiedUser;
  final String name;
  final String region;

  /// SHA-256 hash signature for the content of the approval rule template.
  final String ruleContentSha256;

  GetApprovalRuleTemplateResult({
    required this.approvalRuleTemplateId,
    required this.content,
    required this.creationDate,
    required this.description,
    required this.id,
    required this.lastModifiedDate,
    required this.lastModifiedUser,
    required this.name,
    required this.region,
    required this.ruleContentSha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['approvalRuleTemplateId'] = approvalRuleTemplateId;
    map['content'] = content;
    map['creationDate'] = creationDate;
    map['description'] = description;
    map['id'] = id;
    map['lastModifiedDate'] = lastModifiedDate;
    map['lastModifiedUser'] = lastModifiedUser;
    map['name'] = name;
    map['region'] = region;
    map['ruleContentSha256'] = ruleContentSha256;
    return map;
  }

  factory GetApprovalRuleTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetApprovalRuleTemplateResult(
      approvalRuleTemplateId: map['approvalRuleTemplateId'] as String,
      content: map['content'] as String,
      creationDate: map['creationDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      lastModifiedDate: map['lastModifiedDate'] as String,
      lastModifiedUser: map['lastModifiedUser'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      ruleContentSha256: map['ruleContentSha256'] as String,
    );
  }
}
