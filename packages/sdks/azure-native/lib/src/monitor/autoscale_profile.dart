// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence.dart';
import 'scale_capacity.dart';
import 'scale_rule.dart';
import 'time_window.dart';

/// Autoscale profile.
class AutoscaleProfile {
  /// the number of instances that can be used during this profile.
  final ScaleCapacity capacity;
  /// the specific date-time for the profile. This element is not used if the Recurrence element is used.
  final TimeWindow? fixedDate;
  /// the name of the profile.
  final String name;
  /// the repeating times at which this profile begins. This element is not used if the FixedDate element is used.
  final Recurrence? recurrence;
  /// the collection of rules that provide the triggers and parameters for the scaling action. A maximum of 10 rules can be specified.
  final List<ScaleRule> rules;

  /// Creates a new [AutoscaleProfile].
  /// [capacity] the number of instances that can be used during this profile.
  /// [fixedDate] the specific date-time for the profile. This element is not used if the Recurrence element is used.
  /// [name] the name of the profile.
  /// [recurrence] the repeating times at which this profile begins. This element is not used if the FixedDate element is used.
  /// [rules] the collection of rules that provide the triggers and parameters for the scaling action. A maximum of 10 rules can be specified.
  AutoscaleProfile({
    required this.capacity,
    this.fixedDate,
    required this.name,
    this.recurrence,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity.toMap(),
      'fixedDate': ?fixedDate == null ? null : fixedDate!.toMap(),
      'name': name,
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
      'rules': pulumi.Input.encodeList<ScaleRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory AutoscaleProfile.fromMap(Map<String, dynamic> map) {
    return AutoscaleProfile(
      capacity: ScaleCapacity.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      fixedDate: map['fixedDate'] == null ? null : TimeWindow.fromMap((map['fixedDate'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      recurrence: map['recurrence'] == null ? null : Recurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
      rules: pulumi.Input.decodeList<ScaleRule>(map['rules'], (value) => ScaleRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

