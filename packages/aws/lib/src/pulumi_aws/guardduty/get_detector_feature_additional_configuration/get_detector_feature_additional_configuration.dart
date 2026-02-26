// ignore_for_file: unused_element, unnecessary_cast

class GetDetectorFeatureAdditionalConfiguration {
  /// The name of the detector feature.
  final String name;

  /// Current status of the detector.
  final String status;

  GetDetectorFeatureAdditionalConfiguration({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['status'] = status;
    return map;
  }

  factory GetDetectorFeatureAdditionalConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDetectorFeatureAdditionalConfiguration(
      name: map['name'] as String,
      status: map['status'] as String,
    );
  }
}
