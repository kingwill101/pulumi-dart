// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for HostingChannel.
class HostingChannelArgs {
  /// Required. Immutable. A unique ID within the site that identifies the channel.
  final pulumi.Input<String> channelId;

  /// The time at which the channel will be automatically deleted. If null, the channel
  /// will not be automatically deleted. This field is present in the output whether it's
  /// set directly or via the `ttl` field.
  final pulumi.Input<String>? expireTime;

  /// Text labels used for extra metadata and/or filtering
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The number of previous releases to retain on the channel for rollback or other
  /// purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  final pulumi.Input<int>? retainedReleaseCount;

  /// Required. The ID of the site in which to create this channel.
  final pulumi.Input<String> siteId;

  /// Input only. A time-to-live for this channel. Sets `expire_time` to the provided
  /// duration past the time of the request. A duration in seconds with up to nine fractional
  /// digits, terminated by 's'. Example: "86400s" (one day).
  final pulumi.Input<String>? ttl;

  HostingChannelArgs({
    required this.channelId,
    this.expireTime,
    this.labels,
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

  factory HostingChannelArgs.fromMap(Map<String, dynamic> map) {
    return HostingChannelArgs(
      channelId: pulumi.Input.asInput<String>(map['channelId']),
      expireTime: pulumi.Input.asOptionalInput<String>(map['expireTime']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      retainedReleaseCount:
          pulumi.Input.asOptionalInput<int>(map['retainedReleaseCount']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
      ttl: pulumi.Input.asOptionalInput<String>(map['ttl']),
    );
  }
}
