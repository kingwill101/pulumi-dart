// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigDateTimeConverter {
  /// Specifies the locale of the source field. Defaults to `locale.ROOT`.
  final pulumi.Input<String>? locale;
  /// Specifies the list of patterns to match against the `source` field.
  final pulumi.Input<List<String>> matchPatterns;
  /// Specifies the key to apply the date conversion to.
  final pulumi.Input<String> source;
  /// Specifies the time zone of the source field. Defaults to `UTC`.
  final pulumi.Input<String>? sourceTimezone;
  /// Specifies the JSON field to store the result in.
  final pulumi.Input<String> target;
  /// Specifies the datetime format to use for the converted data in the target field. Defaults to `yyyy-MM-dd'T'HH:mm:ss.SSS'Z`.
  final pulumi.Input<String>? targetFormat;
  /// Specifies the time zone of the target field. Defaults to `UTC`.
  final pulumi.Input<String>? targetTimezone;

  /// Creates a new [LogTransformerTransformerConfigDateTimeConverter].
  /// [locale] Specifies the locale of the source field. Defaults to `locale.ROOT`.
  /// [matchPatterns] Specifies the list of patterns to match against the `source` field.
  /// [source] Specifies the key to apply the date conversion to.
  /// [sourceTimezone] Specifies the time zone of the source field. Defaults to `UTC`.
  /// [target] Specifies the JSON field to store the result in.
  /// [targetFormat] Specifies the datetime format to use for the converted data in the target field. Defaults to `yyyy-MM-dd'T'HH:mm:ss.SSS'Z`.
  /// [targetTimezone] Specifies the time zone of the target field. Defaults to `UTC`.
  const LogTransformerTransformerConfigDateTimeConverter({
    this.locale,
    required this.matchPatterns,
    required this.source,
    this.sourceTimezone,
    required this.target,
    this.targetFormat,
    this.targetTimezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locale': ?locale,
      'matchPatterns': matchPatterns,
      'source': source,
      'sourceTimezone': ?sourceTimezone,
      'target': target,
      'targetFormat': ?targetFormat,
      'targetTimezone': ?targetTimezone,
    };
  }

  factory LogTransformerTransformerConfigDateTimeConverter.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigDateTimeConverter(
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchPatterns: pulumi.Input.fromValue((map['matchPatterns'] as List).cast<String>()),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceTimezone: (() { final guardedValue = map['sourceTimezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: pulumi.Input.fromValue(map['target'] as String),
      targetFormat: (() { final guardedValue = map['targetFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetTimezone: (() { final guardedValue = map['targetTimezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

