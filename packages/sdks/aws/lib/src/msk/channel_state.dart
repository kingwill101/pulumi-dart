// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encryption_configuration.dart';
import 'channel_iceberg_destination.dart';
import 'channel_logging_info.dart';
import 'channel_s3_destination.dart';
import 'channel_timeouts.dart';
import 'channel_topic_configuration.dart';

/// Input properties used for looking up and filtering Channel resources.
class ChannelState {
  /// ARN of the channel.
  final pulumi.Input<String?>? arn;
  /// Name of the channel. Must be unique within the cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? channelName;
  /// ARN that uniquely identifies the cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? clusterArn;
  /// Type of destination configured for the channel.
  final pulumi.Input<String?>? destinationType;
  /// AWS KMS encryption configuration applied to data at rest. Changing this forces a new resource to be created. See `encryptionConfiguration` Block below.
  final pulumi.Input<ChannelEncryptionConfiguration?>? encryptionConfiguration;
  /// Apache Iceberg destination for the channel. Exactly one of `icebergDestination` or `s3Destination` is required. With the exception of `dataFreshnessInSeconds`, changing an argument in this block forces a new resource to be created. See `icebergDestination` Block below.
  final pulumi.Input<ChannelIcebergDestination?>? icebergDestination;
  /// Destinations to which the channel publishes operational logs. Changing this forces a new resource to be created. See `loggingInfo` Block below.
  final pulumi.Input<ChannelLoggingInfo?>? loggingInfo;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Amazon S3 destination for the channel. Exactly one of `icebergDestination` or `s3Destination` is required. With the exception of `dataFreshnessInSeconds`, changing an argument in this block forces a new resource to be created. See `s3Destination` Block below.
  final pulumi.Input<ChannelS3Destination?>? s3Destination;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<ChannelTimeouts?>? timeouts;
  /// Configuration of the Apache Kafka topic that feeds the channel. Changing this forces a new resource to be created. See `topicConfiguration` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ChannelTopicConfiguration?>? topicConfiguration;

  /// Creates a new [ChannelState].
  /// [arn] ARN of the channel.
  /// [channelName] Name of the channel. Must be unique within the cluster. Changing this forces a new resource to be created.
  /// [clusterArn] ARN that uniquely identifies the cluster. Changing this forces a new resource to be created.
  /// [destinationType] Type of destination configured for the channel.
  /// [encryptionConfiguration] AWS KMS encryption configuration applied to data at rest. Changing this forces a new resource to be created. See `encryptionConfiguration` Block below.
  /// [icebergDestination] Apache Iceberg destination for the channel. Exactly one of `icebergDestination` or `s3Destination` is required. With the exception of `dataFreshnessInSeconds`, changing an argument in this block forces a new resource to be created. See `icebergDestination` Block below.
  /// [loggingInfo] Destinations to which the channel publishes operational logs. Changing this forces a new resource to be created. See `loggingInfo` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Destination] Amazon S3 destination for the channel. Exactly one of `icebergDestination` or `s3Destination` is required. With the exception of `dataFreshnessInSeconds`, changing an argument in this block forces a new resource to be created. See `s3Destination` Block below.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [topicConfiguration] Configuration of the Apache Kafka topic that feeds the channel. Changing this forces a new resource to be created. See `topicConfiguration` Block below.
  const ChannelState({
    this.arn,
    this.channelName,
    this.clusterArn,
    this.destinationType,
    this.encryptionConfiguration,
    this.icebergDestination,
    this.loggingInfo,
    this.region,
    this.s3Destination,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.topicConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'channelName': ?channelName,
      'clusterArn': ?clusterArn,
      'destinationType': ?destinationType,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<ChannelEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'icebergDestination': ?pulumi.Input.mapOptionalInputValue<ChannelIcebergDestination, Map<String, dynamic>>(icebergDestination, (value) => value.toMap()),
      'loggingInfo': ?pulumi.Input.mapOptionalInputValue<ChannelLoggingInfo, Map<String, dynamic>>(loggingInfo, (value) => value.toMap()),
      'region': ?region,
      's3Destination': ?pulumi.Input.mapOptionalInputValue<ChannelS3Destination, Map<String, dynamic>>(s3Destination, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ChannelTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'topicConfiguration': ?pulumi.Input.mapOptionalInputValue<ChannelTopicConfiguration, Map<String, dynamic>>(topicConfiguration, (value) => value.toMap()),
    };
  }

  factory ChannelState.fromMap(Map<String, dynamic> map) {
    return ChannelState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelName: (() { final guardedValue = map['channelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterArn: (() { final guardedValue = map['clusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationType: (() { final guardedValue = map['destinationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      icebergDestination: (() { final guardedValue = map['icebergDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelIcebergDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loggingInfo: (() { final guardedValue = map['loggingInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelLoggingInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Destination: (() { final guardedValue = map['s3Destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelS3Destination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topicConfiguration: (() { final guardedValue = map['topicConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelTopicConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
