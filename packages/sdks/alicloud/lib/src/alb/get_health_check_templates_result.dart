// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_health_check_templates_template.dart';

/// Result data returned by getHealthCheckTemplates.
class GetHealthCheckTemplatesResult {
  final List<String>? healthCheckTemplateIds;
  final String? healthCheckTemplateName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetHealthCheckTemplatesTemplate> templates;

  /// Creates a new [GetHealthCheckTemplatesResult].
  /// [healthCheckTemplateIds] Optional.
  /// [healthCheckTemplateName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [templates] Required.
  GetHealthCheckTemplatesResult({
    this.healthCheckTemplateIds,
    this.healthCheckTemplateName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckTemplateIds': ?healthCheckTemplateIds,
      'healthCheckTemplateName': ?healthCheckTemplateName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'templates': pulumi.Input.encodeList<GetHealthCheckTemplatesTemplate, Map<String, dynamic>>(templates, (value) => value.toMap()),
    };
  }

  factory GetHealthCheckTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckTemplatesResult(
      healthCheckTemplateIds: map['healthCheckTemplateIds'] == null ? null : (map['healthCheckTemplateIds']! as List).cast<String>(),
      healthCheckTemplateName: map['healthCheckTemplateName'] == null ? null : map['healthCheckTemplateName']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      templates: pulumi.Input.decodeList<GetHealthCheckTemplatesTemplate>(map['templates'], (value) => GetHealthCheckTemplatesTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

