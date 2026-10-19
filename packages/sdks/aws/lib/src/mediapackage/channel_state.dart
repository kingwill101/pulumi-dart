// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_hls_ingest.dart';

/// Input properties used for looking up and filtering Channel resources.
class ChannelState {
  /// ARN of the channel
  final pulumi.Input<String?>? arn;
  /// Unique identifier describing the channel
  final pulumi.Input<String?>? channelId;
  /// Description of the channel
  final pulumi.Input<String?>? description;
  /// Single item list of HLS ingest information
  final pulumi.Input<List<ChannelHlsIngest>?>? hlsIngests;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ChannelState].
  /// [arn] ARN of the channel
  /// [channelId] Unique identifier describing the channel
  /// [description] Description of the channel
  /// [hlsIngests] Single item list of HLS ingest information
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  ChannelState({
    this.arn,
    this.channelId,
    pulumi.Input<String?>? description,
    this.hlsIngests,
    this.region,
    this.tags,
    this.tagsAll,
  }) : description = description ?? pulumi.Input.fromValue('Managed by Pulumi');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'channelId': ?channelId,
      'description': ?description,
      'hlsIngests': ?pulumi.Input.mapOptionalInputValue<List<ChannelHlsIngest>, List<Map<String, dynamic>>>(hlsIngests, (value) => pulumi.Input.encodeList<ChannelHlsIngest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ChannelState.fromMap(Map<String, dynamic> map) {
    return ChannelState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelId: (() { final guardedValue = map['channelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hlsIngests: (() { final guardedValue = map['hlsIngests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelHlsIngest>(guardedValue, (value) => ChannelHlsIngest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
