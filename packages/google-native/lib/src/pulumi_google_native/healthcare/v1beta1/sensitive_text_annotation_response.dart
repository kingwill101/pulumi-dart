// ignore_for_file: unused_element, unnecessary_cast

/// A TextAnnotation specifies a text range that includes sensitive information.
class SensitiveTextAnnotationResponse {
  /// Maps from a resource slice. For example, FHIR resource field path to a set of sensitive text findings. For example, Appointment.Narrative text1 --> {findings_1, findings_2, findings_3}
  final Map<String, String> details;

  SensitiveTextAnnotationResponse({
    required this.details,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['details'] = details;
    return map;
  }

  factory SensitiveTextAnnotationResponse.fromMap(Map<String, dynamic> map) {
    return SensitiveTextAnnotationResponse(
      details: (map['details'] as Map).cast<String, String>(),
    );
  }
}
