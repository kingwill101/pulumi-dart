// ignore_for_file: unused_element, unnecessary_cast


class AlertConfigurationTemplateConfiguration {
  /// Template Annotations.
  final Map<String, String>? annotations;
  /// Template Language.
  final String? lang;
  /// Template ID.
  final String? templateId;
  /// Template Variables.
  final Map<String, String>? tokens;
  final String? type;
  /// Template Version.
  final String? version;

  /// Creates a new [AlertConfigurationTemplateConfiguration].
  /// [annotations] Template Annotations.
  /// [lang] Template Language.
  /// [templateId] Template ID.
  /// [tokens] Template Variables.
  /// [type] Optional.
  /// [version] Template Version.
  AlertConfigurationTemplateConfiguration({
    this.annotations,
    this.lang,
    this.templateId,
    this.tokens,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'lang': ?lang,
      'templateId': ?templateId,
      'tokens': ?tokens,
      'type': ?type,
      'version': ?version,
    };
  }

  factory AlertConfigurationTemplateConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationTemplateConfiguration(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      lang: map['lang'] == null ? null : map['lang'] as String,
      templateId: map['templateId'] == null ? null : map['templateId'] as String,
      tokens: map['tokens'] == null ? null : (map['tokens'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

