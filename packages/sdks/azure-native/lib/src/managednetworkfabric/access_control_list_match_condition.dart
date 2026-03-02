// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_list_port_condition.dart';
import 'ip_match_condition.dart';
import 'vlan_match_condition.dart';

/// Defines the match condition that is supported to filter the traffic.
class AccessControlListMatchCondition {
  /// List of DSCP Markings that need to be matched.
  final pulumi.Input<List<String>>? dscpMarkings;
  /// List of ether type values that need to be matched.
  final pulumi.Input<List<String>>? etherTypes;
  /// List of IP fragment packets that need to be matched.
  final pulumi.Input<List<String>>? fragments;
  /// IP condition that needs to be matched.
  final pulumi.Input<IpMatchCondition>? ipCondition;
  /// List of IP Lengths that need to be matched.
  final pulumi.Input<List<String>>? ipLengths;
  /// Defines the port condition that needs to be matched.
  final pulumi.Input<AccessControlListPortCondition>? portCondition;
  /// List of the protocols that need to be matched.
  final pulumi.Input<List<String>>? protocolTypes;
  /// List of TTL [Time To Live] values that need to be matched.
  final pulumi.Input<List<String>>? ttlValues;
  /// Vlan match condition that needs to be matched.
  final pulumi.Input<VlanMatchCondition>? vlanMatchCondition;

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
      'ipCondition': ?pulumi.Input.mapOptionalInputValue<IpMatchCondition, Map<String, dynamic>>(ipCondition, (value) => value.toMap()),
      'ipLengths': ?ipLengths,
      'portCondition': ?pulumi.Input.mapOptionalInputValue<AccessControlListPortCondition, Map<String, dynamic>>(portCondition, (value) => value.toMap()),
      'protocolTypes': ?protocolTypes,
      'ttlValues': ?ttlValues,
      'vlanMatchCondition': ?pulumi.Input.mapOptionalInputValue<VlanMatchCondition, Map<String, dynamic>>(vlanMatchCondition, (value) => value.toMap()),
    };
  }

  factory AccessControlListMatchCondition.fromMap(Map<String, dynamic> map) {
    return AccessControlListMatchCondition(
      dscpMarkings: map['dscpMarkings'] == null ? null : ((map['dscpMarkings'] as List).cast<String>()).input(),
      etherTypes: map['etherTypes'] == null ? null : ((map['etherTypes'] as List).cast<String>()).input(),
      fragments: map['fragments'] == null ? null : ((map['fragments'] as List).cast<String>()).input(),
      ipCondition: map['ipCondition'] == null ? null : (IpMatchCondition.fromMap((map['ipCondition'] as Map).cast<String, dynamic>())).input(),
      ipLengths: map['ipLengths'] == null ? null : ((map['ipLengths'] as List).cast<String>()).input(),
      portCondition: map['portCondition'] == null ? null : (AccessControlListPortCondition.fromMap((map['portCondition'] as Map).cast<String, dynamic>())).input(),
      protocolTypes: map['protocolTypes'] == null ? null : ((map['protocolTypes'] as List).cast<String>()).input(),
      ttlValues: map['ttlValues'] == null ? null : ((map['ttlValues'] as List).cast<String>()).input(),
      vlanMatchCondition: map['vlanMatchCondition'] == null ? null : (VlanMatchCondition.fromMap((map['vlanMatchCondition'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

