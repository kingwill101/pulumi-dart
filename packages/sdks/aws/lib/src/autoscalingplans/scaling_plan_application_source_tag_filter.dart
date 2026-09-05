// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingPlanApplicationSourceTagFilter {
  /// Tag key.
  final pulumi.Input<String> key;
  /// Tag values.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [ScalingPlanApplicationSourceTagFilter].
  /// [key] Tag key.
  /// [values] Tag values.
  const ScalingPlanApplicationSourceTagFilter({
    required this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': ?values,
    };
  }

  factory ScalingPlanApplicationSourceTagFilter.fromMap(Map<String, dynamic> map) {
    return ScalingPlanApplicationSourceTagFilter(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
