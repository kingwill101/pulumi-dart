// ignore_for_file: unused_element, unnecessary_cast

import '../firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_output_format_configuration_serializer_orc_ser_de/firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_output_format_configuration_serializer_orc_ser_de.dart';
import '../firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_output_format_configuration_serializer_parquet_ser_de/firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_output_format_configuration_serializer_parquet_ser_de.dart';

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer {
  /// Specifies converting data to the ORC format before storing it in Amazon S3. For more information, see [Apache ORC](https://orc.apache.org/docs/). See `orc_ser_de` block below for details.
  final FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe?
      orcSerDe;

  /// Specifies converting data to the Parquet format before storing it in Amazon S3. For more information, see [Apache Parquet](https://parquet.apache.org/docs/). More details below.
  final FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe?
      parquetSerDe;

  FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer({
    this.orcSerDe,
    this.parquetSerDe,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final orcSerDeValue = orcSerDe;
    if (orcSerDeValue != null) {
      map['orcSerDe'] = orcSerDeValue.toMap();
    }
    final parquetSerDeValue = parquetSerDe;
    if (parquetSerDeValue != null) {
      map['parquetSerDe'] = parquetSerDeValue.toMap();
    }
    return map;
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer(
      orcSerDe: map['orcSerDe'] == null
          ? null
          : FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe
              .fromMap((map['orcSerDe'] as Map).cast<String, dynamic>()),
      parquetSerDe: map['parquetSerDe'] == null
          ? null
          : FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe
              .fromMap((map['parquetSerDe'] as Map).cast<String, dynamic>()),
    );
  }
}
