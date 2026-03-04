// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_extended_s3_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final pulumi.Input<bool>? enabled;

  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final pulumi.Input<
    List<
      FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessor
    >
  >?
  processors;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'processors':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessor
            >,
            List<Map<String, dynamic>>
          >(
            processors,
            (value) =>
                pulumi.Input.encodeList<
                  FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessor,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfiguration(
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
            FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessor
          >(
            guardedValue,
            (value) =>
                FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessor.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
