// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_health_check_templates_get_health_check_templates_args_doc}
/// Arguments for getHealthCheckTemplates.
/// {@endtemplate}
/// {@macro pulumi_alb_get_health_check_templates_get_health_check_templates_args_doc}
class GetHealthCheckTemplatesArgs {
  /// The health check template ids.
  final pulumi.Input<List<String>>? healthCheckTemplateIds;
  /// The name of the health check template.  The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String>? healthCheckTemplateName;
  /// A list of Health Check Template IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Health Check Template name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetHealthCheckTemplatesArgs].
  /// [healthCheckTemplateIds] The health check template ids.
  /// [healthCheckTemplateName] The name of the health check template.  The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  /// [ids] A list of Health Check Template IDs.
  /// [nameRegex] A regex string to filter results by Health Check Template name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetHealthCheckTemplatesArgs({
    this.healthCheckTemplateIds,
    this.healthCheckTemplateName,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckTemplateIds': ?healthCheckTemplateIds,
      'healthCheckTemplateName': ?healthCheckTemplateName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetHealthCheckTemplatesArgs.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckTemplatesArgs(
      healthCheckTemplateIds: map['healthCheckTemplateIds'] == null ? null : ((map['healthCheckTemplateIds']! as List).cast<String>()).input(),
      healthCheckTemplateName: map['healthCheckTemplateName'] == null ? null : (map['healthCheckTemplateName']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

