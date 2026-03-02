// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_opensearch_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final pulumi.Input<bool>? enabled;
  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final pulumi.Input<List<FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor>>? processors;

  /// Creates a new [FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'processors': ?pulumi.Input.mapOptionalInputValue<List<FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor>, List<Map<String, dynamic>>>(processors, (value) => pulumi.Input.encodeList<FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      processors: map['processors'] == null ? null : ((pulumi.Input.decodeList<FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor>(map['processors']!, (value) => FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

