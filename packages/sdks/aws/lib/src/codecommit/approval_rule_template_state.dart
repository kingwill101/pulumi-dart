// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApprovalRuleTemplate resources.
class ApprovalRuleTemplateState {
  /// The ID of the approval rule template
  final pulumi.Input<String>? approvalRuleTemplateId;
  /// The content of the approval rule template. Maximum of 3000 characters.
  final pulumi.Input<String>? content;
  /// The date the approval rule template was created, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? creationDate;
  /// The description of the approval rule template. Maximum of 1000 characters.
  final pulumi.Input<String>? description;
  /// The date the approval rule template was most recently changed, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? lastModifiedDate;
  /// The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template.
  final pulumi.Input<String>? lastModifiedUser;
  /// The name for the approval rule template. Maximum of 100 characters.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The SHA-256 hash signature for the content of the approval rule template.
  final pulumi.Input<String>? ruleContentSha256;

  /// Creates a new [ApprovalRuleTemplateState].
  /// [approvalRuleTemplateId] The ID of the approval rule template
  /// [content] The content of the approval rule template. Maximum of 3000 characters.
  /// [creationDate] The date the approval rule template was created, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [description] The description of the approval rule template. Maximum of 1000 characters.
  /// [lastModifiedDate] The date the approval rule template was most recently changed, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [lastModifiedUser] The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template.
  /// [name] The name for the approval rule template. Maximum of 100 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleContentSha256] The SHA-256 hash signature for the content of the approval rule template.
  ApprovalRuleTemplateState({
    pulumi.Output<String>? approvalRuleTemplateId,
    pulumi.Output<String>? content,
    pulumi.Output<String>? creationDate,
    pulumi.Output<String>? description,
    pulumi.Output<String>? lastModifiedDate,
    pulumi.Output<String>? lastModifiedUser,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? ruleContentSha256,
  }) :
      approvalRuleTemplateId = pulumi.Input.asOptionalInput<String>(approvalRuleTemplateId),
      content = pulumi.Input.asOptionalInput<String>(content),
      creationDate = pulumi.Input.asOptionalInput<String>(creationDate),
      description = pulumi.Input.asOptionalInput<String>(description),
      lastModifiedDate = pulumi.Input.asOptionalInput<String>(lastModifiedDate),
      lastModifiedUser = pulumi.Input.asOptionalInput<String>(lastModifiedUser),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleContentSha256 = pulumi.Input.asOptionalInput<String>(ruleContentSha256);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRuleTemplateId': ?approvalRuleTemplateId,
      'content': ?content,
      'creationDate': ?creationDate,
      'description': ?description,
      'lastModifiedDate': ?lastModifiedDate,
      'lastModifiedUser': ?lastModifiedUser,
      'name': ?name,
      'region': ?region,
      'ruleContentSha256': ?ruleContentSha256,
    };
  }

  factory ApprovalRuleTemplateState.fromMap(Map<String, dynamic> map) {
    return ApprovalRuleTemplateState(
      approvalRuleTemplateId: map['approvalRuleTemplateId'] == null ? null : pulumi.Output.create<String>(map['approvalRuleTemplateId'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      creationDate: map['creationDate'] == null ? null : pulumi.Output.create<String>(map['creationDate'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      lastModifiedDate: map['lastModifiedDate'] == null ? null : pulumi.Output.create<String>(map['lastModifiedDate'] as String),
      lastModifiedUser: map['lastModifiedUser'] == null ? null : pulumi.Output.create<String>(map['lastModifiedUser'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleContentSha256: map['ruleContentSha256'] == null ? null : pulumi.Output.create<String>(map['ruleContentSha256'] as String),
    );
  }
}

