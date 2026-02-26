// ignore_for_file: unused_element, unnecessary_cast

/// Message encapsulating a value that can be either absolute ("fixed") or relative ("percent") to a value.
class FixedOrPercentResponse5 {
  /// Specifies a fixed value.
  final int fixed;

  /// Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  final int percent;

  FixedOrPercentResponse5({
    required this.fixed,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixed'] = fixed;
    map['percent'] = percent;
    return map;
  }

  factory FixedOrPercentResponse5.fromMap(Map<String, dynamic> map) {
    return FixedOrPercentResponse5(
      fixed: map['fixed'] as int,
      percent: map['percent'] as int,
    );
  }
}
