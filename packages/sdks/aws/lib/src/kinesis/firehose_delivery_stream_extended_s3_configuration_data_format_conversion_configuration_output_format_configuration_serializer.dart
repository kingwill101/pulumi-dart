// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_output_format_configuration_serializer_orc_ser_de.dart';
import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_output_format_configuration_serializer_parquet_ser_de.dart';

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer {
  /// Specifies converting data to the ORC format before storing it in Amazon S3. For more information, see [Apache ORC](https://orc.apache.org/docs/). See `orc_ser_de` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe>? orcSerDe;
  /// Specifies converting data to the Parquet format before storing it in Amazon S3. For more information, see [Apache Parquet](https://parquet.apache.org/docs/). More details below.
  final pulumi.Input<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe>? parquetSerDe;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer].
  /// [orcSerDe] Specifies converting data to the ORC format before storing it in Amazon S3. For more information, see [Apache ORC](https://orc.apache.org/docs/). See `orc_ser_de` block below for details.
  /// [parquetSerDe] Specifies converting data to the Parquet format before storing it in Amazon S3. For more information, see [Apache Parquet](https://parquet.apache.org/docs/). More details below.
  FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer({
    this.orcSerDe,
    this.parquetSerDe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orcSerDe': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe, Map<String, dynamic>>(orcSerDe, (value) => value.toMap()),
      'parquetSerDe': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe, Map<String, dynamic>>(parquetSerDe, (value) => value.toMap()),
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer(
      orcSerDe: map['orcSerDe'] == null ? null : (FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe.fromMap((map['orcSerDe'] as Map).cast<String, dynamic>())).input(),
      parquetSerDe: map['parquetSerDe'] == null ? null : (FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe.fromMap((map['parquetSerDe'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

