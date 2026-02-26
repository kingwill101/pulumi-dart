// ignore_for_file: unused_element, unnecessary_cast

class FormTypeImport {
  /// Name of the form type. Must be the name of the structure in smithy document.
  final String name;

  /// Revision of the Form Type.
  final String revision;

  FormTypeImport({
    required this.name,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['revision'] = revision;
    return map;
  }

  factory FormTypeImport.fromMap(Map<String, dynamic> map) {
    return FormTypeImport(
      name: map['name'] as String,
      revision: map['revision'] as String,
    );
  }
}
