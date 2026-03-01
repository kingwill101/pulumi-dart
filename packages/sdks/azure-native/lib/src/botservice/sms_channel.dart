// ignore_for_file: unused_element, unnecessary_cast

import 'sms_channel_properties.dart';

/// Sms channel definition
class SmsChannel {
  /// The channel name
  /// Expected value is 'SmsChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Sms channel resource
  final SmsChannelProperties? properties;

  /// Creates a new [SmsChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Sms channel resource
  SmsChannel({
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

  factory SmsChannel.fromMap(Map<String, dynamic> map) {
    return SmsChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : SmsChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

