// ignore_for_file: unused_element, unnecessary_cast

/// A set of Confidential Instance options.
class ConfidentialInstanceConfigResponseComputeBeta {
  /// Defines the type of technology used by the confidential instance.
  final String confidentialInstanceType;

  /// Defines whether the instance should have confidential compute enabled.
  final bool enableConfidentialCompute;

  ConfidentialInstanceConfigResponseComputeBeta({
    required this.confidentialInstanceType,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidentialInstanceType'] = confidentialInstanceType;
    map['enableConfidentialCompute'] = enableConfidentialCompute;
    return map;
  }

  factory ConfidentialInstanceConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ConfidentialInstanceConfigResponseComputeBeta(
      confidentialInstanceType: map['confidentialInstanceType'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
