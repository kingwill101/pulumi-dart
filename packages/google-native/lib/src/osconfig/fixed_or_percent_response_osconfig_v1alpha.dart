// ignore_for_file: unused_element, unnecessary_cast


/// Message encapsulating a value that can be either absolute ("fixed") or relative ("percent") to a value.
class FixedOrPercentResponseOsconfigV1alpha {
  /// Specifies a fixed value.
  final int fixed;
  /// Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  final int percent;

  /// Creates a new [FixedOrPercentResponseOsconfigV1alpha].
  /// [fixed] Specifies a fixed value.
  /// [percent] Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  FixedOrPercentResponseOsconfigV1alpha({
    required this.fixed,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixed': fixed,
      'percent': percent,
    };
  }

  factory FixedOrPercentResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return FixedOrPercentResponseOsconfigV1alpha(
      fixed: map['fixed'] as int,
      percent: map['percent'] as int,
    );
  }
}

