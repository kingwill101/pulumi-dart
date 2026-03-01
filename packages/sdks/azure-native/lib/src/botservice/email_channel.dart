// ignore_for_file: unused_element, unnecessary_cast

import 'email_channel_properties.dart';

/// Email channel definition
class EmailChannel {
  /// The channel name
  /// Expected value is 'EmailChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to email channel resource
  final EmailChannelProperties? properties;

  /// Creates a new [EmailChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to email channel resource
  EmailChannel({
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

  factory EmailChannel.fromMap(Map<String, dynamic> map) {
    return EmailChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : EmailChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

