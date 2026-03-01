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
    pulumi.Output<bool>? arp,
    required pulumi.Output<String> controlNodeId,
    required pulumi.Output<String> displayName,
    pulumi.Output<List<HoneypotProbeHoneypotBindList>>? honeypotBindLists,
    pulumi.Output<bool>? ping,
    required pulumi.Output<String> probeType,
    pulumi.Output<String>? probeVersion,
    pulumi.Output<String>? proxyIp,
    pulumi.Output<List<String>>? serviceIpLists,
    pulumi.Output<String>? uuid,
    pulumi.Output<String>? vpcId,
  }) :
      arp = pulumi.Input.asOptionalInput<bool>(arp),
      controlNodeId = pulumi.Input.asInput<String>(controlNodeId),
      displayName = pulumi.Input.asInput<String>(displayName),
      honeypotBindLists = pulumi.Input.asOptionalInput<List<HoneypotProbeHoneypotBindList>>(honeypotBindLists),
      ping = pulumi.Input.asOptionalInput<bool>(ping),
      probeType = pulumi.Input.asInput<String>(probeType),
      probeVersion = pulumi.Input.asOptionalInput<String>(probeVersion),
      proxyIp = pulumi.Input.asOptionalInput<String>(proxyIp),
      serviceIpLists = pulumi.Input.asOptionalInput<List<String>>(serviceIpLists),
      uuid = pulumi.Input.asOptionalInput<String>(uuid),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      arp: map['arp'] == null ? null : pulumi.Output.create<bool>(map['arp'] as bool),
      controlNodeId: pulumi.Output.create<String>(map['controlNodeId'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      honeypotBindLists: map['honeypotBindLists'] == null ? null : pulumi.Output.create<List<HoneypotProbeHoneypotBindList>>(pulumi.Input.decodeList<HoneypotProbeHoneypotBindList>(map['honeypotBindLists'], (value) => HoneypotProbeHoneypotBindList.fromMap((value as Map).cast<String, dynamic>()))),
      ping: map['ping'] == null ? null : pulumi.Output.create<bool>(map['ping'] as bool),
      probeType: pulumi.Output.create<String>(map['probeType'] as String),
      probeVersion: map['probeVersion'] == null ? null : pulumi.Output.create<String>(map['probeVersion'] as String),
      proxyIp: map['proxyIp'] == null ? null : pulumi.Output.create<String>(map['proxyIp'] as String),
      serviceIpLists: map['serviceIpLists'] == null ? null : pulumi.Output.create<List<String>>((map['serviceIpLists'] as List).cast<String>()),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

