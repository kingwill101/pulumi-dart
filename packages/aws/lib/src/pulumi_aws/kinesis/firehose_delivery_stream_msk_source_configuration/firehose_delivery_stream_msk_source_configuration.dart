// ignore_for_file: unused_element, unnecessary_cast

import '../firehose_delivery_stream_msk_source_configuration_authentication_configuration/firehose_delivery_stream_msk_source_configuration_authentication_configuration.dart';

class FirehoseDeliveryStreamMskSourceConfiguration {
  /// The authentication configuration of the Amazon MSK cluster. See `authentication_configuration` block below for details.
  final FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration
      authenticationConfiguration;

  /// The ARN of the Amazon MSK cluster.
  final String mskClusterArn;

  /// The start date and time in UTC for the offset position within your MSK topic from where Firehose begins to read. By default, this is set to timestamp when Firehose becomes Active. If you want to create a Firehose stream with Earliest start position set the `read_from_timestamp` parameter to Epoch (1970-01-01T00:00:00Z).
  final String? readFromTimestamp;

  /// The topic name within the Amazon MSK cluster.
  final String topicName;

  FirehoseDeliveryStreamMskSourceConfiguration({
    required this.authenticationConfiguration,
    required this.mskClusterArn,
    this.readFromTimestamp,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticationConfiguration'] = authenticationConfiguration.toMap();
    map['mskClusterArn'] = mskClusterArn;
    final readFromTimestampValue = readFromTimestamp;
    if (readFromTimestampValue != null) {
      map['readFromTimestamp'] = readFromTimestampValue;
    }
    map['topicName'] = topicName;
    return map;
  }

  factory FirehoseDeliveryStreamMskSourceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamMskSourceConfiguration(
      authenticationConfiguration:
          FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration
              .fromMap((map['authenticationConfiguration'] as Map)
                  .cast<String, dynamic>()),
      mskClusterArn: map['mskClusterArn'] as String,
      readFromTimestamp: map['readFromTimestamp'] == null
          ? null
          : map['readFromTimestamp'] as String,
      topicName: map['topicName'] as String,
    );
  }
}
