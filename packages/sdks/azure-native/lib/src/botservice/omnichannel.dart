// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Omnichannel channel definition
class Omnichannel {
  /// The channel name
  /// Expected value is 'Omnichannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;

  /// Creates a new [Omnichannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  const Omnichannel({
    required this.channelName,
    this.etag,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'etag': ?etag,
      'location': ?location,
    };
  }

  factory Omnichannel.fromMap(Map<String, dynamic> map) {
    return Omnichannel(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
