// ignore_for_file: unused_element, unnecessary_cast

import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_input_format_configuration_deserializer_hive_json_ser_de.dart';
import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_input_format_configuration_deserializer_open_xjson_ser_de.dart';

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer {
  /// Specifies the native Hive / HCatalog JsonSerDe. More details below. See `hive_json_ser_de` block below for details.
  final FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerHiveJsonSerDe? hiveJsonSerDe;
  /// Specifies the OpenX SerDe. See `open_x_json_ser_de` block below for details.
  final FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe? openXJsonSerDe;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer].
  /// [hiveJsonSerDe] Specifies the native Hive / HCatalog JsonSerDe. More details below. See `hive_json_ser_de` block below for details.
  /// [openXJsonSerDe] Specifies the OpenX SerDe. See `open_x_json_ser_de` block below for details.
  FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer({
    this.hiveJsonSerDe,
    this.openXJsonSerDe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hiveJsonSerDe': ?hiveJsonSerDe == null ? null : hiveJsonSerDe!.toMap(),
      'openXJsonSerDe': ?openXJsonSerDe == null ? null : openXJsonSerDe!.toMap(),
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer(
      hiveJsonSerDe: map['hiveJsonSerDe'] == null ? null : FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerHiveJsonSerDe.fromMap((map['hiveJsonSerDe'] as Map).cast<String, dynamic>()),
      openXJsonSerDe: map['openXJsonSerDe'] == null ? null : FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe.fromMap((map['openXJsonSerDe'] as Map).cast<String, dynamic>()),
    );
  }
}

