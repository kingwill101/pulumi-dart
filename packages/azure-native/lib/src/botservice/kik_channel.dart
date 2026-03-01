// ignore_for_file: unused_element, unnecessary_cast

import 'kik_channel_properties.dart';

/// Kik channel definition
class KikChannel {
  /// The channel name
  /// Expected value is 'KikChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Kik channel resource
  final KikChannelProperties? properties;

  /// Creates a new [KikChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Kik channel resource
  KikChannel({
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

  factory KikChannel.fromMap(Map<String, dynamic> map) {
    return KikChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : KikChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

