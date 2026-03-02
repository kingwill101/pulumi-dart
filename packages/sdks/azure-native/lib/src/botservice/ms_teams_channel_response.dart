// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ms_teams_channel_properties_response.dart';

/// Microsoft Teams channel definition
class MsTeamsChannelResponse {
  /// The channel name
  /// Expected value is 'MsTeamsChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// The set of properties specific to Microsoft Teams channel resource
  final pulumi.Input<MsTeamsChannelPropertiesResponse>? properties;
  /// Provisioning state of the resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [MsTeamsChannelResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Microsoft Teams channel resource
  /// [provisioningState] Provisioning state of the resource
  MsTeamsChannelResponse({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<MsTeamsChannelPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory MsTeamsChannelResponse.fromMap(Map<String, dynamic> map) {
    return MsTeamsChannelResponse(
      channelName: (map['channelName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (MsTeamsChannelPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

