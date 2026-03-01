// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_elasticsearch_configuration_processing_configuration_processor_parameter.dart';

class FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor {
  /// Specifies the processor parameters as multiple blocks. See `parameters` block below for details.
  final List<
    FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter
  >?
  parameters;

  /// The type of processor. Valid Values: `RecordDeAggregation`, `Lambda`, `MetadataExtraction`, `AppendDelimiterToRecord`, `Decompression`, `CloudWatchLogProcessing`. Validation is done against [AWS SDK constants](https://pkg.go.dev/github.com/aws/aws-sdk-go-v2/service/firehose/types#ProcessorType); so values not explicitly listed may also work.
  final String type;

  /// Creates a new [FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor].
  /// [parameters] Specifies the processor parameters as multiple blocks. See `parameters` block below for details.
  /// [type] The type of processor. Valid Values: `RecordDeAggregation`, `Lambda`, `MetadataExtraction`, `AppendDelimiterToRecord`, `Decompression`, `CloudWatchLogProcessing`. Validation is done against [AWS SDK constants](https://pkg.go.dev/github.com/aws/aws-sdk-go-v2/service/firehose/types#ProcessorType); so values not explicitly listed may also work.
  FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters == null
          ? null
          : pulumi.Input.encodeList<
              FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter,
              Map<String, dynamic>
            >(parameters!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor(
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<
              FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter
            >(
              map['parameters'],
              (value) =>
                  FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      type: map['type'] as String,
    );
  }
}
