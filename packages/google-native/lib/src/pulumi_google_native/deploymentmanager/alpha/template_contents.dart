// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'import_file.dart';
import 'template_contents_interpreter.dart';

/// Files that make up the template contents of a template type.
class TemplateContents {
  /// Import files referenced by the main template.
  final List<ImportFile>? imports;

  /// Which interpreter (python or jinja) should be used during expansion.
  final TemplateContentsInterpreter? interpreter;

  /// The filename of the mainTemplate
  final String? mainTemplate;

  /// The contents of the template schema.
  final String? schema;

  /// The contents of the main template file.
  final String? template;

  TemplateContents({
    this.imports,
    this.interpreter,
    this.mainTemplate,
    this.schema,
    this.template,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final importsValue = imports;
    if (importsValue != null) {
      map['imports'] = Input.encodeList<ImportFile, Map<String, dynamic>>(
          importsValue, (value) => value.toMap());
    }
    final interpreterValue = interpreter;
    if (interpreterValue != null) {
      map['interpreter'] = interpreterValue.value;
    }
    final mainTemplateValue = mainTemplate;
    if (mainTemplateValue != null) {
      map['mainTemplate'] = mainTemplateValue;
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = schemaValue;
    }
    final templateValue = template;
    if (templateValue != null) {
      map['template'] = templateValue;
    }
    return map;
  }

  factory TemplateContents.fromMap(Map<String, dynamic> map) {
    return TemplateContents(
      imports: map['imports'] == null
          ? null
          : Input.decodeList<ImportFile>(
              map['imports'],
              (value) =>
                  ImportFile.fromMap((value as Map).cast<String, dynamic>())),
      interpreter: map['interpreter'] == null
          ? null
          : TemplateContentsInterpreter.fromValue(map['interpreter'] as String),
      mainTemplate:
          map['mainTemplate'] == null ? null : map['mainTemplate'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
      template: map['template'] == null ? null : map['template'] as String,
    );
  }
}
