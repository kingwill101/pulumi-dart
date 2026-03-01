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
    pulumi.Output<List<String>>? healthCheckTemplateIds,
    pulumi.Output<String>? healthCheckTemplateName,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      healthCheckTemplateIds = pulumi.Input.asOptionalInput<List<String>>(healthCheckTemplateIds),
      healthCheckTemplateName = pulumi.Input.asOptionalInput<String>(healthCheckTemplateName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      healthCheckTemplateIds: map['healthCheckTemplateIds'] == null ? null : pulumi.Output.create<List<String>>((map['healthCheckTemplateIds'] as List).cast<String>()),
      healthCheckTemplateName: map['healthCheckTemplateName'] == null ? null : pulumi.Output.create<String>(map['healthCheckTemplateName'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

