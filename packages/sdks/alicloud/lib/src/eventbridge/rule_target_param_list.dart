// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleTargetParamList {
  /// The format of the event target parameter. Valid values: `ORIGINAL`, `TEMPLATE`, `JSONPATH`, `CONSTANT`.
  final pulumi.Input<String> form;
  /// The resource parameter of the event target. For more information, see [How to use it](https://www.alibabacloud.com/help/en/eventbridge/latest/event-target-parameters)
  final pulumi.Input<String> resourceKey;
  /// The template of the event target parameter.
  final pulumi.Input<String>? template;
  /// The value of the event target parameter.
  ///
  /// > **NOTE:** There exists a potential diff error that the backend service will return a default param as following:
  ///
  /// ```
  /// param_list {
  /// resource_key = "IsBase64Encode"
  /// form         = "CONSTANT"
  /// value        = "false"
  /// template     = ""
  /// }
  /// ```
  ///
  /// In order to fix the diff, from version 1.160.0, this resource has removed the param which `resource_key = "IsBase64Encode"` and `value = "false"`.
  /// If you want to set `resource_key = "IsBase64Encode"`, please avoid to set `value = "false"`.
  final pulumi.Input<String>? value;

  /// Creates a new [RuleTargetParamList].
  /// [form] The format of the event target parameter. Valid values: `ORIGINAL`, `TEMPLATE`, `JSONPATH`, `CONSTANT`.
  /// [resourceKey] The resource parameter of the event target. For more information, see [How to use it](https://www.alibabacloud.com/help/en/eventbridge/latest/event-target-parameters)
  /// [template] The template of the event target parameter.
  /// [value] The value of the event target parameter.
  RuleTargetParamList({
    required this.form,
    required this.resourceKey,
    this.template,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'form': form,
      'resourceKey': resourceKey,
      'template': ?template,
      'value': ?value,
    };
  }

  factory RuleTargetParamList.fromMap(Map<String, dynamic> map) {
    return RuleTargetParamList(
      form: (map['form'] as String).input(),
      resourceKey: (map['resourceKey'] as String).input(),
      template: map['template'] == null ? null : (map['template']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

