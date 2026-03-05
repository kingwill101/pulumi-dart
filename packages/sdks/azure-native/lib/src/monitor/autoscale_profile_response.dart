// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_response.dart';
import 'scale_capacity_response.dart';
import 'scale_rule_response.dart';
import 'time_window_response.dart';

/// Autoscale profile.
class AutoscaleProfileResponse {
  /// the number of instances that can be used during this profile.
  final pulumi.Input<ScaleCapacityResponse> capacity;
  /// the specific date-time for the profile. This element is not used if the Recurrence element is used.
  final pulumi.Input<TimeWindowResponse>? fixedDate;
  /// the name of the profile.
  final pulumi.Input<String> name;
  /// the repeating times at which this profile begins. This element is not used if the FixedDate element is used.
  final pulumi.Input<RecurrenceResponse>? recurrence;
  /// the collection of rules that provide the triggers and parameters for the scaling action. A maximum of 10 rules can be specified.
  final pulumi.Input<List<ScaleRuleResponse>> rules;

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
      'capacity': pulumi.Input.mapInputValue<ScaleCapacityResponse, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'fixedDate': ?pulumi.Input.mapOptionalInputValue<TimeWindowResponse, Map<String, dynamic>>(fixedDate, (value) => value.toMap()),
      'name': name,
      'recurrence': ?pulumi.Input.mapOptionalInputValue<RecurrenceResponse, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
      'rules': pulumi.Input.mapInputValue<List<ScaleRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ScaleRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutoscaleProfileResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleProfileResponse(
      capacity: pulumi.Input.fromValue(ScaleCapacityResponse.fromMap((map['capacity']! as Map).cast<String, dynamic>())),
      fixedDate: (() { final guardedValue = map['fixedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimeWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleRuleResponse>(map['rules']!, (value) => ScaleRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

