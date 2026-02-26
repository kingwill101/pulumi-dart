// ignore_for_file: unused_element, unnecessary_cast

/// A set of Compute Engine Confidential VM instance options.
class GceConfidentialInstanceConfig2 {
  /// Optional. Whether the instance has confidential compute enabled.
  final bool? enableConfidentialCompute;

  GceConfidentialInstanceConfig2({
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

  factory GceConfidentialInstanceConfig2.fromMap(Map<String, dynamic> map) {
    return GceConfidentialInstanceConfig2(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
    );
  }
}
