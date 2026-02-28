// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_snowflake_configuration_processing_configuration_processor_parameter.dart';

class FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor {
  /// Specifies the processor parameters as multiple blocks. See `parameters` block below for details.
  final List<
          FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessorParameter>?
      parameters;

  /// The type of processor. Valid Values: `RecordDeAggregation`, `Lambda`, `MetadataExtraction`, `AppendDelimiterToRecord`, `Decompression`, `CloudWatchLogProcessing`. Validation is done against [AWS SDK constants](https://pkg.go.dev/github.com/aws/aws-sdk-go-v2/service/firehose/types#ProcessorType); so values not explicitly listed may also work.
  final String type;

  /// Creates a new [FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor].
  /// [parameters] Specifies the processor parameters as multiple blocks. See `parameters` block below for details.
  /// [type] The type of processor. Valid Values: `RecordDeAggregation`, `Lambda`, `MetadataExtraction`, `AppendDelimiterToRecord`, `Decompression`, `CloudWatchLogProcessing`. Validation is done against [AWS SDK constants](https://pkg.go.dev/github.com/aws/aws-sdk-go-v2/service/firehose/types#ProcessorType); so values not explicitly listed may also work.
  FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<
          FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessorParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor(
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessorParameter>(
              map['parameters'],
              (value) =>
                  FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessorParameter
                      .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
