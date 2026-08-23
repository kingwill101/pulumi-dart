// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'append_variable_activity.dart';

/// Switch cases with have a value and corresponding activities.
class SwitchCase {
  /// List of activities to execute for satisfied case condition.
  final pulumi.Input<List<AppendVariableActivity>>? activities;
  /// Expected value that satisfies the expression result of the 'on' property.
  final pulumi.Input<String>? value;

  /// Creates a new [SwitchCase].
  /// [activities] List of activities to execute for satisfied case condition.
  /// [value] Expected value that satisfies the expression result of the 'on' property.
  const SwitchCase({
    this.activities,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activities': ?pulumi.Input.mapOptionalInputValue<List<AppendVariableActivity>, List<Map<String, dynamic>>>(activities, (value) => pulumi.Input.encodeList<AppendVariableActivity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'value': ?value,
    };
  }

  factory SwitchCase.fromMap(Map<String, dynamic> map) {
    return SwitchCase(
      activities: (() { final guardedValue = map['activities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppendVariableActivity>(guardedValue, (value) => AppendVariableActivity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
