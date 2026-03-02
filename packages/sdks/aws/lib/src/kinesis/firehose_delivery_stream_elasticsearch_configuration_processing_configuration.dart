// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_elasticsearch_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final pulumi.Input<bool>? enabled;
  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final pulumi.Input<List<FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor>>? processors;

  /// Creates a new [FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'processors': ?pulumi.Input.mapOptionalInputValue<List<FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor>, List<Map<String, dynamic>>>(processors, (value) => pulumi.Input.encodeList<FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      processors: map['processors'] == null ? null : (pulumi.Input.decodeList<FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor>(map['processors'], (value) => FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

