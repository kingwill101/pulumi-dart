// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Outlook channel definition
class OutlookChannelResponse {
  /// The channel name
  /// Expected value is 'OutlookChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// Provisioning state of the resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [OutlookChannelResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [provisioningState] Provisioning state of the resource
  OutlookChannelResponse({
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

  factory OutlookChannelResponse.fromMap(Map<String, dynamic> map) {
    return OutlookChannelResponse(
      channelName: (map['channelName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

