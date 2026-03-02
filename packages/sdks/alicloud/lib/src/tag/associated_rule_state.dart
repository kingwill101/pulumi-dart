// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssociatedRule resources.
class AssociatedRuleState {
  /// The setting name of the associated resource tag rule. For specific values, see the Rule Setting Name column in [Resources that Support Associated Resource Tag Settings](https://www.alibabacloud.com/help/en/resource-management/tag/user-guide/associated-resource-label-settings)
  final pulumi.Input<String>? associatedSettingName;
  /// Whether to enable the associated resource tag rule. Valid values: `Enable`, `Disable`.
  final pulumi.Input<String>? status;
  /// List of tag keys for the associated resource tag rule.
  final pulumi.Input<List<String>>? tagKeys;

  /// Creates a new [AssociatedRuleState].
  /// [associatedSettingName] The setting name of the associated resource tag rule. For specific values, see the Rule Setting Name column in [Resources that Support Associated Resource Tag Settings](https://www.alibabacloud.com/help/en/resource-management/tag/user-guide/associated-resource-label-settings)
  /// [status] Whether to enable the associated resource tag rule. Valid values: `Enable`, `Disable`.
  /// [tagKeys] List of tag keys for the associated resource tag rule.
  AssociatedRuleState({
    this.associatedSettingName,
    this.status,
    this.tagKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedSettingName': ?associatedSettingName,
      'status': ?status,
      'tagKeys': ?tagKeys,
    };
  }

  factory AssociatedRuleState.fromMap(Map<String, dynamic> map) {
    return AssociatedRuleState(
      associatedSettingName: map['associatedSettingName'] == null ? null : (map['associatedSettingName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tagKeys: map['tagKeys'] == null ? null : ((map['tagKeys'] as List).cast<String>()).input(),
    );
  }
}

