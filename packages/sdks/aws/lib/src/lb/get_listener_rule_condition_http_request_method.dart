// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleConditionHttpRequestMethod {
  /// Set of source IP addresses in CIDR format for Application Load Balancers
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetListenerRuleConditionHttpRequestMethod].
  /// [values] Set of source IP addresses in CIDR format for Application Load Balancers
  const GetListenerRuleConditionHttpRequestMethod({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetListenerRuleConditionHttpRequestMethod.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleConditionHttpRequestMethod(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
