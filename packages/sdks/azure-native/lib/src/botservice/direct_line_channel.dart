// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'direct_line_channel_properties.dart';

/// Direct Line channel definition
class DirectLineChannel {
  /// The channel name
  /// Expected value is 'DirectLineChannel'.
  final pulumi.Input<String> channelName;

  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;

  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;

  /// The set of properties specific to Direct Line channel resource
  final pulumi.Input<DirectLineChannelProperties>? properties;

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
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            DirectLineChannelProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory DirectLineChannel.fromMap(Map<String, dynamic> map) {
    return DirectLineChannel(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DirectLineChannelProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
