// ignore_for_file: unused_element, unnecessary_cast

/// Message encapsulating a value that can be either absolute ("fixed") or relative ("percent") to a value.
class FixedOrPercentResponseOsconfigV1beta {
  /// Specifies a fixed value.
  final int fixed;

  /// Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  final int percent;

  FixedOrPercentResponseOsconfigV1beta({
    required this.fixed,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixed'] = fixed;
    map['percent'] = percent;
    return map;
  }

  factory FixedOrPercentResponseOsconfigV1beta.fromMap(
      Map<String, dynamic> map) {
    return FixedOrPercentResponseOsconfigV1beta(
      fixed: map['fixed'] as int,
      percent: map['percent'] as int,
    );
  }
}
