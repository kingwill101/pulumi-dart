// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutingRuleConditionMatchBasePaths {
  /// List of strings of the case sensitive base path to be matched.
  final pulumi.Input<List<String>> anyOfs;

  /// Creates a new [RoutingRuleConditionMatchBasePaths].
  /// [anyOfs] List of strings of the case sensitive base path to be matched.
  const RoutingRuleConditionMatchBasePaths({
    required this.anyOfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyOfs': anyOfs,
    };
  }

  factory RoutingRuleConditionMatchBasePaths.fromMap(Map<String, dynamic> map) {
    return RoutingRuleConditionMatchBasePaths(
      anyOfs: pulumi.Input.fromValue((map['anyOfs'] as List).cast<String>()),
    );
  }
}
