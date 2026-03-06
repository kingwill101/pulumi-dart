// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_input_format_configuration_deserializer_hive_json_ser_de.dart';
import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_input_format_configuration_deserializer_open_xjson_ser_de.dart';

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer {
  /// Specifies the native Hive / HCatalog JsonSerDe. More details below. See `hive_json_ser_de` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerHiveJsonSerDe>? hiveJsonSerDe;
  /// Specifies the OpenX SerDe. See `open_x_json_ser_de` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe>? openXJsonSerDe;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer].
  /// [hiveJsonSerDe] Specifies the native Hive / HCatalog JsonSerDe. More details below. See `hive_json_ser_de` block below for details.
  /// [openXJsonSerDe] Specifies the OpenX SerDe. See `open_x_json_ser_de` block below for details.
  const FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer({
    this.hiveJsonSerDe,
    this.openXJsonSerDe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hiveJsonSerDe': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerHiveJsonSerDe, Map<String, dynamic>>(hiveJsonSerDe, (value) => value.toMap()),
      'openXJsonSerDe': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe, Map<String, dynamic>>(openXJsonSerDe, (value) => value.toMap()),
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer(
      hiveJsonSerDe: (() { final guardedValue = map['hiveJsonSerDe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerHiveJsonSerDe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openXJsonSerDe: (() { final guardedValue = map['openXJsonSerDe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

