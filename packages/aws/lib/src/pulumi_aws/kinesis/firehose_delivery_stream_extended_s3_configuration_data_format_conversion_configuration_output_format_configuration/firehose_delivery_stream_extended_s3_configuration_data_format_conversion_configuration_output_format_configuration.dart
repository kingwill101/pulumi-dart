// ignore_for_file: unused_element, unnecessary_cast

import '../firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_output_format_configuration_serializer/firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration_output_format_configuration_serializer.dart';

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration {
  /// Specifies which serializer to use. You can choose either the ORC SerDe or the Parquet SerDe. See <span pulumi-lang-nodejs="`serializer`" pulumi-lang-dotnet="`Serializer`" pulumi-lang-go="`serializer`" pulumi-lang-python="`serializer`" pulumi-lang-yaml="`serializer`" pulumi-lang-java="`serializer`">`serializer`</span> block below for details.
  final FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer
      serializer;

  FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration({
    required this.serializer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serializer'] = serializer.toMap();
    return map;
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration(
      serializer:
          FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer
              .fromMap((map['serializer'] as Map).cast<String, dynamic>()),
    );
  }
}
