// ignore_for_file: unused_element, unnecessary_cast

import 'web_chat_channel_properties.dart';

/// Web Chat channel definition
class WebChatChannel {
  /// The channel name
  /// Expected value is 'WebChatChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Web Chat channel resource
  final WebChatChannelProperties? properties;

  /// Creates a new [WebChatChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Web Chat channel resource
  WebChatChannel({
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

  factory WebChatChannel.fromMap(Map<String, dynamic> map) {
    return WebChatChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : WebChatChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

