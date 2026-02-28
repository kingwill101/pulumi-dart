// ignore_for_file: unused_element, unnecessary_cast


/// Encapsulates numeric value that can be either absolute or relative.
class FixedOrPercentResponse {
  /// Absolute value of VM instances calculated based on the specific mode. - If the value is fixed, then the calculated value is equal to the fixed value. - If the value is a percent, then the calculated value is percent/100 * targetSize. For example, the calculated value of a 80% of a managed instance group with 150 instances would be (80/100 * 150) = 120 VM instances. If there is a remainder, the number is rounded.
  final int calculated;
  /// Specifies a fixed number of VM instances. This must be a positive integer.
  final int fixed;
  /// Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%.
  final int percent;

  /// Creates a new [FixedOrPercentResponse].
  /// [calculated] Absolute value of VM instances calculated based on the specific mode. - If the value is fixed, then the calculated value is equal to the fixed value. - If the value is a percent, then the calculated value is percent/100 * targetSize. For example, the calculated value of a 80% of a managed instance group with 150 instances would be (80/100 * 150) = 120 VM instances. If there is a remainder, the number is rounded.
  /// [fixed] Specifies a fixed number of VM instances. This must be a positive integer.
  /// [percent] Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%.
  FixedOrPercentResponse({
    required this.calculated,
    required this.fixed,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calculated': calculated,
      'fixed': fixed,
      'percent': percent,
    };
  }

  factory FixedOrPercentResponse.fromMap(Map<String, dynamic> map) {
    return FixedOrPercentResponse(
      calculated: map['calculated'] as int,
      fixed: map['fixed'] as int,
      percent: map['percent'] as int,
    );
  }
}

