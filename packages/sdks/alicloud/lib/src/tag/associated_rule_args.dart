// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tag_associated_rule_associated_rule_args_doc}
/// The set of arguments for AssociatedRule.
/// {@endtemplate}
/// {@macro pulumi_tag_associated_rule_associated_rule_args_doc}
class AssociatedRuleArgs {
  /// The setting name of the associated resource tag rule. For specific values, see the Rule Setting Name column in [Resources that Support Associated Resource Tag Settings](https://www.alibabacloud.com/help/en/resource-management/tag/user-guide/associated-resource-label-settings)
  final pulumi.Input<String> associatedSettingName;

  /// Whether to enable the associated resource tag rule. Valid values: `Enable`, `Disable`.
  final pulumi.Input<String> status;

  /// List of tag keys for the associated resource tag rule.
  final pulumi.Input<List<String>>? tagKeys;

  /// Creates a new [AssociatedRuleArgs].
  /// [associatedSettingName] The setting name of the associated resource tag rule. For specific values, see the Rule Setting Name column in [Resources that Support Associated Resource Tag Settings](https://www.alibabacloud.com/help/en/resource-management/tag/user-guide/associated-resource-label-settings)
  /// [status] Whether to enable the associated resource tag rule. Valid values: `Enable`, `Disable`.
  /// [tagKeys] List of tag keys for the associated resource tag rule.
  AssociatedRuleArgs({
    required this.associatedSettingName,
    required this.status,
    this.tagKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedSettingName': associatedSettingName,
      'status': status,
      'tagKeys': ?tagKeys,
    };
  }

  factory AssociatedRuleArgs.fromMap(Map<String, dynamic> map) {
    return AssociatedRuleArgs(
      associatedSettingName: pulumi.Input.fromValue(
        map['associatedSettingName'] as String,
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      tagKeys: (() {
        final guardedValue = map['tagKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
