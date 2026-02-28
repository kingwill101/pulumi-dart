// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_predicate_condition.dart';

class TriggerPredicate {
  /// A list of the conditions that determine when the trigger will fire. See Conditions.
  final List<TriggerPredicateCondition> conditions;

  /// How to handle multiple conditions. Defaults to `AND`. Valid values are `AND` or `ANY`.
  final String? logical;

  /// Creates a new [TriggerPredicate].
  /// [conditions] A list of the conditions that determine when the trigger will fire. See Conditions.
  /// [logical] How to handle multiple conditions. Defaults to `AND`. Valid values are `AND` or `ANY`.
  TriggerPredicate({
    required this.conditions,
    this.logical,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = pulumi.Input.encodeList<TriggerPredicateCondition,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    final logicalValue = logical;
    if (logicalValue != null) {
      map['logical'] = logicalValue;
    }
    return map;
  }

  factory TriggerPredicate.fromMap(Map<String, dynamic> map) {
    return TriggerPredicate(
      conditions: pulumi.Input.decodeList<TriggerPredicateCondition>(
          map['conditions'],
          (value) => TriggerPredicateCondition.fromMap(
              (value as Map).cast<String, dynamic>())),
      logical: map['logical'] == null ? null : map['logical'] as String,
    );
  }
}
