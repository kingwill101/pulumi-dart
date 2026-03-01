// ignore_for_file: unused_element, unnecessary_cast

import 'kik_channel_properties_response.dart';

/// Kik channel definition
class KikChannelResponse {
  /// The channel name
  /// Expected value is 'KikChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Kik channel resource
  final KikChannelPropertiesResponse? properties;
  /// Provisioning state of the resource
  final String provisioningState;

  /// Creates a new [KikChannelResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Kik channel resource
  /// [provisioningState] Provisioning state of the resource
  KikChannelResponse({
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

  factory KikChannelResponse.fromMap(Map<String, dynamic> map) {
    return KikChannelResponse(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : KikChannelPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

