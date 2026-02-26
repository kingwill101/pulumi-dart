// ignore_for_file: unused_element, unnecessary_cast

/// A set of Compute Engine Confidential VM instance options.
class GceConfidentialInstanceConfigResponse2 {
  /// Optional. Whether the instance has confidential compute enabled.
  final bool enableConfidentialCompute;

  GceConfidentialInstanceConfigResponse2({
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableConfidentialCompute'] = enableConfidentialCompute;
    return map;
  }

  factory GceConfidentialInstanceConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return GceConfidentialInstanceConfigResponse2(
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
