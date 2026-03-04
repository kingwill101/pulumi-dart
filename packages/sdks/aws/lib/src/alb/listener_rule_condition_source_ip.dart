// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleConditionSourceIp {
  final pulumi.Input<List<String>> values;

  /// Creates a new [ListenerRuleConditionSourceIp].
  /// [values] Required.
  ListenerRuleConditionSourceIp({required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory ListenerRuleConditionSourceIp.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionSourceIp(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
