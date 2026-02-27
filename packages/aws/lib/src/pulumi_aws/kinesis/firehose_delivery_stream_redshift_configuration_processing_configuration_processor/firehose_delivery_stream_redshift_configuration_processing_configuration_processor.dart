// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../firehose_delivery_stream_redshift_configuration_processing_configuration_processor_parameter/firehose_delivery_stream_redshift_configuration_processing_configuration_processor_parameter.dart';

class FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor {
  /// Specifies the processor parameters as multiple blocks. See `parameters` block below for details.
  final List<
          FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorParameter>?
      parameters;

  /// The type of processor. Valid Values: `RecordDeAggregation`, `Lambda`, `MetadataExtraction`, `AppendDelimiterToRecord`, `Decompression`, `CloudWatchLogProcessing`. Validation is done against [AWS SDK constants](https://pkg.go.dev/github.com/aws/aws-sdk-go-v2/service/firehose/types#ProcessorType); so values not explicitly listed may also work.
  final String type;

  FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<
          FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor(
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorParameter>(
              map['parameters'],
              (value) =>
                  FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorParameter
                      .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
