// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Switch cases with have a value and corresponding activities.
class SwitchCaseResponse {
  /// List of activities to execute for satisfied case condition.
  final pulumi.Input<List<dynamic>?>? activities;
  /// Expected value that satisfies the expression result of the 'on' property.
  final pulumi.Input<String?>? value;

  /// Creates a new [SwitchCaseResponse].
  /// [activities] List of activities to execute for satisfied case condition.
  /// [value] Expected value that satisfies the expression result of the 'on' property.
  const SwitchCaseResponse({
    this.activities,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activities': ?activities,
      'value': ?value,
    };
  }

  factory SwitchCaseResponse.fromMap(Map<String, dynamic> map) {
    return SwitchCaseResponse(
      activities: (() { final guardedValue = map['activities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
