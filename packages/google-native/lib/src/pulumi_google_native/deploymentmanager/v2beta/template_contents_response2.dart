// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'import_file_response3.dart';

/// Files that make up the template contents of a template type.
class TemplateContentsResponse2 {
  /// Import files referenced by the main template.
  final List<ImportFileResponse3> imports;

  /// Which interpreter (python or jinja) should be used during expansion.
  final String interpreter;

  /// The filename of the mainTemplate
  final String mainTemplate;

  /// The contents of the template schema.
  final String schema;

  /// The contents of the main template file.
  final String template;

  TemplateContentsResponse2({
    required this.imports,
    required this.interpreter,
    required this.mainTemplate,
    required this.schema,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imports'] =
        Input.encodeList<ImportFileResponse3, Map<String, dynamic>>(
            imports, (value) => value.toMap());
    map['interpreter'] = interpreter;
    map['mainTemplate'] = mainTemplate;
    map['schema'] = schema;
    map['template'] = template;
    return map;
  }

  factory TemplateContentsResponse2.fromMap(Map<String, dynamic> map) {
    return TemplateContentsResponse2(
      imports: Input.decodeList<ImportFileResponse3>(
          map['imports'],
          (value) => ImportFileResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      interpreter: map['interpreter'] as String,
      mainTemplate: map['mainTemplate'] as String,
      schema: map['schema'] as String,
      template: map['template'] as String,
    );
  }
}
