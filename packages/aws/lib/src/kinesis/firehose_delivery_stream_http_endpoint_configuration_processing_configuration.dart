// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_http_endpoint_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final bool? enabled;

  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final List<
          FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor>?
      processors;

  /// Creates a new [FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration({
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
          FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor,
          Map<String, dynamic>>(processorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      processors: map['processors'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor>(
              map['processors'],
              (value) =>
                  FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
