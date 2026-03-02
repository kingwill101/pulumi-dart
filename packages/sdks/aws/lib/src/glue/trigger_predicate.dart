// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_predicate_condition.dart';

class TriggerPredicate {
  /// A list of the conditions that determine when the trigger will fire. See Conditions.
  final pulumi.Input<List<TriggerPredicateCondition>> conditions;
  /// How to handle multiple conditions. Defaults to `AND`. Valid values are `AND` or `ANY`.
  final pulumi.Input<String>? logical;

  /// Creates a new [TriggerPredicate].
  /// [conditions] A list of the conditions that determine when the trigger will fire. See Conditions.
  /// [logical] How to handle multiple conditions. Defaults to `AND`. Valid values are `AND` or `ANY`.
  TriggerPredicate({
    required this.conditions,
    this.logical,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<TriggerPredicateCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<TriggerPredicateCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logical': ?logical,
    };
  }

  factory TriggerPredicate.fromMap(Map<String, dynamic> map) {
    return TriggerPredicate(
      conditions: (pulumi.Input.decodeList<TriggerPredicateCondition>(map['conditions']!, (value) => TriggerPredicateCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logical: map['logical'] == null ? null : ((map['logical'] as String).input()).input(),
    );
  }
}

