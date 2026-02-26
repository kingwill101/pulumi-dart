// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../firehose_delivery_stream_elasticsearch_configuration_processing_configuration_processor/firehose_delivery_stream_elasticsearch_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final bool? enabled;

  /// Specifies the data processors as multiple blocks. See <span pulumi-lang-nodejs="`processors`" pulumi-lang-dotnet="`Processors`" pulumi-lang-go="`processors`" pulumi-lang-python="`processors`" pulumi-lang-yaml="`processors`" pulumi-lang-java="`processors`">`processors`</span> block below for details.
  final List<
          FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor>?
      processors;

  FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration({
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
      map['processors'] = Input.encodeList<
          FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor,
          Map<String, dynamic>>(processorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      processors: map['processors'] == null
          ? null
          : Input.decodeList<
                  FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor>(
              map['processors'],
              (value) =>
                  FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessor
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
