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
  LogTransformerTransformerConfigDateTimeConverter({
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
      locale: map['locale'] == null ? null : ((map['locale'] as String).input()).input(),
      matchPatterns: ((map['matchPatterns'] as List).cast<String>()).input(),
      source: (map['source'] as String).input(),
      sourceTimezone: map['sourceTimezone'] == null ? null : ((map['sourceTimezone'] as String).input()).input(),
      target: (map['target'] as String).input(),
      targetFormat: map['targetFormat'] == null ? null : ((map['targetFormat'] as String).input()).input(),
      targetTimezone: map['targetTimezone'] == null ? null : ((map['targetTimezone'] as String).input()).input(),
    );
  }
}

