// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilterFilterCriteriaPortRange {
  /// (Required) The beginning of the port range, inclusive.
  final pulumi.Input<int> beginInclusive;
  /// (Required) The end of the port range, inclusive.
  final pulumi.Input<int> endInclusive;

  /// Creates a new [FilterFilterCriteriaPortRange].
  /// [beginInclusive] (Required) The beginning of the port range, inclusive.
  /// [endInclusive] (Required) The end of the port range, inclusive.
  FilterFilterCriteriaPortRange({
    required this.beginInclusive,
    required this.endInclusive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beginInclusive': beginInclusive,
      'endInclusive': endInclusive,
    };
  }

  factory FilterFilterCriteriaPortRange.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaPortRange(
      beginInclusive: pulumi.Input.fromValue(map['beginInclusive'] as int),
      endInclusive: pulumi.Input.fromValue(map['endInclusive'] as int),
    );
  }
}

