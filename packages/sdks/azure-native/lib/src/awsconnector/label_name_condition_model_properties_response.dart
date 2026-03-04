// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LabelNameConditionModelProperties
class LabelNameConditionModelPropertiesResponse {
  /// The label name that a log record must contain in order to meet the condition. This must be a fully qualified label name. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.
  final pulumi.Input<String>? labelName;

  /// Creates a new [LabelNameConditionModelPropertiesResponse].
  /// [labelName] The label name that a log record must contain in order to meet the condition. This must be a fully qualified label name. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.
  LabelNameConditionModelPropertiesResponse({this.labelName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labelName': ?labelName};
  }

  factory LabelNameConditionModelPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return LabelNameConditionModelPropertiesResponse(
      labelName: (() {
        final guardedValue = map['labelName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
