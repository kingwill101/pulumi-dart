// ignore_for_file: unused_element, unnecessary_cast


/// The canary region configuration.
class CustomRolloutSpecificationCanaryResponse {
  final List<String>? regions;

  /// Creates a new [CustomRolloutSpecificationCanaryResponse].
  /// [regions] Optional.
  CustomRolloutSpecificationCanaryResponse({
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
    };
  }

  factory CustomRolloutSpecificationCanaryResponse.fromMap(Map<String, dynamic> map) {
    return CustomRolloutSpecificationCanaryResponse(
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
    );
  }
}

