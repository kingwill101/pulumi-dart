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
  const AlertConfigurationTemplateConfiguration({
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokens: (() { final guardedValue = map['tokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

