// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_splunk_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final pulumi.Input<bool?>? enabled;
  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final pulumi.Input<List<FirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessor>?>? processors;

  /// Creates a new [FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  const FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'processors': ?pulumi.Input.mapOptionalInputValue<List<FirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessor>, List<Map<String, dynamic>>>(processors, (value) => pulumi.Input.encodeList<FirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessor, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      processors: (() { final guardedValue = map['processors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessor>(guardedValue, (value) => FirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessor.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
