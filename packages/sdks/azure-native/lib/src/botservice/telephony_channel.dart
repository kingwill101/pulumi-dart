// ignore_for_file: unused_element, unnecessary_cast

import 'telephony_channel_properties.dart';

/// Telephony channel definition
class TelephonyChannel {
  /// The channel name
  /// Expected value is 'TelephonyChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Telephony channel resource
  final TelephonyChannelProperties? properties;

  /// Creates a new [TelephonyChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Telephony channel resource
  TelephonyChannel({
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

  factory TelephonyChannel.fromMap(Map<String, dynamic> map) {
    return TelephonyChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : TelephonyChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

