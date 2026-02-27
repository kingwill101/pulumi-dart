// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ApprovalRuleTemplate.
class ApprovalRuleTemplateArgs {
  /// The content of the approval rule template. Maximum of 3000 characters.
  final pulumi.Input<String> content;

  /// The description of the approval rule template. Maximum of 1000 characters.
  final pulumi.Input<String>? description;

  /// The name for the approval rule template. Maximum of 100 characters.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ApprovalRuleTemplateArgs({
    required this.content,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ApprovalRuleTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ApprovalRuleTemplateArgs(
      content: pulumi.Input.asInput<String>(map['content']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
