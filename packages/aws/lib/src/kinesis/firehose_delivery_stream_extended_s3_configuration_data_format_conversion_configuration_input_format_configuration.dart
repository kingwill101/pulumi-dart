// ignore_for_file: unused_element, unnecessary_cast

import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_input_format_configuration_deserializer.dart';

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration {
  /// Specifies which deserializer to use. You can choose either the Apache Hive JSON SerDe or the OpenX JSON SerDe. See `deserializer` block below for details.
  final FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer
  deserializer;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration].
  /// [deserializer] Specifies which deserializer to use. You can choose either the Apache Hive JSON SerDe or the OpenX JSON SerDe. See `deserializer` block below for details.
  FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration({
    required this.deserializer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'deserializer': deserializer.toMap()};
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration(
      deserializer:
          FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer.fromMap(
            (map['deserializer'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
