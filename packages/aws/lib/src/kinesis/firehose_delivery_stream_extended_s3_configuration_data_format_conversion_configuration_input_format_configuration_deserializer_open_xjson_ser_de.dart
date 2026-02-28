// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe {
  /// When set to true, which is the default, Kinesis Data Firehose converts JSON keys to lowercase before deserializing them.
  final bool? caseInsensitive;

  /// A map of column names to JSON keys that aren't identical to the column names. This is useful when the JSON contains keys that are Hive keywords. For example, timestamp is a Hive keyword. If you have a JSON key named timestamp, set this parameter to `{ ts = "timestamp" }` to map this key to a column named ts.
  final Map<String, String>? columnToJsonKeyMappings;

  /// When set to `true`, specifies that the names of the keys include dots and that you want Kinesis Data Firehose to replace them with underscores. This is useful because Apache Hive does not allow dots in column names. For example, if the JSON contains a key whose name is "a.b", you can define the column name to be "a_b" when using this option. Defaults to `false`.
  final bool? convertDotsInJsonKeysToUnderscores;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe].
  /// [caseInsensitive] When set to true, which is the default, Kinesis Data Firehose converts JSON keys to lowercase before deserializing them.
  /// [columnToJsonKeyMappings] A map of column names to JSON keys that aren't identical to the column names. This is useful when the JSON contains keys that are Hive keywords. For example, timestamp is a Hive keyword. If you have a JSON key named timestamp, set this parameter to `{ ts = "timestamp" }` to map this key to a column named ts.
  /// [convertDotsInJsonKeysToUnderscores] When set to `true`, specifies that the names of the keys include dots and that you want Kinesis Data Firehose to replace them with underscores. This is useful because Apache Hive does not allow dots in column names. For example, if the JSON contains a key whose name is "a.b", you can define the column name to be "a_b" when using this option. Defaults to `false`.
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
