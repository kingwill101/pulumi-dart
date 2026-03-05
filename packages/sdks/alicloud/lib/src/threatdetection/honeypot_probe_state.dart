// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'honeypot_probe_honeypot_bind_list.dart';

/// Input properties used for looking up and filtering HoneypotProbe resources.
class HoneypotProbeState {
  /// ARP spoofing detection.**true**: Enable **false**: Disabled
  final pulumi.Input<bool>? arp;
  /// The ID of the management node.
  final pulumi.Input<String>? controlNodeId;
  /// Probe display name.
  final pulumi.Input<String>? displayName;
  /// Configure the service.See the following `Block HoneypotBindList`.
  final pulumi.Input<List<HoneypotProbeHoneypotBindList>>? honeypotBindLists;
  /// The first ID of the resource
  final pulumi.Input<String>? honeypotProbeId;
  /// Ping scan detection. Value: **true**: Enable **false**: Disabled
  final pulumi.Input<bool>? ping;
  /// Probe type, support `host_probe` and `vpc_black_hole_probe`.
  final pulumi.Input<String>? probeType;
  /// The version of the probe.
  final pulumi.Input<String>? probeVersion;
  /// The IP address of the proxy.
  final pulumi.Input<String>? proxyIp;
  /// Listen to the IP address list.
  final pulumi.Input<List<String>>? serviceIpLists;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// Machine uuid, **probe_type** is `host_probe`. This value cannot be empty.
  final pulumi.Input<String>? uuid;
  /// The ID of the VPC. **probe_type** is `vpc_black_hole_probe`. This value cannot be empty.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [HoneypotProbeState].
  /// [arp] ARP spoofing detection.**true**: Enable **false**: Disabled
  /// [controlNodeId] The ID of the management node.
  /// [displayName] Probe display name.
  /// [honeypotBindLists] Configure the service.See the following `Block HoneypotBindList`.
  /// [honeypotProbeId] The first ID of the resource
  /// [ping] Ping scan detection. Value: **true**: Enable **false**: Disabled
  /// [probeType] Probe type, support `host_probe` and `vpc_black_hole_probe`.
  /// [probeVersion] The version of the probe.
  /// [proxyIp] The IP address of the proxy.
  /// [serviceIpLists] Listen to the IP address list.
  /// [status] The status of the resource
  /// [uuid] Machine uuid, **probe_type** is `host_probe`. This value cannot be empty.
  /// [vpcId] The ID of the VPC. **probe_type** is `vpc_black_hole_probe`. This value cannot be empty.
  HoneypotProbeState({
    this.arp,
    this.controlNodeId,
    this.displayName,
    this.honeypotBindLists,
    this.honeypotProbeId,
    this.ping,
    this.probeType,
    this.probeVersion,
    this.proxyIp,
    this.serviceIpLists,
    this.status,
    this.uuid,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arp': ?arp,
      'controlNodeId': ?controlNodeId,
      'displayName': ?displayName,
      'honeypotBindLists': ?pulumi.Input.mapOptionalInputValue<List<HoneypotProbeHoneypotBindList>, List<Map<String, dynamic>>>(honeypotBindLists, (value) => pulumi.Input.encodeList<HoneypotProbeHoneypotBindList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'honeypotProbeId': ?honeypotProbeId,
      'ping': ?ping,
      'probeType': ?probeType,
      'probeVersion': ?probeVersion,
      'proxyIp': ?proxyIp,
      'serviceIpLists': ?serviceIpLists,
      'status': ?status,
      'uuid': ?uuid,
      'vpcId': ?vpcId,
    };
  }

  factory HoneypotProbeState.fromMap(Map<String, dynamic> map) {
    return HoneypotProbeState(
      arp: (() { final guardedValue = map['arp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      controlNodeId: (() { final guardedValue = map['controlNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      honeypotBindLists: (() { final guardedValue = map['honeypotBindLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HoneypotProbeHoneypotBindList>(guardedValue, (value) => HoneypotProbeHoneypotBindList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      honeypotProbeId: (() { final guardedValue = map['honeypotProbeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ping: (() { final guardedValue = map['ping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      probeType: (() { final guardedValue = map['probeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      probeVersion: (() { final guardedValue = map['probeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyIp: (() { final guardedValue = map['proxyIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceIpLists: (() { final guardedValue = map['serviceIpLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

