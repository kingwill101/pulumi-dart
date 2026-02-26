// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getHostingChannel.
class GetHostingChannelResult {
  final String channelId;
  final Map<String, String> effectiveLabels;
  final String expireTime;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;

  /// The fully-qualified resource name for the channel, in the format: `sites/{{site_id}}/channels/{{channel_id}}`.
  final String name;
  final Map<String, String> pulumiLabels;
  final int retainedReleaseCount;
  final String siteId;
  final String ttl;

  GetHostingChannelResult({
    required this.channelId,
    required this.effectiveLabels,
    required this.expireTime,
    required this.id,
    required this.labels,
    required this.name,
    required this.pulumiLabels,
    required this.retainedReleaseCount,
    required this.siteId,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelId'] = channelId;
    map['effectiveLabels'] = effectiveLabels;
    map['expireTime'] = expireTime;
    map['id'] = id;
    map['labels'] = labels;
    map['name'] = name;
    map['pulumiLabels'] = pulumiLabels;
    map['retainedReleaseCount'] = retainedReleaseCount;
    map['siteId'] = siteId;
    map['ttl'] = ttl;
    return map;
  }

  factory GetHostingChannelResult.fromMap(Map<String, dynamic> map) {
    return GetHostingChannelResult(
      channelId: map['channelId'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      retainedReleaseCount: map['retainedReleaseCount'] as int,
      siteId: map['siteId'] as String,
      ttl: map['ttl'] as String,
    );
  }
}
