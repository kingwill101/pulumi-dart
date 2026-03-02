// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'honeypot_probe_honeypot_bind_list.dart';

/// {@template pulumi_threatdetection_honeypot_probe_honeypot_probe_args_doc}
/// The set of arguments for HoneypotProbe.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_honeypot_probe_honeypot_probe_args_doc}
class HoneypotProbeArgs {
  /// ARP spoofing detection.**true**: Enable **false**: Disabled
  final pulumi.Input<bool>? arp;
  /// The ID of the management node.
  final pulumi.Input<String> controlNodeId;
  /// Probe display name.
  final pulumi.Input<String> displayName;
  /// Configure the service.See the following `Block HoneypotBindList`.
  final pulumi.Input<List<HoneypotProbeHoneypotBindList>>? honeypotBindLists;
  /// Ping scan detection. Value: **true**: Enable **false**: Disabled
  final pulumi.Input<bool>? ping;
  /// Probe type, support `host_probe` and `vpc_black_hole_probe`.
  final pulumi.Input<String> probeType;
  /// The version of the probe.
  final pulumi.Input<String>? probeVersion;
  /// The IP address of the proxy.
  final pulumi.Input<String>? proxyIp;
  /// Listen to the IP address list.
  final pulumi.Input<List<String>>? serviceIpLists;
  /// Machine uuid, **probe_type** is `host_probe`. This value cannot be empty.
  final pulumi.Input<String>? uuid;
  /// The ID of the VPC. **probe_type** is `vpc_black_hole_probe`. This value cannot be empty.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [HoneypotProbeArgs].
  /// [arp] ARP spoofing detection.**true**: Enable **false**: Disabled
  /// [controlNodeId] The ID of the management node.
  /// [displayName] Probe display name.
  /// [honeypotBindLists] Configure the service.See the following `Block HoneypotBindList`.
  /// [ping] Ping scan detection. Value: **true**: Enable **false**: Disabled
  /// [probeType] Probe type, support `host_probe` and `vpc_black_hole_probe`.
  /// [probeVersion] The version of the probe.
  /// [proxyIp] The IP address of the proxy.
  /// [serviceIpLists] Listen to the IP address list.
  /// [uuid] Machine uuid, **probe_type** is `host_probe`. This value cannot be empty.
  /// [vpcId] The ID of the VPC. **probe_type** is `vpc_black_hole_probe`. This value cannot be empty.
  HoneypotProbeArgs({
    this.arp,
    required this.controlNodeId,
    required this.displayName,
    this.honeypotBindLists,
    this.ping,
    required this.probeType,
    this.probeVersion,
    this.proxyIp,
    this.serviceIpLists,
    this.uuid,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arp': ?arp,
      'controlNodeId': controlNodeId,
      'displayName': displayName,
      'honeypotBindLists': ?pulumi.Input.mapOptionalInputValue<List<HoneypotProbeHoneypotBindList>, List<Map<String, dynamic>>>(honeypotBindLists, (value) => pulumi.Input.encodeList<HoneypotProbeHoneypotBindList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ping': ?ping,
      'probeType': probeType,
      'probeVersion': ?probeVersion,
      'proxyIp': ?proxyIp,
      'serviceIpLists': ?serviceIpLists,
      'uuid': ?uuid,
      'vpcId': ?vpcId,
    };
  }

  factory HoneypotProbeArgs.fromMap(Map<String, dynamic> map) {
    return HoneypotProbeArgs(
      arp: map['arp'] == null ? null : (map['arp'] as bool).input(),
      controlNodeId: (map['controlNodeId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      honeypotBindLists: map['honeypotBindLists'] == null ? null : (pulumi.Input.decodeList<HoneypotProbeHoneypotBindList>(map['honeypotBindLists'], (value) => HoneypotProbeHoneypotBindList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ping: map['ping'] == null ? null : (map['ping'] as bool).input(),
      probeType: (map['probeType'] as String).input(),
      probeVersion: map['probeVersion'] == null ? null : (map['probeVersion'] as String).input(),
      proxyIp: map['proxyIp'] == null ? null : (map['proxyIp'] as String).input(),
      serviceIpLists: map['serviceIpLists'] == null ? null : ((map['serviceIpLists'] as List).cast<String>()).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

