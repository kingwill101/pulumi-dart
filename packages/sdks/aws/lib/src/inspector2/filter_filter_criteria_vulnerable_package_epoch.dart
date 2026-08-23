// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilterFilterCriteriaVulnerablePackageEpoch {
  /// (Optional) Lower bound of the range, inclusive.
  final pulumi.Input<double> lowerInclusive;
  /// (Optional) Upper bound of the range, inclusive.
  final pulumi.Input<double> upperInclusive;

  /// Creates a new [FilterFilterCriteriaVulnerablePackageEpoch].
  /// [lowerInclusive] (Optional) Lower bound of the range, inclusive.
  /// [upperInclusive] (Optional) Upper bound of the range, inclusive.
  const FilterFilterCriteriaVulnerablePackageEpoch({
    required this.lowerInclusive,
    required this.upperInclusive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lowerInclusive': lowerInclusive,
      'upperInclusive': upperInclusive,
    };
  }

  factory FilterFilterCriteriaVulnerablePackageEpoch.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaVulnerablePackageEpoch(
      lowerInclusive: pulumi.Input.fromValue(map['lowerInclusive'] as double),
      upperInclusive: pulumi.Input.fromValue(map['upperInclusive'] as double),
    );
  }
}
