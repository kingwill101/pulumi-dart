// ignore_for_file: unused_element, unnecessary_cast

/// User specified templates and configs for how to deidentify structured, unstructures, and image files. User must provide either a unstructured deidentify template or at least one redact image config.
class GooglePrivacyDlpV2TransformationConfig {
  /// De-identify template. If this template is specified, it will serve as the default de-identify template. This template cannot contain `record_transformations` since it can be used for unstructured content such as free-form text files. If this template is not set, a default `ReplaceWithInfoTypeConfig` will be used to de-identify unstructured content.
  final String? deidentifyTemplate;

  /// Image redact template. If this template is specified, it will serve as the de-identify template for images. If this template is not set, all findings in the image will be redacted with a black box.
  final String? imageRedactTemplate;

  /// Structured de-identify template. If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables. If this template is not set but the `deidentify_template` is set, then `deidentify_template` will also apply to the structured content. If neither template is set, a default `ReplaceWithInfoTypeConfig` will be used to de-identify structured content.
  final String? structuredDeidentifyTemplate;

  GooglePrivacyDlpV2TransformationConfig({
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

  factory GooglePrivacyDlpV2TransformationConfig.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TransformationConfig(
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
