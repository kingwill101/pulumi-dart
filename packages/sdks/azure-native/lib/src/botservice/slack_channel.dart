// ignore_for_file: unused_element, unnecessary_cast

import 'slack_channel_properties.dart';

/// Slack channel definition
class SlackChannel {
  /// The channel name
  /// Expected value is 'SlackChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Slack channel resource
  final SlackChannelProperties? properties;

  /// Creates a new [SlackChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Slack channel resource
  SlackChannel({
    required this.channelName,
    this.etag,
    this.location,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'etag': ?etag,
      'location': ?location,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory SlackChannel.fromMap(Map<String, dynamic> map) {
    return SlackChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : SlackChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

