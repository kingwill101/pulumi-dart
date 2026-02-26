// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../firehose_delivery_stream_http_endpoint_configuration_processing_configuration_processor/firehose_delivery_stream_http_endpoint_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final bool? enabled;

  /// Specifies the data processors as multiple blocks. See <span pulumi-lang-nodejs="`processors`" pulumi-lang-dotnet="`Processors`" pulumi-lang-go="`processors`" pulumi-lang-python="`processors`" pulumi-lang-yaml="`processors`" pulumi-lang-java="`processors`">`processors`</span> block below for details.
  final List<
          FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor>?
      processors;

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
      map['processors'] = Input.encodeList<
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
          : Input.decodeList<
                  FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor>(
              map['processors'],
              (value) =>
                  FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessor
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
