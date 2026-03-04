// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleCriteriaResourceDetailsOther {
  final pulumi.Input<String> comparison;

  /// The key of the map filter.
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [AutomationRuleCriteriaResourceDetailsOther].
  /// [comparison] Required.
  /// [key] The key of the map filter.
  /// [value] Required.
  AutomationRuleCriteriaResourceDetailsOther({
    required this.comparison,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'key': key,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaResourceDetailsOther.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutomationRuleCriteriaResourceDetailsOther(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
