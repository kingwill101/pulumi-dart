// ignore_for_file: unused_element, unnecessary_cast

/// Message encapsulating a value that can be either absolute ("fixed") or relative ("percent") to a value.
class FixedOrPercentOsconfigV1 {
  /// Specifies a fixed value.
  final int? fixed;

  /// Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  final int? percent;

  FixedOrPercentOsconfigV1({
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

  factory FixedOrPercentOsconfigV1.fromMap(Map<String, dynamic> map) {
    return FixedOrPercentOsconfigV1(
      fixed: map['fixed'] == null ? null : map['fixed'] as int,
      percent: map['percent'] == null ? null : map['percent'] as int,
    );
  }
}
