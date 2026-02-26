// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../firehose_delivery_stream_opensearch_configuration_processing_configuration_processor_parameter/firehose_delivery_stream_opensearch_configuration_processing_configuration_processor_parameter.dart';

class FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor {
  /// Specifies the processor parameters as multiple blocks. See <span pulumi-lang-nodejs="`parameters`" pulumi-lang-dotnet="`Parameters`" pulumi-lang-go="`parameters`" pulumi-lang-python="`parameters`" pulumi-lang-yaml="`parameters`" pulumi-lang-java="`parameters`">`parameters`</span> block below for details.
  final List<
          FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameter>?
      parameters;

  /// The type of processor. Valid Values: `RecordDeAggregation`, `Lambda`, `MetadataExtraction`, `AppendDelimiterToRecord`, `Decompression`, `CloudWatchLogProcessing`. Validation is done against [AWS SDK constants](https://pkg.go.dev/github.com/aws/aws-sdk-go-v2/service/firehose/types#ProcessorType); so values not explicitly listed may also work.
  final String type;

  FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.encodeList<
          FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor(
      parameters: map['parameters'] == null
          ? null
          : Input.decodeList<
                  FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameter>(
              map['parameters'],
              (value) =>
                  FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameter
                      .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
