// ignore_for_file: unused_element, unnecessary_cast

/// A set of Confidential Instance options.
class ConfidentialInstanceConfigResponse2 {
  /// Defines the type of technology used by the confidential instance.
  final String confidentialInstanceType;

  /// Defines whether the instance should have confidential compute enabled.
  final bool enableConfidentialCompute;

  ConfidentialInstanceConfigResponse2({
    required this.confidentialInstanceType,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidentialInstanceType'] = confidentialInstanceType;
    map['enableConfidentialCompute'] = enableConfidentialCompute;
    return map;
  }

  factory ConfidentialInstanceConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return ConfidentialInstanceConfigResponse2(
      confidentialInstanceType: map['confidentialInstanceType'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
