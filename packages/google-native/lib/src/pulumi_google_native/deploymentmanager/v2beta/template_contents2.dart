// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'import_file3.dart';
import 'template_contents_interpreter2.dart';

/// Files that make up the template contents of a template type.
class TemplateContents2 {
  /// Import files referenced by the main template.
  final List<ImportFile3>? imports;

  /// Which interpreter (python or jinja) should be used during expansion.
  final TemplateContentsInterpreter2? interpreter;

  /// The filename of the mainTemplate
  final String? mainTemplate;

  /// The contents of the template schema.
  final String? schema;

  /// The contents of the main template file.
  final String? template;

  TemplateContents2({
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
      map['imports'] = Input.encodeList<ImportFile3, Map<String, dynamic>>(
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

  factory TemplateContents2.fromMap(Map<String, dynamic> map) {
    return TemplateContents2(
      imports: map['imports'] == null
          ? null
          : Input.decodeList<ImportFile3>(
              map['imports'],
              (value) =>
                  ImportFile3.fromMap((value as Map).cast<String, dynamic>())),
      interpreter: map['interpreter'] == null
          ? null
          : TemplateContentsInterpreter2.fromValue(
              map['interpreter'] as String),
      mainTemplate:
          map['mainTemplate'] == null ? null : map['mainTemplate'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
      template: map['template'] == null ? null : map['template'] as String,
    );
  }
}
