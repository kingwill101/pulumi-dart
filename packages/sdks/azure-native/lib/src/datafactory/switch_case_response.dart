// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'append_variable_activity_response.dart';

/// Switch cases with have a value and corresponding activities.
class SwitchCaseResponse {
  /// List of activities to execute for satisfied case condition.
  final pulumi.Input<List<AppendVariableActivityResponse>>? activities;
  /// Expected value that satisfies the expression result of the 'on' property.
  final pulumi.Input<String>? value;

  /// Creates a new [SwitchCaseResponse].
  /// [activities] List of activities to execute for satisfied case condition.
  /// [value] Expected value that satisfies the expression result of the 'on' property.
  SwitchCaseResponse({
    this.activities,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activities': ?pulumi.Input.mapOptionalInputValue<List<AppendVariableActivityResponse>, List<Map<String, dynamic>>>(activities, (value) => pulumi.Input.encodeList<AppendVariableActivityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'value': ?value,
    };
  }

  factory SwitchCaseResponse.fromMap(Map<String, dynamic> map) {
    return SwitchCaseResponse(
      activities: map['activities'] == null ? null : (pulumi.Input.decodeList<AppendVariableActivityResponse>(map['activities'], (value) => AppendVariableActivityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

