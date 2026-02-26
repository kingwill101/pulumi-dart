// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe {
  /// When set to true, which is the default, Kinesis Data Firehose converts JSON keys to lowercase before deserializing them.
  final bool? caseInsensitive;

  /// A map of column names to JSON keys that aren't identical to the column names. This is useful when the JSON contains keys that are Hive keywords. For example, timestamp is a Hive keyword. If you have a JSON key named timestamp, set this parameter to `{ ts = "timestamp" }` to map this key to a column named ts.
  final Map<String, String>? columnToJsonKeyMappings;

  /// When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, specifies that the names of the keys include dots and that you want Kinesis Data Firehose to replace them with underscores. This is useful because Apache Hive does not allow dots in column names. For example, if the JSON contains a key whose name is "a.b", you can define the column name to be <span pulumi-lang-nodejs=""aB"" pulumi-lang-dotnet=""AB"" pulumi-lang-go=""aB"" pulumi-lang-python=""a_b"" pulumi-lang-yaml=""aB"" pulumi-lang-java=""aB"">"a_b"</span> when using this option. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? convertDotsInJsonKeysToUnderscores;

  FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe({
    this.caseInsensitive,
    this.columnToJsonKeyMappings,
    this.convertDotsInJsonKeysToUnderscores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caseInsensitiveValue = caseInsensitive;
    if (caseInsensitiveValue != null) {
      map['caseInsensitive'] = caseInsensitiveValue;
    }
    final columnToJsonKeyMappingsValue = columnToJsonKeyMappings;
    if (columnToJsonKeyMappingsValue != null) {
      map['columnToJsonKeyMappings'] = columnToJsonKeyMappingsValue;
    }
    final convertDotsInJsonKeysToUnderscoresValue =
        convertDotsInJsonKeysToUnderscores;
    if (convertDotsInJsonKeysToUnderscoresValue != null) {
      map['convertDotsInJsonKeysToUnderscores'] =
          convertDotsInJsonKeysToUnderscoresValue;
    }
    return map;
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe(
      caseInsensitive: map['caseInsensitive'] == null
          ? null
          : map['caseInsensitive'] as bool,
      columnToJsonKeyMappings: map['columnToJsonKeyMappings'] == null
          ? null
          : (map['columnToJsonKeyMappings'] as Map).cast<String, String>(),
      convertDotsInJsonKeysToUnderscores:
          map['convertDotsInJsonKeysToUnderscores'] == null
              ? null
              : map['convertDotsInJsonKeysToUnderscores'] as bool,
    );
  }
}
