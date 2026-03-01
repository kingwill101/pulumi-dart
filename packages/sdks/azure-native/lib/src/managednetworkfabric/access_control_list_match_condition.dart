// ignore_for_file: unused_element, unnecessary_cast

import 'access_control_list_port_condition.dart';
import 'ip_match_condition.dart';
import 'vlan_match_condition.dart';

/// Defines the match condition that is supported to filter the traffic.
class AccessControlListMatchCondition {
  /// List of DSCP Markings that need to be matched.
  final List<String>? dscpMarkings;
  /// List of ether type values that need to be matched.
  final List<String>? etherTypes;
  /// List of IP fragment packets that need to be matched.
  final List<String>? fragments;
  /// IP condition that needs to be matched.
  final IpMatchCondition? ipCondition;
  /// List of IP Lengths that need to be matched.
  final List<String>? ipLengths;
  /// Defines the port condition that needs to be matched.
  final AccessControlListPortCondition? portCondition;
  /// List of the protocols that need to be matched.
  final List<String>? protocolTypes;
  /// List of TTL [Time To Live] values that need to be matched.
  final List<String>? ttlValues;
  /// Vlan match condition that needs to be matched.
  final VlanMatchCondition? vlanMatchCondition;

  /// Creates a new [AccessControlListMatchCondition].
  /// [dscpMarkings] List of DSCP Markings that need to be matched.
  /// [etherTypes] List of ether type values that need to be matched.
  /// [fragments] List of IP fragment packets that need to be matched.
  /// [ipCondition] IP condition that needs to be matched.
  /// [ipLengths] List of IP Lengths that need to be matched.
  /// [portCondition] Defines the port condition that needs to be matched.
  /// [protocolTypes] List of the protocols that need to be matched.
  /// [ttlValues] List of TTL [Time To Live] values that need to be matched.
  /// [vlanMatchCondition] Vlan match condition that needs to be matched.
  AccessControlListMatchCondition({
    this.dscpMarkings,
    this.etherTypes,
    this.fragments,
    this.ipCondition,
    this.ipLengths,
    this.portCondition,
    this.protocolTypes,
    this.ttlValues,
    this.vlanMatchCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpMarkings': ?dscpMarkings,
      'etherTypes': ?etherTypes,
      'fragments': ?fragments,
      'ipCondition': ?ipCondition == null ? null : ipCondition!.toMap(),
      'ipLengths': ?ipLengths,
      'portCondition': ?portCondition == null ? null : portCondition!.toMap(),
      'protocolTypes': ?protocolTypes,
      'ttlValues': ?ttlValues,
      'vlanMatchCondition': ?vlanMatchCondition == null ? null : vlanMatchCondition!.toMap(),
    };
  }

  factory AccessControlListMatchCondition.fromMap(Map<String, dynamic> map) {
    return AccessControlListMatchCondition(
      dscpMarkings: map['dscpMarkings'] == null ? null : (map['dscpMarkings'] as List).cast<String>(),
      etherTypes: map['etherTypes'] == null ? null : (map['etherTypes'] as List).cast<String>(),
      fragments: map['fragments'] == null ? null : (map['fragments'] as List).cast<String>(),
      ipCondition: map['ipCondition'] == null ? null : IpMatchCondition.fromMap((map['ipCondition'] as Map).cast<String, dynamic>()),
      ipLengths: map['ipLengths'] == null ? null : (map['ipLengths'] as List).cast<String>(),
      portCondition: map['portCondition'] == null ? null : AccessControlListPortCondition.fromMap((map['portCondition'] as Map).cast<String, dynamic>()),
      protocolTypes: map['protocolTypes'] == null ? null : (map['protocolTypes'] as List).cast<String>(),
      ttlValues: map['ttlValues'] == null ? null : (map['ttlValues'] as List).cast<String>(),
      vlanMatchCondition: map['vlanMatchCondition'] == null ? null : VlanMatchCondition.fromMap((map['vlanMatchCondition'] as Map).cast<String, dynamic>()),
    );
  }
}

