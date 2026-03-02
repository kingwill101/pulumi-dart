// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Omnichannel channel definition
class OmnichannelResponse {
  /// The channel name
  /// Expected value is 'Omnichannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
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
    this.location,
    required this.provisioningState,
  });

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
      channelName: (map['channelName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

