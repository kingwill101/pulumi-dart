// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getChannel.
class GetChannelResult {
  /// The activation token for the channel. The token must be used by the provider to register the channel for publishing.
  final String activationToken;

  /// The creation time.
  final String createTime;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final String cryptoKeyName;

  /// The resource name of the channel. Must be unique within the location on the project and must be in `projects/{project}/locations/{location}/channels/{channel_id}` format.
  final String name;

  /// The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  final String provider;

  /// The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{project}/topics/{topic_id}`.
  final String pubsubTopic;

  /// The state of a Channel.
  final String state;

  /// Server assigned unique identifier for the channel. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  final String uid;

  /// The last-modified time.
  final String updateTime;

  GetChannelResult({
    required this.activationToken,
    required this.createTime,
    required this.cryptoKeyName,
    required this.name,
    required this.provider,
    required this.pubsubTopic,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activationToken'] = activationToken;
    map['createTime'] = createTime;
    map['cryptoKeyName'] = cryptoKeyName;
    map['name'] = name;
    map['provider'] = provider;
    map['pubsubTopic'] = pubsubTopic;
    map['state'] = state;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetChannelResult.fromMap(Map<String, dynamic> map) {
    return GetChannelResult(
      activationToken: map['activationToken'] as String,
      createTime: map['createTime'] as String,
      cryptoKeyName: map['cryptoKeyName'] as String,
      name: map['name'] as String,
      provider: map['provider'] as String,
      pubsubTopic: map['pubsubTopic'] as String,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
