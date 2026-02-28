// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_opensearchserverless_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final bool? enabled;

  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final List<
          FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessor>?
      processors;

  /// Creates a new [FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration({
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
          FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessor,
          Map<String, dynamic>>(processorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      processors: map['processors'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessor>(
              map['processors'],
              (value) =>
                  FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessor
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
