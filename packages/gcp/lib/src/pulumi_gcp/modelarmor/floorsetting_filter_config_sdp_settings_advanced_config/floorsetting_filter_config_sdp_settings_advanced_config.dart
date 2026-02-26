// ignore_for_file: unused_element, unnecessary_cast

class FloorsettingFilterConfigSdpSettingsAdvancedConfig {
  /// Optional Sensitive Data Protection Deidentify template resource name.
  /// If provided then DeidentifyContent action is performed during Sanitization
  /// using this template and inspect template. The De-identified data will
  /// be returned in SdpDeidentifyResult.
  /// Note that all info-types present in the deidentify template must be present
  /// in inspect template.
  /// e.g.
  /// `projects/{project}/locations/{location}/deidentifyTemplates/{deidentify_template}`
  final String? deidentifyTemplate;

  /// Sensitive Data Protection inspect template resource name
  /// If only inspect template is provided (de-identify template not provided),
  /// then Sensitive Data Protection InspectContent action is performed during
  /// Sanitization. All Sensitive Data Protection findings identified during
  /// inspection will be returned as SdpFinding in SdpInsepctionResult.
  /// e.g:-
  /// `projects/{project}/locations/{location}/inspectTemplates/{inspect_template}`
  final String? inspectTemplate;

  FloorsettingFilterConfigSdpSettingsAdvancedConfig({
    this.deidentifyTemplate,
    this.inspectTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deidentifyTemplateValue = deidentifyTemplate;
    if (deidentifyTemplateValue != null) {
      map['deidentifyTemplate'] = deidentifyTemplateValue;
    }
    final inspectTemplateValue = inspectTemplate;
    if (inspectTemplateValue != null) {
      map['inspectTemplate'] = inspectTemplateValue;
    }
    return map;
  }

  factory FloorsettingFilterConfigSdpSettingsAdvancedConfig.fromMap(
      Map<String, dynamic> map) {
    return FloorsettingFilterConfigSdpSettingsAdvancedConfig(
      deidentifyTemplate: map['deidentifyTemplate'] == null
          ? null
          : map['deidentifyTemplate'] as String,
      inspectTemplate: map['inspectTemplate'] == null
          ? null
          : map['inspectTemplate'] as String,
    );
  }
}
