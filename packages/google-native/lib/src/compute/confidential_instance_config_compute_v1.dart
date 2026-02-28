// ignore_for_file: unused_element, unnecessary_cast

/// A set of Confidential Instance options.
class ConfidentialInstanceConfigComputeV1 {
  /// Defines whether the instance should have confidential compute enabled.
  final bool? enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfigComputeV1].
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  ConfidentialInstanceConfigComputeV1({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableConfidentialComputeValue = enableConfidentialCompute;
    if (enableConfidentialComputeValue != null) {
      map['enableConfidentialCompute'] = enableConfidentialComputeValue;
    }
    return map;
  }

  factory ConfidentialInstanceConfigComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ConfidentialInstanceConfigComputeV1(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
    );
  }
}
