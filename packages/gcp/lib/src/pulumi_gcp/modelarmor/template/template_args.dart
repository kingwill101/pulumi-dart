// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../template_filter_config/template_filter_config.dart';
import '../template_template_metadata/template_template_metadata.dart';

/// The set of arguments for Template.
class TemplateArgs {
  /// Filters configuration.
  /// Structure is documented below.
  final Input<TemplateFilterConfig> filterConfig;

  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Id of the requesting object
  /// If auto-generating Id server-side, remove this field and<span pulumi-lang-nodejs="
  /// templateId " pulumi-lang-dotnet="
  /// TemplateId " pulumi-lang-go="
  /// templateId " pulumi-lang-python="
  /// template_id " pulumi-lang-yaml="
  /// templateId " pulumi-lang-java="
  /// templateId ">
  /// template_id </span>from the<span pulumi-lang-nodejs=" methodSignature " pulumi-lang-dotnet=" MethodSignature " pulumi-lang-go=" methodSignature " pulumi-lang-python=" method_signature " pulumi-lang-yaml=" methodSignature " pulumi-lang-java=" methodSignature "> method_signature </span>of Create RPC
  final Input<String> templateId;

  /// Message describing TemplateMetadata
  /// Structure is documented below.
  final Input<TemplateTemplateMetadata>? templateMetadata;

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
        Input.mapInputValue<TemplateFilterConfig, Map<String, dynamic>>(
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
      map['templateMetadata'] = Input.mapOptionalInputValue<
              TemplateTemplateMetadata, Map<String, dynamic>>(
          templateMetadataValue, (value) => value.toMap());
    }
    return map;
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      filterConfig: Input.asInput<TemplateFilterConfig>(map['filterConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      templateId: Input.asInput<String>(map['templateId']),
      templateMetadata: Input.asOptionalInput<TemplateTemplateMetadata>(
          map['templateMetadata']),
    );
  }
}
