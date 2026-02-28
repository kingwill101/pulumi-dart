// ignore_for_file: unused_element, unnecessary_cast


/// A set of Compute Engine Confidential VM instance options.
class GceConfidentialInstanceConfigResponseWorkstationsV1beta {
  /// Optional. Whether the instance has confidential compute enabled.
  final bool enableConfidentialCompute;

  /// Creates a new [GceConfidentialInstanceConfigResponseWorkstationsV1beta].
  /// [enableConfidentialCompute] Optional. Whether the instance has confidential compute enabled.
  GceConfidentialInstanceConfigResponseWorkstationsV1beta({
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory GceConfidentialInstanceConfigResponseWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return GceConfidentialInstanceConfigResponseWorkstationsV1beta(
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}

