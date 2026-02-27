// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Channel.
class ChannelArgs2 {
  /// Required. Immutable. A unique ID within the site that identifies the channel.
  final Input<String> channelId;

  /// The time at which the channel will be automatically deleted. If null, the channel will not be automatically deleted. This field is present in the output whether it's set directly or via the `ttl` field.
  final Input<String>? expireTime;

  /// Text labels used for extra metadata and/or filtering.
  final Input<Map<String, String>>? labels;

  /// The fully-qualified resource name for the channel, in the format: sites/ SITE_ID/channels/CHANNEL_ID
  final Input<String>? name;
  final Input<String>? project;

  /// The number of previous releases to retain on the channel for rollback or other purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  final Input<int>? retainedReleaseCount;
  final Input<String> siteId;

  /// Input only. A time-to-live for this channel. Sets `expire_time` to the provided duration past the time of the request.
  final Input<String>? ttl;

  ChannelArgs2({
    required this.channelId,
    this.expireTime,
    this.labels,
    this.name,
    this.project,
    this.retainedReleaseCount,
    required this.siteId,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelId'] = channelId;
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final retainedReleaseCountValue = retainedReleaseCount;
    if (retainedReleaseCountValue != null) {
      map['retainedReleaseCount'] = retainedReleaseCountValue;
    }
    map['siteId'] = siteId;
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    return map;
  }

  factory ChannelArgs2.fromMap(Map<String, dynamic> map) {
    return ChannelArgs2(
      channelId: Input.asInput<String>(map['channelId']),
      expireTime: Input.asOptionalInput<String>(map['expireTime']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      retainedReleaseCount:
          Input.asOptionalInput<int>(map['retainedReleaseCount']),
      siteId: Input.asInput<String>(map['siteId']),
      ttl: Input.asOptionalInput<String>(map['ttl']),
    );
  }
}
