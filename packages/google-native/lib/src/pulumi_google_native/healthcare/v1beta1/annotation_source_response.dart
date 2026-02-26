// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_healthcare_source_response.dart';

/// AnnotationSource holds the source information of the annotation.
class AnnotationSourceResponse {
  /// Cloud Healthcare API resource.
  final CloudHealthcareSourceResponse cloudHealthcareSource;

  AnnotationSourceResponse({
    required this.cloudHealthcareSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudHealthcareSource'] = cloudHealthcareSource.toMap();
    return map;
  }

  factory AnnotationSourceResponse.fromMap(Map<String, dynamic> map) {
    return AnnotationSourceResponse(
      cloudHealthcareSource: CloudHealthcareSourceResponse.fromMap(
          (map['cloudHealthcareSource'] as Map).cast<String, dynamic>()),
    );
  }
}
