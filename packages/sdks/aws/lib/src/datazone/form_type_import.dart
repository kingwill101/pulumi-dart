// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FormTypeImport {
  /// Name of the form type. Must be the name of the structure in smithy document.
  final pulumi.Input<String> name;
  /// Revision of the Form Type.
  final pulumi.Input<String> revision;

  /// Creates a new [FormTypeImport].
  /// [name] Name of the form type. Must be the name of the structure in smithy document.
  /// [revision] Revision of the Form Type.
  const FormTypeImport({
    required this.name,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'revision': revision,
    };
  }

  factory FormTypeImport.fromMap(Map<String, dynamic> map) {
    return FormTypeImport(
      name: pulumi.Input.fromValue(map['name'] as String),
      revision: pulumi.Input.fromValue(map['revision'] as String),
    );
  }
}
