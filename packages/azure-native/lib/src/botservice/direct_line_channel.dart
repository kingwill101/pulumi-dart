// ignore_for_file: unused_element, unnecessary_cast

import 'direct_line_channel_properties.dart';

/// Direct Line channel definition
class DirectLineChannel {
  /// The channel name
  /// Expected value is 'DirectLineChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Direct Line channel resource
  final DirectLineChannelProperties? properties;

  /// Creates a new [DirectLineChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Direct Line channel resource
  DirectLineChannel({
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

  factory DirectLineChannel.fromMap(Map<String, dynamic> map) {
    return DirectLineChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : DirectLineChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

