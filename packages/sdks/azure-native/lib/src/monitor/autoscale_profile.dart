// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence.dart';
import 'scale_capacity.dart';
import 'scale_rule.dart';
import 'time_window.dart';

/// Autoscale profile.
class AutoscaleProfile {
  /// the number of instances that can be used during this profile.
  final pulumi.Input<ScaleCapacity> capacity;
  /// the specific date-time for the profile. This element is not used if the Recurrence element is used.
  final pulumi.Input<TimeWindow?>? fixedDate;
  /// the name of the profile.
  final pulumi.Input<String> name;
  /// the repeating times at which this profile begins. This element is not used if the FixedDate element is used.
  final pulumi.Input<Recurrence?>? recurrence;
  /// the collection of rules that provide the triggers and parameters for the scaling action. A maximum of 10 rules can be specified.
  final pulumi.Input<List<ScaleRule>> rules;

  /// Creates a new [AutoscaleProfile].
  /// [capacity] the number of instances that can be used during this profile.
  /// [fixedDate] the specific date-time for the profile. This element is not used if the Recurrence element is used.
  /// [name] the name of the profile.
  /// [recurrence] the repeating times at which this profile begins. This element is not used if the FixedDate element is used.
  /// [rules] the collection of rules that provide the triggers and parameters for the scaling action. A maximum of 10 rules can be specified.
  const AutoscaleProfile({
    required this.capacity,
    this.fixedDate,
    required this.name,
    this.recurrence,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': pulumi.Input.mapInputValue<ScaleCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'fixedDate': ?pulumi.Input.mapOptionalInputValue<TimeWindow, Map<String, dynamic>>(fixedDate, (value) => value.toMap()),
      'name': name,
      'recurrence': ?pulumi.Input.mapOptionalInputValue<Recurrence, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
      'rules': pulumi.Input.mapInputValue<List<ScaleRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutoscaleProfile.fromMap(Map<String, dynamic> map) {
    return AutoscaleProfile(
      capacity: pulumi.Input.fromValue(ScaleCapacity.fromMap((map['capacity']! as Map).cast<String, dynamic>())),
      fixedDate: (() { final guardedValue = map['fixedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimeWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Recurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleRule>(map['rules']!, (value) => ScaleRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
