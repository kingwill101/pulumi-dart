// ignore_for_file: unused_element, unnecessary_cast

import 'telegram_channel_properties.dart';

/// Telegram channel definition
class TelegramChannel {
  /// The channel name
  /// Expected value is 'TelegramChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Telegram channel resource
  final TelegramChannelProperties? properties;

  /// Creates a new [TelegramChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Telegram channel resource
  TelegramChannel({
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

  factory TelegramChannel.fromMap(Map<String, dynamic> map) {
    return TelegramChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : TelegramChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

