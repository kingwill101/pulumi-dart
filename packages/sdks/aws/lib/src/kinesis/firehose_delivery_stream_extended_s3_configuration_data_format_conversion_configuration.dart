// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_input_format_configuration.dart';
import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_output_format_configuration.dart';
import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_schema_configuration.dart';

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration {
  /// Defaults to `true`. Set it to `false` if you want to disable format conversion while preserving the configuration details.
  final pulumi.Input<bool>? enabled;
  /// Specifies the deserializer that you want Kinesis Data Firehose to use to convert the format of your data from JSON. See `input_format_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration> inputFormatConfiguration;
  /// Specifies the serializer that you want Kinesis Data Firehose to use to convert the format of your data to the Parquet or ORC format. See `output_format_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration> outputFormatConfiguration;
  /// Specifies the AWS Glue Data Catalog table that contains the column information. See `schema_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration> schemaConfiguration;

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
      'inputFormatConfiguration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration, Map<String, dynamic>>(inputFormatConfiguration, (value) => value.toMap()),
      'outputFormatConfiguration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration, Map<String, dynamic>>(outputFormatConfiguration, (value) => value.toMap()),
      'schemaConfiguration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration, Map<String, dynamic>>(schemaConfiguration, (value) => value.toMap()),
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      inputFormatConfiguration: (FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration.fromMap((map['inputFormatConfiguration'] as Map).cast<String, dynamic>())).input(),
      outputFormatConfiguration: (FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration.fromMap((map['outputFormatConfiguration'] as Map).cast<String, dynamic>())).input(),
      schemaConfiguration: (FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration.fromMap((map['schemaConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

