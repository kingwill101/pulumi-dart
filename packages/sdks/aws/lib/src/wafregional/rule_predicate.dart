// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulePredicate {
  final pulumi.Input<String> dataId;
  final pulumi.Input<bool> negated;
  final pulumi.Input<String> type;

  /// Creates a new [RulePredicate].
  /// [dataId] Required.
  /// [negated] Required.
  /// [type] Required.
  RulePredicate({
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
