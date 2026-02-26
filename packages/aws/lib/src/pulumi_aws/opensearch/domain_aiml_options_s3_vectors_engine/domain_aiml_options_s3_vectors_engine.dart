// ignore_for_file: unused_element, unnecessary_cast

class DomainAimlOptionsS3VectorsEngine {
  /// Enables S3 vectors engine features.
  final bool? enabled;

  DomainAimlOptionsS3VectorsEngine({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory DomainAimlOptionsS3VectorsEngine.fromMap(Map<String, dynamic> map) {
    return DomainAimlOptionsS3VectorsEngine(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
