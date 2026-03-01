// ignore_for_file: unused_element, unnecessary_cast

/// A TextAnnotation specifies a text range that includes sensitive information.
class SensitiveTextAnnotation {
  /// Maps from a resource slice. For example, FHIR resource field path to a set of sensitive text findings. For example, Appointment.Narrative text1 --> {findings_1, findings_2, findings_3}
  final Map<String, String>? details;

  /// Creates a new [SensitiveTextAnnotation].
  /// [details] Maps from a resource slice. For example, FHIR resource field path to a set of sensitive text findings. For example, Appointment.Narrative text1 --> {findings_1, findings_2, findings_3}
  SensitiveTextAnnotation({this.details});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'details': ?details};
  }

  factory SensitiveTextAnnotation.fromMap(Map<String, dynamic> map) {
    return SensitiveTextAnnotation(
      details: map['details'] == null
          ? null
          : (map['details'] as Map).cast<String, String>(),
    );
  }
}
