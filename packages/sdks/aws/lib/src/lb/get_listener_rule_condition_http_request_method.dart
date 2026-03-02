// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleConditionHttpRequestMethod {
  /// Set of `key`-`value` pairs indicating the query string parameters to match.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetListenerRuleConditionHttpRequestMethod].
  /// [values] Set of `key`-`value` pairs indicating the query string parameters to match.
  GetListenerRuleConditionHttpRequestMethod({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetListenerRuleConditionHttpRequestMethod.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleConditionHttpRequestMethod(
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

