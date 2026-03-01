// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_groundstation_response.dart';

/// List of authorized spacecraft links per ground station and the expiration date of the authorization.
class SpacecraftLinkResponse {
  /// Authorized Ground Stations
  final List<AuthorizedGroundstationResponse> authorizations;
  /// Bandwidth in MHz.
  final double bandwidthMHz;
  /// Center Frequency in MHz.
  final double centerFrequencyMHz;
  /// Direction (Uplink or Downlink).
  final String direction;
  /// Link name.
  final String name;
  /// Polarization. e.g. (RHCP, LHCP).
  final String polarization;

  /// Creates a new [SpacecraftLinkResponse].
  /// [authorizations] Authorized Ground Stations
  /// [bandwidthMHz] Bandwidth in MHz.
  /// [centerFrequencyMHz] Center Frequency in MHz.
  /// [direction] Direction (Uplink or Downlink).
  /// [name] Link name.
  /// [polarization] Polarization. e.g. (RHCP, LHCP).
  SpacecraftLinkResponse({
    required this.authorizations,
    required this.bandwidthMHz,
    required this.centerFrequencyMHz,
    required this.direction,
    required this.name,
    required this.polarization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': pulumi.Input.encodeList<AuthorizedGroundstationResponse, Map<String, dynamic>>(authorizations, (value) => value.toMap()),
      'bandwidthMHz': bandwidthMHz,
      'centerFrequencyMHz': centerFrequencyMHz,
      'direction': direction,
      'name': name,
      'polarization': polarization,
    };
  }

  factory SpacecraftLinkResponse.fromMap(Map<String, dynamic> map) {
    return SpacecraftLinkResponse(
      authorizations: pulumi.Input.decodeList<AuthorizedGroundstationResponse>(map['authorizations'], (value) => AuthorizedGroundstationResponse.fromMap((value as Map).cast<String, dynamic>())),
      bandwidthMHz: map['bandwidthMHz'] as double,
      centerFrequencyMHz: map['centerFrequencyMHz'] as double,
      direction: map['direction'] as String,
      name: map['name'] as String,
      polarization: map['polarization'] as String,
    );
  }
}

