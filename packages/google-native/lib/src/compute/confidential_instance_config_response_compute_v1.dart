// ignore_for_file: unused_element, unnecessary_cast

/// A set of Confidential Instance options.
class ConfidentialInstanceConfigResponseComputeV1 {
  /// Defines whether the instance should have confidential compute enabled.
  final bool enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfigResponseComputeV1].
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  ConfidentialInstanceConfigResponseComputeV1({
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory ConfidentialInstanceConfigResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfidentialInstanceConfigResponseComputeV1(
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
