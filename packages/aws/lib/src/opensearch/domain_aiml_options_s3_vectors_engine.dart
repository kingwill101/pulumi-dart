// ignore_for_file: unused_element, unnecessary_cast

class DomainAimlOptionsS3VectorsEngine {
  /// Enables S3 vectors engine features.
  final bool? enabled;

  /// Creates a new [DomainAimlOptionsS3VectorsEngine].
  /// [enabled] Enables S3 vectors engine features.
  DomainAimlOptionsS3VectorsEngine({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory DomainAimlOptionsS3VectorsEngine.fromMap(Map<String, dynamic> map) {
    return DomainAimlOptionsS3VectorsEngine(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
