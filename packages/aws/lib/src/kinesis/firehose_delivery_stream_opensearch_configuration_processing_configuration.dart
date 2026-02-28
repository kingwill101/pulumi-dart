// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_opensearch_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final bool? enabled;

  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final List<
          FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor>?
      processors;

  /// Creates a new [FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration({
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
          FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor,
          Map<String, dynamic>>(processorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      processors: map['processors'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor>(
              map['processors'],
              (value) =>
                  FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessor
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
