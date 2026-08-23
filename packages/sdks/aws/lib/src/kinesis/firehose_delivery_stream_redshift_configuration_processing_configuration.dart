// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_redshift_configuration_processing_configuration_processor.dart';

class FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration {
  /// Enables or disables data processing.
  final pulumi.Input<bool>? enabled;
  /// Specifies the data processors as multiple blocks. See `processors` block below for details.
  final pulumi.Input<List<FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor>>? processors;

  /// Creates a new [FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration].
  /// [enabled] Enables or disables data processing.
  /// [processors] Specifies the data processors as multiple blocks. See `processors` block below for details.
  const FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'processors': ?pulumi.Input.mapOptionalInputValue<List<FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor>, List<Map<String, dynamic>>>(processors, (value) => pulumi.Input.encodeList<FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      processors: (() { final guardedValue = map['processors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor>(guardedValue, (value) => FirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessor.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
