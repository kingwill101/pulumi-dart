// ignore_for_file: unused_element, unnecessary_cast


/// DTO object representing specification
class FeaturesetSpecificationResponse {
  /// Specifies the spec path
  final String? path;

  /// Creates a new [FeaturesetSpecificationResponse].
  /// [path] Specifies the spec path
  FeaturesetSpecificationResponse({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory FeaturesetSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return FeaturesetSpecificationResponse(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

