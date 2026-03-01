// ignore_for_file: unused_element, unnecessary_cast

import 'line_channel_properties.dart';

/// Line channel definition
class LineChannel {
  /// The channel name
  /// Expected value is 'LineChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to line channel resource
  final LineChannelProperties? properties;

  /// Creates a new [LineChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to line channel resource
  LineChannel({
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

  factory LineChannel.fromMap(Map<String, dynamic> map) {
    return LineChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : LineChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

