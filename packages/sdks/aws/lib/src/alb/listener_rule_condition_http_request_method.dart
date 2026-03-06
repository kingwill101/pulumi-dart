// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleConditionHttpRequestMethod {
  final pulumi.Input<List<String>> values;

  /// Creates a new [ListenerRuleConditionHttpRequestMethod].
  /// [values] Required.
  const ListenerRuleConditionHttpRequestMethod({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory ListenerRuleConditionHttpRequestMethod.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionHttpRequestMethod(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

