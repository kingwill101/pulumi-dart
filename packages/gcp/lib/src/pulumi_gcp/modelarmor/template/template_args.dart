// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../template_filter_config/template_filter_config.dart';
import '../template_template_metadata/template_template_metadata.dart';

/// The set of arguments for Template.
class TemplateArgs {
  /// Filters configuration.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfig> filterConfig;

  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// template_id from the method_signature of Create RPC
  final pulumi.Input<String> templateId;

  /// Message describing TemplateMetadata
  /// Structure is documented below.
  final pulumi.Input<TemplateTemplateMetadata>? templateMetadata;

  TemplateArgs({
    required this.filterConfig,
    this.labels,
    required this.location,
    this.project,
    required this.templateId,
    this.templateMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filterConfig'] =
        pulumi.Input.mapInputValue<TemplateFilterConfig, Map<String, dynamic>>(
            filterConfig, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['templateId'] = templateId;
    final templateMetadataValue = templateMetadata;
    if (templateMetadataValue != null) {
      map['templateMetadata'] = pulumi.Input.mapOptionalInputValue<
              TemplateTemplateMetadata, Map<String, dynamic>>(
          templateMetadataValue, (value) => value.toMap());
    }
    return map;
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      filterConfig:
          pulumi.Input.asInput<TemplateFilterConfig>(map['filterConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      templateId: pulumi.Input.asInput<String>(map['templateId']),
      templateMetadata: pulumi.Input.asOptionalInput<TemplateTemplateMetadata>(
          map['templateMetadata']),
    );
  }
}
