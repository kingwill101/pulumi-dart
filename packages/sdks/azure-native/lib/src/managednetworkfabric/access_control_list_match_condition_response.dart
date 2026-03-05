// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_list_port_condition_response.dart';
import 'ip_match_condition_response.dart';
import 'vlan_match_condition_response.dart';

/// Defines the match condition that is supported to filter the traffic.
class AccessControlListMatchConditionResponse {
  /// List of DSCP Markings that need to be matched.
  final pulumi.Input<List<String>>? dscpMarkings;
  /// List of ether type values that need to be matched.
  final pulumi.Input<List<String>>? etherTypes;
  /// List of IP fragment packets that need to be matched.
  final pulumi.Input<List<String>>? fragments;
  /// IP condition that needs to be matched.
  final pulumi.Input<IpMatchConditionResponse>? ipCondition;
  /// List of IP Lengths that need to be matched.
  final pulumi.Input<List<String>>? ipLengths;
  /// Defines the port condition that needs to be matched.
  final pulumi.Input<AccessControlListPortConditionResponse>? portCondition;
  /// List of the protocols that need to be matched.
  final pulumi.Input<List<String>>? protocolTypes;
  /// List of TTL [Time To Live] values that need to be matched.
  final pulumi.Input<List<String>>? ttlValues;
  /// Vlan match condition that needs to be matched.
  final pulumi.Input<VlanMatchConditionResponse>? vlanMatchCondition;

  /// Creates a new [AccessControlListMatchConditionResponse].
  /// [dscpMarkings] List of DSCP Markings that need to be matched.
  /// [etherTypes] List of ether type values that need to be matched.
  /// [fragments] List of IP fragment packets that need to be matched.
  /// [ipCondition] IP condition that needs to be matched.
  /// [ipLengths] List of IP Lengths that need to be matched.
  /// [portCondition] Defines the port condition that needs to be matched.
  /// [protocolTypes] List of the protocols that need to be matched.
  /// [ttlValues] List of TTL [Time To Live] values that need to be matched.
  /// [vlanMatchCondition] Vlan match condition that needs to be matched.
  AccessControlListMatchConditionResponse({
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
      'ipCondition': ?pulumi.Input.mapOptionalInputValue<IpMatchConditionResponse, Map<String, dynamic>>(ipCondition, (value) => value.toMap()),
      'ipLengths': ?ipLengths,
      'portCondition': ?pulumi.Input.mapOptionalInputValue<AccessControlListPortConditionResponse, Map<String, dynamic>>(portCondition, (value) => value.toMap()),
      'protocolTypes': ?protocolTypes,
      'ttlValues': ?ttlValues,
      'vlanMatchCondition': ?pulumi.Input.mapOptionalInputValue<VlanMatchConditionResponse, Map<String, dynamic>>(vlanMatchCondition, (value) => value.toMap()),
    };
  }

  factory AccessControlListMatchConditionResponse.fromMap(Map<String, dynamic> map) {
    return AccessControlListMatchConditionResponse(
      dscpMarkings: (() { final guardedValue = map['dscpMarkings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      etherTypes: (() { final guardedValue = map['etherTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fragments: (() { final guardedValue = map['fragments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipCondition: (() { final guardedValue = map['ipCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpMatchConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipLengths: (() { final guardedValue = map['ipLengths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      portCondition: (() { final guardedValue = map['portCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessControlListPortConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocolTypes: (() { final guardedValue = map['protocolTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ttlValues: (() { final guardedValue = map['ttlValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vlanMatchCondition: (() { final guardedValue = map['vlanMatchCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VlanMatchConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

