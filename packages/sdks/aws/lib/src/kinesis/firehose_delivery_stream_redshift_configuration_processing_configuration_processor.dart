// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_redshift_configuration_processing_configuration_processor_parameter.dart';

class FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor {
  /// Specifies the processor parameters as multiple blocks. See `parameters` block below for details.
  final pulumi.Input<
    List<
      FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorParameter
    >
  >?
  parameters;

  /// The type of processor. Valid Values: `RecordDeAggregation`, `Lambda`, `MetadataExtraction`, `AppendDelimiterToRecord`, `Decompression`, `CloudWatchLogProcessing`. Validation is done against [AWS SDK constants](https://pkg.go.dev/github.com/aws/aws-sdk-go-v2/service/firehose/types#ProcessorType); so values not explicitly listed may also work.
  final pulumi.Input<String> type;

  /// Creates a new [FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor].
  /// [parameters] Specifies the processor parameters as multiple blocks. See `parameters` block below for details.
  /// [type] The type of processor. Valid Values: `RecordDeAggregation`, `Lambda`, `MetadataExtraction`, `AppendDelimiterToRecord`, `Decompression`, `CloudWatchLogProcessing`. Validation is done against [AWS SDK constants](https://pkg.go.dev/github.com/aws/aws-sdk-go-v2/service/firehose/types#ProcessorType); so values not explicitly listed may also work.
  FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorParameter
            >,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': type,
    };
  }

  factory FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor(
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorParameter
          >(
            guardedValue,
            (value) =>
                FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorParameter.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
