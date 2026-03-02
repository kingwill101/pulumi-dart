// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telephony_channel_properties.dart';

/// Telephony channel definition
class TelephonyChannel {
  /// The channel name
  /// Expected value is 'TelephonyChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// The set of properties specific to Telephony channel resource
  final pulumi.Input<TelephonyChannelProperties>? properties;

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
      'properties': ?pulumi.Input.mapOptionalInputValue<TelephonyChannelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory TelephonyChannel.fromMap(Map<String, dynamic> map) {
    return TelephonyChannel(
      channelName: (map['channelName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (TelephonyChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

