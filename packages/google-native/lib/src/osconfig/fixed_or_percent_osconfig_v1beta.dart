// ignore_for_file: unused_element, unnecessary_cast

/// Message encapsulating a value that can be either absolute ("fixed") or relative ("percent") to a value.
class FixedOrPercentOsconfigV1beta {
  /// Specifies a fixed value.
  final int? fixed;

  /// Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  final int? percent;

  /// Creates a new [FixedOrPercentOsconfigV1beta].
  /// [fixed] Specifies a fixed value.
  /// [percent] Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  FixedOrPercentOsconfigV1beta({
    this.fixed,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedValue = fixed;
    if (fixedValue != null) {
      map['fixed'] = fixedValue;
    }
    final percentValue = percent;
    if (percentValue != null) {
      map['percent'] = percentValue;
    }
    return map;
  }

  factory FixedOrPercentOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return FixedOrPercentOsconfigV1beta(
      fixed: map['fixed'] == null ? null : map['fixed'] as int,
      percent: map['percent'] == null ? null : map['percent'] as int,
    );
  }
}
