// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Channel.
class ChannelFirebasehostingV1beta1Args {
  /// Required. Immutable. A unique ID within the site that identifies the channel.
  final pulumi.Input<String> channelId;

  /// The time at which the channel will be automatically deleted. If null, the channel will not be automatically deleted. This field is present in the output whether it's set directly or via the `ttl` field.
  final pulumi.Input<String>? expireTime;

  /// Text labels used for extra metadata and/or filtering.
  final pulumi.Input<Map<String, String>>? labels;

  /// The fully-qualified resource name for the channel, in the format: sites/ SITE_ID/channels/CHANNEL_ID
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The number of previous releases to retain on the channel for rollback or other purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  final pulumi.Input<int>? retainedReleaseCount;
  final pulumi.Input<String> siteId;

  /// Input only. A time-to-live for this channel. Sets `expire_time` to the provided duration past the time of the request.
  final pulumi.Input<String>? ttl;

  ChannelFirebasehostingV1beta1Args({
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

  factory ChannelFirebasehostingV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ChannelFirebasehostingV1beta1Args(
      channelId: pulumi.Input.asInput<String>(map['channelId']),
      expireTime: pulumi.Input.asOptionalInput<String>(map['expireTime']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      retainedReleaseCount:
          pulumi.Input.asOptionalInput<int>(map['retainedReleaseCount']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
      ttl: pulumi.Input.asOptionalInput<String>(map['ttl']),
    );
  }
}
