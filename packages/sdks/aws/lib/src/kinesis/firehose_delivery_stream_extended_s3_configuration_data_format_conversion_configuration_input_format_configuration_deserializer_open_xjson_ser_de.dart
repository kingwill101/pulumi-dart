// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe {
  /// When set to true, which is the default, Kinesis Data Firehose converts JSON keys to lowercase before deserializing them.
  final pulumi.Input<bool>? caseInsensitive;
  /// A map of column names to JSON keys that aren't identical to the column names. This is useful when the JSON contains keys that are Hive keywords. For example, timestamp is a Hive keyword. If you have a JSON key named timestamp, set this parameter to `{ ts = "timestamp" }` to map this key to a column named ts.
  final pulumi.Input<Map<String, String>>? columnToJsonKeyMappings;
  /// When set to `true`, specifies that the names of the keys include dots and that you want Kinesis Data Firehose to replace them with underscores. This is useful because Apache Hive does not allow dots in column names. For example, if the JSON contains a key whose name is "a.b", you can define the column name to be "a_b" when using this option. Defaults to `false`.
  final pulumi.Input<bool>? convertDotsInJsonKeysToUnderscores;

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
    return <String, dynamic>{
      'caseInsensitive': ?caseInsensitive,
      'columnToJsonKeyMappings': ?columnToJsonKeyMappings,
      'convertDotsInJsonKeysToUnderscores': ?convertDotsInJsonKeysToUnderscores,
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe(
      caseInsensitive: map['caseInsensitive'] == null ? null : (map['caseInsensitive'] as bool).input(),
      columnToJsonKeyMappings: map['columnToJsonKeyMappings'] == null ? null : ((map['columnToJsonKeyMappings'] as Map).cast<String, String>()).input(),
      convertDotsInJsonKeysToUnderscores: map['convertDotsInJsonKeysToUnderscores'] == null ? null : (map['convertDotsInJsonKeysToUnderscores'] as bool).input(),
    );
  }
}

