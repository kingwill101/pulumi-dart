// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_snowflake_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final bool? enabled;

  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final List<
          FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor>?
      processors;

  /// Creates a new [FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final processorsValue = processors;
    if (processorsValue != null) {
      map['processors'] = pulumi.Input.encodeList<
          FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor,
          Map<String, dynamic>>(processorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      processors: map['processors'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor>(
              map['processors'],
              (value) =>
                  FirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessor
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
