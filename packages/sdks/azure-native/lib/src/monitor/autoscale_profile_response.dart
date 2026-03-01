// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_response.dart';
import 'scale_capacity_response.dart';
import 'scale_rule_response.dart';
import 'time_window_response.dart';

/// Autoscale profile.
class AutoscaleProfileResponse {
  /// the number of instances that can be used during this profile.
  final ScaleCapacityResponse capacity;
  /// the specific date-time for the profile. This element is not used if the Recurrence element is used.
  final TimeWindowResponse? fixedDate;
  /// the name of the profile.
  final String name;
  /// the repeating times at which this profile begins. This element is not used if the FixedDate element is used.
  final RecurrenceResponse? recurrence;
  /// the collection of rules that provide the triggers and parameters for the scaling action. A maximum of 10 rules can be specified.
  final List<ScaleRuleResponse> rules;

  /// Creates a new [AutoscaleProfileResponse].
  /// [capacity] the number of instances that can be used during this profile.
  /// [fixedDate] the specific date-time for the profile. This element is not used if the Recurrence element is used.
  /// [name] the name of the profile.
  /// [recurrence] the repeating times at which this profile begins. This element is not used if the FixedDate element is used.
  /// [rules] the collection of rules that provide the triggers and parameters for the scaling action. A maximum of 10 rules can be specified.
  AutoscaleProfileResponse({
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
      'rules': pulumi.Input.encodeList<ScaleRuleResponse, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory AutoscaleProfileResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleProfileResponse(
      capacity: ScaleCapacityResponse.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      fixedDate: map['fixedDate'] == null ? null : TimeWindowResponse.fromMap((map['fixedDate'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      recurrence: map['recurrence'] == null ? null : RecurrenceResponse.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
      rules: pulumi.Input.decodeList<ScaleRuleResponse>(map['rules'], (value) => ScaleRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

