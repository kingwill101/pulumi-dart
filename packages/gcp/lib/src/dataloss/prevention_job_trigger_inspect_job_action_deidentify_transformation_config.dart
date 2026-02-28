// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig {
  /// If this template is specified, it will serve as the default de-identify template.
  final String? deidentifyTemplate;

  /// If this template is specified, it will serve as the de-identify template for images.
  final String? imageRedactTemplate;

  /// If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables.
  final String? structuredDeidentifyTemplate;

  /// Creates a new [PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig].
  /// [deidentifyTemplate] If this template is specified, it will serve as the default de-identify template.
  /// [imageRedactTemplate] If this template is specified, it will serve as the de-identify template for images.
  /// [structuredDeidentifyTemplate] If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables.
  PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig({
    this.deidentifyTemplate,
    this.imageRedactTemplate,
    this.structuredDeidentifyTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deidentifyTemplateValue = deidentifyTemplate;
    if (deidentifyTemplateValue != null) {
      map['deidentifyTemplate'] = deidentifyTemplateValue;
    }
    final imageRedactTemplateValue = imageRedactTemplate;
    if (imageRedactTemplateValue != null) {
      map['imageRedactTemplate'] = imageRedactTemplateValue;
    }
    final structuredDeidentifyTemplateValue = structuredDeidentifyTemplate;
    if (structuredDeidentifyTemplateValue != null) {
      map['structuredDeidentifyTemplate'] = structuredDeidentifyTemplateValue;
    }
    return map;
  }

  factory PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig(
      deidentifyTemplate: map['deidentifyTemplate'] == null
          ? null
          : map['deidentifyTemplate'] as String,
      imageRedactTemplate: map['imageRedactTemplate'] == null
          ? null
          : map['imageRedactTemplate'] as String,
      structuredDeidentifyTemplate: map['structuredDeidentifyTemplate'] == null
          ? null
          : map['structuredDeidentifyTemplate'] as String,
    );
  }
}
