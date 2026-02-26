// ignore_for_file: unused_element, unnecessary_cast

/// Resource level annotation.
class ResourceAnnotation {
  /// A description of the annotation record.
  final String? label;

  ResourceAnnotation({
    this.label,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    return map;
  }

  factory ResourceAnnotation.fromMap(Map<String, dynamic> map) {
    return ResourceAnnotation(
      label: map['label'] == null ? null : map['label'] as String,
    );
  }
}
