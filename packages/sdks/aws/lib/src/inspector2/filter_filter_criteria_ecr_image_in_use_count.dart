// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilterFilterCriteriaEcrImageInUseCount {
  /// (Optional) Lower bound of the range, inclusive.
  final pulumi.Input<double> lowerInclusive;
  /// (Optional) Upper bound of the range, inclusive.
  final pulumi.Input<double> upperInclusive;

  /// Creates a new [FilterFilterCriteriaEcrImageInUseCount].
  /// [lowerInclusive] (Optional) Lower bound of the range, inclusive.
  /// [upperInclusive] (Optional) Upper bound of the range, inclusive.
  FilterFilterCriteriaEcrImageInUseCount({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lowerInclusive': lowerInclusive,
      'upperInclusive': upperInclusive,
    };
  }

  factory FilterFilterCriteriaEcrImageInUseCount.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaEcrImageInUseCount(
      lowerInclusive: (map['lowerInclusive'] as double).input(),
      upperInclusive: (map['upperInclusive'] as double).input(),
    );
  }
}

