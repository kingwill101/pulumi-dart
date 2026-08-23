// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response.dart';

/// Definition of Filter
class FilterWafv2LoggingConfigurationResponse {
  /// How to handle logs that satisfy the filter's conditions and requirement.
  final pulumi.Input<String>? behavior;
  /// Match conditions for the filter.
  final pulumi.Input<List<ConditionResponse>>? conditions;
  /// Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
  final pulumi.Input<String>? requirement;

  /// Creates a new [FilterWafv2LoggingConfigurationResponse].
  /// [behavior] How to handle logs that satisfy the filter's conditions and requirement.
  /// [conditions] Match conditions for the filter.
  /// [requirement] Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
  const FilterWafv2LoggingConfigurationResponse({
    this.behavior,
    this.conditions,
    this.requirement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': ?behavior,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requirement': ?requirement,
    };
  }

  factory FilterWafv2LoggingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FilterWafv2LoggingConfigurationResponse(
      behavior: (() { final guardedValue = map['behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionResponse>(guardedValue, (value) => ConditionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requirement: (() { final guardedValue = map['requirement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
