// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulePredicate {
  /// The unique identifier of a predicate, such as the ID of a `ByteMatchSet` or `IPSet`.
  final pulumi.Input<String> dataId;
  /// Whether to use the settings or the negated settings that you specified in the objects.
  final pulumi.Input<bool> negated;
  /// The type of predicate in a rule. Valid values: `ByteMatch`, `GeoMatch`, `IPMatch`, `RegexMatch`, `SizeConstraint`, `SqlInjectionMatch`, or `XssMatch`
  final pulumi.Input<String> type;

  /// Creates a new [RulePredicate].
  /// [dataId] The unique identifier of a predicate, such as the ID of a `ByteMatchSet` or `IPSet`.
  /// [negated] Whether to use the settings or the negated settings that you specified in the objects.
  /// [type] The type of predicate in a rule. Valid values: `ByteMatch`, `GeoMatch`, `IPMatch`, `RegexMatch`, `SizeConstraint`, `SqlInjectionMatch`, or `XssMatch`
  const RulePredicate({
    required this.dataId,
    required this.negated,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataId': dataId,
      'negated': negated,
      'type': type,
    };
  }

  factory RulePredicate.fromMap(Map<String, dynamic> map) {
    return RulePredicate(
      dataId: pulumi.Input.fromValue(map['dataId'] as String),
      negated: pulumi.Input.fromValue(map['negated'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
