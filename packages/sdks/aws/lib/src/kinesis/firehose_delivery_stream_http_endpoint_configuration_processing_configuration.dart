// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_http_endpoint_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final pulumi.Input<bool>? enabled;

  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final pulumi.Input<
    List<
      FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor
    >
  >?
  processors;

  /// Creates a new [FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'processors':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor
            >,
            List<Map<String, dynamic>>
          >(
            processors,
            (value) =>
                pulumi.Input.encodeList<
                  FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      processors: (() {
        final guardedValue = map['processors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor
          >(
            guardedValue,
            (value) =>
                FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
