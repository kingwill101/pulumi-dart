// ignore_for_file: unused_element, unnecessary_cast

import 'skype_channel_properties.dart';

/// Skype channel definition
class SkypeChannel {
  /// The channel name
  /// Expected value is 'SkypeChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Skype channel resource
  final SkypeChannelProperties? properties;

  /// Creates a new [SkypeChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Skype channel resource
  SkypeChannel({
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

  factory SkypeChannel.fromMap(Map<String, dynamic> map) {
    return SkypeChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : SkypeChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

