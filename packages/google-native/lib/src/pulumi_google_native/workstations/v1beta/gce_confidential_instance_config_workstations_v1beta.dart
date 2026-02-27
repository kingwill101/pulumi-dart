// ignore_for_file: unused_element, unnecessary_cast

/// A set of Compute Engine Confidential VM instance options.
class GceConfidentialInstanceConfigWorkstationsV1beta {
  /// Optional. Whether the instance has confidential compute enabled.
  final bool? enableConfidentialCompute;

  GceConfidentialInstanceConfigWorkstationsV1beta({
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

  factory GceConfidentialInstanceConfigWorkstationsV1beta.fromMap(
      Map<String, dynamic> map) {
    return GceConfidentialInstanceConfigWorkstationsV1beta(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
    );
  }
}
