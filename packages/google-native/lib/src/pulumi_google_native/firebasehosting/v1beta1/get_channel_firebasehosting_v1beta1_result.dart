// ignore_for_file: unused_element, unnecessary_cast

import 'release_response.dart';

/// Result data returned by getChannel.
class GetChannelFirebasehostingV1beta1Result {
  /// The time at which the channel was created.
  final String createTime;

  /// The time at which the channel will be automatically deleted. If null, the channel will not be automatically deleted. This field is present in the output whether it's set directly or via the `ttl` field.
  final String expireTime;

  /// Text labels used for extra metadata and/or filtering.
  final Map<String, String> labels;

  /// The fully-qualified resource name for the channel, in the format: sites/ SITE_ID/channels/CHANNEL_ID
  final String name;

  /// The current release for the channel, if any.
  final ReleaseResponse release;

  /// The number of previous releases to retain on the channel for rollback or other purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  final int retainedReleaseCount;

  /// Input only. A time-to-live for this channel. Sets `expire_time` to the provided duration past the time of the request.
  final String ttl;

  /// The time at which the channel was last updated.
  final String updateTime;

  /// The URL at which the content of this channel's current release can be viewed. This URL is a Firebase-provided subdomain of `web.app`. The content of this channel's current release can also be viewed at the Firebase-provided subdomain of `firebaseapp.com`. If this channel is the `live` channel for the Hosting site, then the content of this channel's current release can also be viewed at any connected custom domains.
  final String url;

  GetChannelFirebasehostingV1beta1Result({
    required this.createTime,
    required this.expireTime,
    required this.labels,
    required this.name,
    required this.release,
    required this.retainedReleaseCount,
    required this.ttl,
    required this.updateTime,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['expireTime'] = expireTime;
    map['labels'] = labels;
    map['name'] = name;
    map['release'] = release.toMap();
    map['retainedReleaseCount'] = retainedReleaseCount;
    map['ttl'] = ttl;
    map['updateTime'] = updateTime;
    map['url'] = url;
    return map;
  }

  factory GetChannelFirebasehostingV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetChannelFirebasehostingV1beta1Result(
      createTime: map['createTime'] as String,
      expireTime: map['expireTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      release: ReleaseResponse.fromMap(
          (map['release'] as Map).cast<String, dynamic>()),
      retainedReleaseCount: map['retainedReleaseCount'] as int,
      ttl: map['ttl'] as String,
      updateTime: map['updateTime'] as String,
      url: map['url'] as String,
    );
  }
}
