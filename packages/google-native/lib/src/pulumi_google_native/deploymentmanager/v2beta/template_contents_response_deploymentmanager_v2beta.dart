// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_file_response_deploymentmanager_v2beta.dart';

/// Files that make up the template contents of a template type.
class TemplateContentsResponseDeploymentmanagerV2beta {
  /// Import files referenced by the main template.
  final List<ImportFileResponseDeploymentmanagerV2beta> imports;

  /// Which interpreter (python or jinja) should be used during expansion.
  final String interpreter;

  /// The filename of the mainTemplate
  final String mainTemplate;

  /// The contents of the template schema.
  final String schema;

  /// The contents of the main template file.
  final String template;

  TemplateContentsResponseDeploymentmanagerV2beta({
    required this.imports,
    required this.interpreter,
    required this.mainTemplate,
    required this.schema,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imports'] = pulumi.Input.encodeList<
        ImportFileResponseDeploymentmanagerV2beta,
        Map<String, dynamic>>(imports, (value) => value.toMap());
    map['interpreter'] = interpreter;
    map['mainTemplate'] = mainTemplate;
    map['schema'] = schema;
    map['template'] = template;
    return map;
  }

  factory TemplateContentsResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return TemplateContentsResponseDeploymentmanagerV2beta(
      imports:
          pulumi.Input.decodeList<ImportFileResponseDeploymentmanagerV2beta>(
              map['imports'],
              (value) => ImportFileResponseDeploymentmanagerV2beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      interpreter: map['interpreter'] as String,
      mainTemplate: map['mainTemplate'] as String,
      schema: map['schema'] as String,
      template: map['template'] as String,
    );
  }
}
