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
    pulumi.Output<String>? associatedSettingName,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tagKeys,
  }) :
      associatedSettingName = pulumi.Input.asOptionalInput<String>(associatedSettingName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tagKeys = pulumi.Input.asOptionalInput<List<String>>(tagKeys);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedSettingName': ?associatedSettingName,
      'status': ?status,
      'tagKeys': ?tagKeys,
    };
  }

  factory AssociatedRuleState.fromMap(Map<String, dynamic> map) {
    return AssociatedRuleState(
      associatedSettingName: map['associatedSettingName'] == null ? null : pulumi.Output.create<String>(map['associatedSettingName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tagKeys: map['tagKeys'] == null ? null : pulumi.Output.create<List<String>>((map['tagKeys'] as List).cast<String>()),
    );
  }
}

