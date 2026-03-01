// ignore_for_file: unused_element, unnecessary_cast

import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_input_format_configuration.dart';
import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_output_format_configuration.dart';
import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_schema_configuration.dart';

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration {
  /// Defaults to `true`. Set it to `false` if you want to disable format conversion while preserving the configuration details.
  final bool? enabled;
  /// Specifies the deserializer that you want Kinesis Data Firehose to use to convert the format of your data from JSON. See `input_format_configuration` block below for details.
  final FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration inputFormatConfiguration;
  /// Specifies the serializer that you want Kinesis Data Firehose to use to convert the format of your data to the Parquet or ORC format. See `output_format_configuration` block below for details.
  final FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration outputFormatConfiguration;
  /// Specifies the AWS Glue Data Catalog table that contains the column information. See `schema_configuration` block below for details.
  final FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration schemaConfiguration;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration].
  /// [enabled] Defaults to `true`. Set it to `false` if you want to disable format conversion while preserving the configuration details.
  /// [inputFormatConfiguration] Specifies the deserializer that you want Kinesis Data Firehose to use to convert the format of your data from JSON. See `input_format_configuration` block below for details.
  /// [outputFormatConfiguration] Specifies the serializer that you want Kinesis Data Firehose to use to convert the format of your data to the Parquet or ORC format. See `output_format_configuration` block below for details.
  /// [schemaConfiguration] Specifies the AWS Glue Data Catalog table that contains the column information. See `schema_configuration` block below for details.
  FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration({
    this.enabled,
    required this.inputFormatConfiguration,
    required this.outputFormatConfiguration,
    required this.schemaConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'inputFormatConfiguration': inputFormatConfiguration.toMap(),
      'outputFormatConfiguration': outputFormatConfiguration.toMap(),
      'schemaConfiguration': schemaConfiguration.toMap(),
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      inputFormatConfiguration: FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration.fromMap((map['inputFormatConfiguration'] as Map).cast<String, dynamic>()),
      outputFormatConfiguration: FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration.fromMap((map['outputFormatConfiguration'] as Map).cast<String, dynamic>()),
      schemaConfiguration: FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration.fromMap((map['schemaConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

