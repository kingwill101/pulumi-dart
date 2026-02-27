// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../firehose_delivery_stream_redshift_configuration_processing_configuration_processor/firehose_delivery_stream_redshift_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final bool? enabled;

  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final List<
          FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor>?
      processors;

  FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration({
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
          FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor,
          Map<String, dynamic>>(processorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      processors: map['processors'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor>(
              map['processors'],
              (value) =>
                  FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
