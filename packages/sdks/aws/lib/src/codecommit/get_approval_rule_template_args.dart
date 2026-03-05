// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codecommit_get_approval_rule_template_get_approval_rule_template_args_doc}
/// Arguments for getApprovalRuleTemplate.
/// {@endtemplate}
/// {@macro pulumi_codecommit_get_approval_rule_template_get_approval_rule_template_args_doc}
class GetApprovalRuleTemplateArgs {
  /// Name for the approval rule template. This needs to be less than 100 characters.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetApprovalRuleTemplateArgs].
  /// [name] Name for the approval rule template. This needs to be less than 100 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetApprovalRuleTemplateArgs({
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetApprovalRuleTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetApprovalRuleTemplateArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

