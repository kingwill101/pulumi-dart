// ignore_for_file: unused_element, unnecessary_cast

/// A set of Confidential Instance options.
class ConfidentialInstanceConfigResponse {
  /// Defines the type of technology used by the confidential instance.
  final String confidentialInstanceType;

  /// Defines whether the instance should have confidential compute enabled.
  final bool enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfigResponse].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential instance.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  ConfidentialInstanceConfigResponse({
    required this.confidentialInstanceType,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': confidentialInstanceType,
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory ConfidentialInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfigResponse(
      confidentialInstanceType: map['confidentialInstanceType'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
