// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_chat_channel_properties.dart';

/// Web Chat channel definition
class WebChatChannel {
  /// The channel name
  /// Expected value is 'WebChatChannel'.
  final pulumi.Input<String> channelName;

  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;

  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;

  /// The set of properties specific to Web Chat channel resource
  final pulumi.Input<WebChatChannelProperties>? properties;

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
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            WebChatChannelProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory WebChatChannel.fromMap(Map<String, dynamic> map) {
    return WebChatChannel(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebChatChannelProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
