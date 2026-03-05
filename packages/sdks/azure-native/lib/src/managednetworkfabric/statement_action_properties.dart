// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_ip_community_properties.dart';
import 'action_ip_extended_community_properties.dart';

/// Route policy action properties.
class StatementActionProperties {
  /// Action type. Example: Permit | Deny | Continue.
  final pulumi.Input<String> actionType;
  /// IP Community Properties.
  final pulumi.Input<ActionIpCommunityProperties>? ipCommunityProperties;
  /// IP Extended Community Properties.
  final pulumi.Input<ActionIpExtendedCommunityProperties>? ipExtendedCommunityProperties;
  /// Local Preference of the route policy.
  final pulumi.Input<double>? localPreference;

  /// Creates a new [StatementActionProperties].
  /// [actionType] Action type. Example: Permit | Deny | Continue.
  /// [ipCommunityProperties] IP Community Properties.
  /// [ipExtendedCommunityProperties] IP Extended Community Properties.
  /// [localPreference] Local Preference of the route policy.
  StatementActionProperties({
    required this.actionType,
    this.ipCommunityProperties,
    this.ipExtendedCommunityProperties,
    this.localPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'ipCommunityProperties': ?pulumi.Input.mapOptionalInputValue<ActionIpCommunityProperties, Map<String, dynamic>>(ipCommunityProperties, (value) => value.toMap()),
      'ipExtendedCommunityProperties': ?pulumi.Input.mapOptionalInputValue<ActionIpExtendedCommunityProperties, Map<String, dynamic>>(ipExtendedCommunityProperties, (value) => value.toMap()),
      'localPreference': ?localPreference,
    };
  }

  factory StatementActionProperties.fromMap(Map<String, dynamic> map) {
    return StatementActionProperties(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      ipCommunityProperties: (() { final guardedValue = map['ipCommunityProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionIpCommunityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipExtendedCommunityProperties: (() { final guardedValue = map['ipExtendedCommunityProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionIpExtendedCommunityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localPreference: (() { final guardedValue = map['localPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

