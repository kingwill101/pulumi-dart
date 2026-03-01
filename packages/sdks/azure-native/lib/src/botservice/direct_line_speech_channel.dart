// ignore_for_file: unused_element, unnecessary_cast

import 'direct_line_speech_channel_properties.dart';

/// DirectLine Speech channel definition
class DirectLineSpeechChannel {
  /// The channel name
  /// Expected value is 'DirectLineSpeechChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to DirectLine Speech channel resource
  final DirectLineSpeechChannelProperties? properties;

  /// Creates a new [DirectLineSpeechChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to DirectLine Speech channel resource
  DirectLineSpeechChannel({
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

  factory DirectLineSpeechChannel.fromMap(Map<String, dynamic> map) {
    return DirectLineSpeechChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : DirectLineSpeechChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

