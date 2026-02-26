// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigDateTimeConverter {
  /// Specifies the locale of the source field. Defaults to `locale.ROOT`.
  final String? locale;

  /// Specifies the list of patterns to match against the <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> field.
  final List<String> matchPatterns;

  /// Specifies the key to apply the date conversion to.
  final String source;

  /// Specifies the time zone of the source field. Defaults to `UTC`.
  final String? sourceTimezone;

  /// Specifies the JSON field to store the result in.
  final String target;

  /// Specifies the datetime format to use for the converted data in the target field. Defaults to `yyyy-MM-dd'T'HH:mm:ss.SSS'Z`.
  final String? targetFormat;

  /// Specifies the time zone of the target field. Defaults to `UTC`.
  final String? targetTimezone;

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
    final map = <String, dynamic>{};
    final localeValue = locale;
    if (localeValue != null) {
      map['locale'] = localeValue;
    }
    map['matchPatterns'] = matchPatterns;
    map['source'] = source;
    final sourceTimezoneValue = sourceTimezone;
    if (sourceTimezoneValue != null) {
      map['sourceTimezone'] = sourceTimezoneValue;
    }
    map['target'] = target;
    final targetFormatValue = targetFormat;
    if (targetFormatValue != null) {
      map['targetFormat'] = targetFormatValue;
    }
    final targetTimezoneValue = targetTimezone;
    if (targetTimezoneValue != null) {
      map['targetTimezone'] = targetTimezoneValue;
    }
    return map;
  }

  factory LogTransformerTransformerConfigDateTimeConverter.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigDateTimeConverter(
      locale: map['locale'] == null ? null : map['locale'] as String,
      matchPatterns: (map['matchPatterns'] as List).cast<String>(),
      source: map['source'] as String,
      sourceTimezone: map['sourceTimezone'] == null
          ? null
          : map['sourceTimezone'] as String,
      target: map['target'] as String,
      targetFormat:
          map['targetFormat'] == null ? null : map['targetFormat'] as String,
      targetTimezone: map['targetTimezone'] == null
          ? null
          : map['targetTimezone'] as String,
    );
  }
}
