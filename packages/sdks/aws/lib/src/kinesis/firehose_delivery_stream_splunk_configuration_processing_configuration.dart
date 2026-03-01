// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_splunk_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final bool? enabled;
  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final List<FirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessor>? processors;

  /// Creates a new [FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'processors': ?processors == null ? null : pulumi.Input.encodeList<FirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessor, Map<String, dynamic>>(processors!, (value) => value.toMap()),
    };
  }

  factory FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      processors: map['processors'] == null ? null : pulumi.Input.decodeList<FirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessor>(map['processors'], (value) => FirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessor.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

