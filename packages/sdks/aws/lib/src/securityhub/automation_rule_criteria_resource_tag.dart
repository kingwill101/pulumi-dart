// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleCriteriaResourceTag {
  final pulumi.Input<String> comparison;
  /// The key of the map filter.
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [AutomationRuleCriteriaResourceTag].
  /// [comparison] Required.
  /// [key] The key of the map filter.
  /// [value] Required.
  AutomationRuleCriteriaResourceTag({
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

  factory AutomationRuleCriteriaResourceTag.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaResourceTag(
      comparison: (map['comparison'] as String).input(),
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

