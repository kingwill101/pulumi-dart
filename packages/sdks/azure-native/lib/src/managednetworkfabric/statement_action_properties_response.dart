// ignore_for_file: unused_element, unnecessary_cast

import 'action_ip_community_properties_response.dart';
import 'action_ip_extended_community_properties_response.dart';

/// Route policy action properties.
class StatementActionPropertiesResponse {
  /// Action type. Example: Permit | Deny | Continue.
  final String actionType;
  /// IP Community Properties.
  final ActionIpCommunityPropertiesResponse? ipCommunityProperties;
  /// IP Extended Community Properties.
  final ActionIpExtendedCommunityPropertiesResponse? ipExtendedCommunityProperties;
  /// Local Preference of the route policy.
  final double? localPreference;

  /// Creates a new [StatementActionPropertiesResponse].
  /// [actionType] Action type. Example: Permit | Deny | Continue.
  /// [ipCommunityProperties] IP Community Properties.
  /// [ipExtendedCommunityProperties] IP Extended Community Properties.
  /// [localPreference] Local Preference of the route policy.
  StatementActionPropertiesResponse({
    required this.actionType,
    this.ipCommunityProperties,
    this.ipExtendedCommunityProperties,
    this.localPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'ipCommunityProperties': ?ipCommunityProperties == null ? null : ipCommunityProperties!.toMap(),
      'ipExtendedCommunityProperties': ?ipExtendedCommunityProperties == null ? null : ipExtendedCommunityProperties!.toMap(),
      'localPreference': ?localPreference,
    };
  }

  factory StatementActionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StatementActionPropertiesResponse(
      actionType: map['actionType'] as String,
      ipCommunityProperties: map['ipCommunityProperties'] == null ? null : ActionIpCommunityPropertiesResponse.fromMap((map['ipCommunityProperties'] as Map).cast<String, dynamic>()),
      ipExtendedCommunityProperties: map['ipExtendedCommunityProperties'] == null ? null : ActionIpExtendedCommunityPropertiesResponse.fromMap((map['ipExtendedCommunityProperties'] as Map).cast<String, dynamic>()),
      localPreference: map['localPreference'] == null ? null : map['localPreference'] as double,
    );
  }
}

