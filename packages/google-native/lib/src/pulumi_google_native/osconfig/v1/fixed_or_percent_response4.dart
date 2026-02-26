// ignore_for_file: unused_element, unnecessary_cast

/// Message encapsulating a value that can be either absolute ("fixed") or relative ("percent") to a value.
class FixedOrPercentResponse4 {
  /// Specifies a fixed value.
  final int fixed;

  /// Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  final int percent;

  FixedOrPercentResponse4({
    required this.fixed,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixed'] = fixed;
    map['percent'] = percent;
    return map;
  }

  factory FixedOrPercentResponse4.fromMap(Map<String, dynamic> map) {
    return FixedOrPercentResponse4(
      fixed: map['fixed'] as int,
      percent: map['percent'] as int,
    );
  }
}
