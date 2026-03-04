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
      'honeypotBindLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<HoneypotProbeHoneypotBindList>,
            List<Map<String, dynamic>>
          >(
            honeypotBindLists,
            (value) =>
                pulumi.Input.encodeList<
                  HoneypotProbeHoneypotBindList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      arp: (() {
        final guardedValue = map['arp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      controlNodeId: pulumi.Input.fromValue(map['controlNodeId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      honeypotBindLists: (() {
        final guardedValue = map['honeypotBindLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HoneypotProbeHoneypotBindList>(
            guardedValue,
            (value) => HoneypotProbeHoneypotBindList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ping: (() {
        final guardedValue = map['ping'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      probeType: pulumi.Input.fromValue(map['probeType'] as String),
      probeVersion: (() {
        final guardedValue = map['probeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      proxyIp: (() {
        final guardedValue = map['proxyIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceIpLists: (() {
        final guardedValue = map['serviceIpLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      uuid: (() {
        final guardedValue = map['uuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
