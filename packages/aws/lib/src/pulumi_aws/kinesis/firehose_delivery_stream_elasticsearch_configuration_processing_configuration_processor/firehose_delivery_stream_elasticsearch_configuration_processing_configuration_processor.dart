// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../firehose_delivery_stream_elasticsearch_configuration_processing_configuration_processor_parameter/firehose_delivery_stream_elasticsearch_configuration_processing_configuration_processor_parameter.dart';

class FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor {
  /// Specifies the processor parameters as multiple blocks. See `parameters` block below for details.
  final List<
          FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter>?
      parameters;

  /// The type of processor. Valid Values: `RecordDeAggregation`, `Lambda`, `MetadataExtraction`, `AppendDelimiterToRecord`, `Decompression`, `CloudWatchLogProcessing`. Validation is done against [AWS SDK constants](https://pkg.go.dev/github.com/aws/aws-sdk-go-v2/service/firehose/types#ProcessorType); so values not explicitly listed may also work.
  final String type;

  FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<
          FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor(
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter>(
              map['parameters'],
              (value) =>
                  FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter
                      .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
