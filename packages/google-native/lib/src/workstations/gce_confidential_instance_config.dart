// ignore_for_file: unused_element, unnecessary_cast


/// A set of Compute Engine Confidential VM instance options.
class GceConfidentialInstanceConfig {
  /// Optional. Whether the instance has confidential compute enabled.
  final bool? enableConfidentialCompute;

  /// Creates a new [GceConfidentialInstanceConfig].
  /// [enableConfidentialCompute] Optional. Whether the instance has confidential compute enabled.
  GceConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory GceConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GceConfidentialInstanceConfig(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : map['enableConfidentialCompute'] as bool,
    );
  }
}

