// ignore_for_file: unused_element, unnecessary_cast

import 'telephony_channel_properties_response.dart';

/// Telephony channel definition
class TelephonyChannelResponse {
  /// The channel name
  /// Expected value is 'TelephonyChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Telephony channel resource
  final TelephonyChannelPropertiesResponse? properties;
  /// Provisioning state of the resource
  final String provisioningState;

  /// Creates a new [TelephonyChannelResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Telephony channel resource
  /// [provisioningState] Provisioning state of the resource
  TelephonyChannelResponse({
    required this.channelName,
    this.etag,
    this.location,
    this.properties,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'etag': ?etag,
      'location': ?location,
      'properties': ?properties == null ? null : properties!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory TelephonyChannelResponse.fromMap(Map<String, dynamic> map) {
    return TelephonyChannelResponse(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : TelephonyChannelPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

