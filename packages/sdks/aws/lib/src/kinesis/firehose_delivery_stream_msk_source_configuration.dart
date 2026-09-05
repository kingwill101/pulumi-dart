// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_msk_source_configuration_authentication_configuration.dart';

class FirehoseDeliveryStreamMskSourceConfiguration {
  /// The authentication configuration of the Amazon MSK cluster. See `authenticationConfiguration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration> authenticationConfiguration;
  /// The ARN of the Amazon MSK cluster.
  final pulumi.Input<String> mskClusterArn;
  /// The start date and time in UTC for the offset position within your MSK topic from where Firehose begins to read. By default, this is set to timestamp when Firehose becomes Active. If you want to create a Firehose stream with Earliest start position set the `readFromTimestamp` parameter to Epoch (1970-01-01T00:00:00Z).
  final pulumi.Input<String?>? readFromTimestamp;
  /// The topic name within the Amazon MSK cluster.
  final pulumi.Input<String> topicName;

  /// Creates a new [FirehoseDeliveryStreamMskSourceConfiguration].
  /// [authenticationConfiguration] The authentication configuration of the Amazon MSK cluster. See `authenticationConfiguration` block below for details.
  /// [mskClusterArn] The ARN of the Amazon MSK cluster.
  /// [readFromTimestamp] The start date and time in UTC for the offset position within your MSK topic from where Firehose begins to read. By default, this is set to timestamp when Firehose becomes Active. If you want to create a Firehose stream with Earliest start position set the `readFromTimestamp` parameter to Epoch (1970-01-01T00:00:00Z).
  /// [topicName] The topic name within the Amazon MSK cluster.
  const FirehoseDeliveryStreamMskSourceConfiguration({
    required this.authenticationConfiguration,
    required this.mskClusterArn,
    this.readFromTimestamp,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationConfiguration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration, Map<String, dynamic>>(authenticationConfiguration, (value) => value.toMap()),
      'mskClusterArn': mskClusterArn,
      'readFromTimestamp': ?readFromTimestamp,
      'topicName': topicName,
    };
  }

  factory FirehoseDeliveryStreamMskSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamMskSourceConfiguration(
      authenticationConfiguration: pulumi.Input.fromValue(FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration.fromMap((map['authenticationConfiguration']! as Map).cast<String, dynamic>())),
      mskClusterArn: pulumi.Input.fromValue(map['mskClusterArn'] as String),
      readFromTimestamp: (() { final guardedValue = map['readFromTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}
