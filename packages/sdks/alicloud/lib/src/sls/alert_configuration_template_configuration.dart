// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationTemplateConfiguration {
  /// Template Annotations.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Template Language.
  final pulumi.Input<String>? lang;
  /// Template ID.
  final pulumi.Input<String>? templateId;
  /// Template Variables.
  final pulumi.Input<Map<String, String>>? tokens;
  final pulumi.Input<String>? type;
  /// Template Version.
  final pulumi.Input<String>? version;

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
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
      templateId: map['templateId'] == null ? null : (map['templateId'] as String).input(),
      tokens: map['tokens'] == null ? null : ((map['tokens'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

