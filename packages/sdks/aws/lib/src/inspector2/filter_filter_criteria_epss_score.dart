// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilterFilterCriteriaEpssScore {
  /// (Optional) Lower bound of the range, inclusive.
  final pulumi.Input<double> lowerInclusive;
  /// (Optional) Upper bound of the range, inclusive.
  final pulumi.Input<double> upperInclusive;

  /// Creates a new [FilterFilterCriteriaEpssScore].
  /// [lowerInclusive] (Optional) Lower bound of the range, inclusive.
  /// [upperInclusive] (Optional) Upper bound of the range, inclusive.
  const FilterFilterCriteriaEpssScore({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lowerInclusive': lowerInclusive,
      'upperInclusive': upperInclusive,
    };
  }

  factory FilterFilterCriteriaEpssScore.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaEpssScore(
      lowerInclusive: pulumi.Input.fromValue((map['lowerInclusive'] as num).toDouble()),
      upperInclusive: pulumi.Input.fromValue((map['upperInclusive'] as num).toDouble()),
    );
  }
}
