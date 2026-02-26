// ignore_for_file: unused_element, unnecessary_cast

/// Resource level annotation.
class ResourceAnnotationResponse {
  /// A description of the annotation record.
  final String label;

  ResourceAnnotationResponse({
    required this.label,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['label'] = label;
    return map;
  }

  factory ResourceAnnotationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceAnnotationResponse(
      label: map['label'] as String,
    );
  }
}
