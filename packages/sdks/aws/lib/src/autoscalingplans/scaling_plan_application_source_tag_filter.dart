// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingPlanApplicationSourceTagFilter {
  /// Tag key.
  final pulumi.Input<String> key;
  /// Tag values.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ScalingPlanApplicationSourceTagFilter].
  /// [key] Tag key.
  /// [values] Tag values.
  ScalingPlanApplicationSourceTagFilter({
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
      key: (map['key'] as String).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

