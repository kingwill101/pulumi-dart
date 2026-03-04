// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_iceberg_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final pulumi.Input<bool>? enabled;

  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final pulumi.Input<
    List<
      FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessor
    >
  >?
  processors;

  /// Creates a new [FirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  FirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'processors':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessor
            >,
            List<Map<String, dynamic>>
          >(
            processors,
            (value) =>
                pulumi.Input.encodeList<
                  FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessor,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory FirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration(
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
            FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessor
          >(
            guardedValue,
            (value) =>
                FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessor.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
