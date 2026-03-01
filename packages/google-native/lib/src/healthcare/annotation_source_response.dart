// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_healthcare_source_response.dart';

/// AnnotationSource holds the source information of the annotation.
class AnnotationSourceResponse {
  /// Cloud Healthcare API resource.
  final CloudHealthcareSourceResponse cloudHealthcareSource;

  /// Creates a new [AnnotationSourceResponse].
  /// [cloudHealthcareSource] Cloud Healthcare API resource.
  AnnotationSourceResponse({required this.cloudHealthcareSource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudHealthcareSource': cloudHealthcareSource.toMap(),
    };
  }

  factory AnnotationSourceResponse.fromMap(Map<String, dynamic> map) {
    return AnnotationSourceResponse(
      cloudHealthcareSource: CloudHealthcareSourceResponse.fromMap(
        (map['cloudHealthcareSource'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
