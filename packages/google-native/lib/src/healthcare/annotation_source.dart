// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_healthcare_source.dart';

/// AnnotationSource holds the source information of the annotation.
class AnnotationSource {
  /// Cloud Healthcare API resource.
  final CloudHealthcareSource? cloudHealthcareSource;

  /// Creates a new [AnnotationSource].
  /// [cloudHealthcareSource] Cloud Healthcare API resource.
  AnnotationSource({
    this.cloudHealthcareSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudHealthcareSourceValue = cloudHealthcareSource;
    if (cloudHealthcareSourceValue != null) {
      map['cloudHealthcareSource'] = cloudHealthcareSourceValue.toMap();
    }
    return map;
  }

  factory AnnotationSource.fromMap(Map<String, dynamic> map) {
    return AnnotationSource(
      cloudHealthcareSource: map['cloudHealthcareSource'] == null
          ? null
          : CloudHealthcareSource.fromMap(
              (map['cloudHealthcareSource'] as Map).cast<String, dynamic>()),
    );
  }
}
