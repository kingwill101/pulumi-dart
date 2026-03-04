// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_snowflake_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final pulumi.Input<bool>? enabled;

  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final pulumi.Input<
    List<
      FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor
    >
  >?
  processors;

  /// Creates a new [FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'processors':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor
            >,
            List<Map<String, dynamic>>
          >(
            processors,
            (value) =>
                pulumi.Input.encodeList<
                  FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration(
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
            FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor
          >(
            guardedValue,
            (value) =>
                FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
