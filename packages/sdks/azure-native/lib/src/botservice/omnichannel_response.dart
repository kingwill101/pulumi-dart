// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Omnichannel channel definition
class OmnichannelResponse {
  /// The channel name
  /// Expected value is 'Omnichannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String?>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String?>? location;
  /// Provisioning state of the resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [OmnichannelResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [provisioningState] Provisioning state of the resource
  OmnichannelResponse({
    required this.channelName,
    this.etag,
    pulumi.Input<String?>? location,
    required this.provisioningState,
  }) : location = location ?? pulumi.Input.fromValue('global');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'etag': ?etag,
      'location': ?location,
      'provisioningState': provisioningState,
    };
  }

  factory OmnichannelResponse.fromMap(Map<String, dynamic> map) {
    return OmnichannelResponse(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
