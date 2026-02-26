// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getApprovalRuleTemplate.
class GetApprovalRuleTemplateArgs {
  /// Name for the approval rule template. This needs to be less than 100 characters.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetApprovalRuleTemplateArgs({
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetApprovalRuleTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetApprovalRuleTemplateArgs(
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
