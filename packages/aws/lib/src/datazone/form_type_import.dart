// ignore_for_file: unused_element, unnecessary_cast

class FormTypeImport {
  /// Name of the form type. Must be the name of the structure in smithy document.
  final String name;

  /// Revision of the Form Type.
  final String revision;

  /// Creates a new [FormTypeImport].
  /// [name] Name of the form type. Must be the name of the structure in smithy document.
  /// [revision] Revision of the Form Type.
  FormTypeImport({required this.name, required this.revision});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'revision': revision};
  }

  factory FormTypeImport.fromMap(Map<String, dynamic> map) {
    return FormTypeImport(
      name: map['name'] as String,
      revision: map['revision'] as String,
    );
  }
}
