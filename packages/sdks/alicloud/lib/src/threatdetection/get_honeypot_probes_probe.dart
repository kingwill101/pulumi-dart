// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_honeypot_probes_probe_honeypot_bind_list.dart';

class GetHoneypotProbesProbe {
  /// ARP spoofing detection.-**true**: Enable-**false**: Disabled. Available when `enable_details` is on.
  final pulumi.Input<bool> arp;

  /// The ID of the management node.
  final pulumi.Input<String> controlNodeId;

  /// Probe name
  final pulumi.Input<String> displayName;
  final pulumi.Input<List<GetHoneypotProbesProbeHoneypotBindList>>
  honeypotBindLists;

  /// The first ID of the resource
  final pulumi.Input<String> honeypotProbeId;

  /// The ID of the honeypot probe. Its value is the same as `honeypot_probe_id`.
  final pulumi.Input<String> id;

  /// Ping scan detection. Value:**true**: Enable **false**: Disabled. Available when `enable_details` is on.
  final pulumi.Input<bool> ping;

  /// Probe type
  final pulumi.Input<String> probeType;

  /// Listen to the IP address list. Available when `enable_details` is on.
  final pulumi.Input<List<String>> serviceIpLists;

  /// The status of the resource.
  final pulumi.Input<String> status;

  /// Machine uuid. Has a value when the type is `host_probe`.
  final pulumi.Input<String> uuid;

  /// The ID of the VPC. Has a value when the type is `vpc_black_hole_probe`.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetHoneypotProbesProbe].
  /// [arp] ARP spoofing detection.-**true**: Enable-**false**: Disabled. Available when `enable_details` is on.
  /// [controlNodeId] The ID of the management node.
  /// [displayName] Probe name
  /// [honeypotBindLists] Required.
  /// [honeypotProbeId] The first ID of the resource
  /// [id] The ID of the honeypot probe. Its value is the same as `honeypot_probe_id`.
  /// [ping] Ping scan detection. Value:**true**: Enable **false**: Disabled. Available when `enable_details` is on.
  /// [probeType] Probe type
  /// [serviceIpLists] Listen to the IP address list. Available when `enable_details` is on.
  /// [status] The status of the resource.
  /// [uuid] Machine uuid. Has a value when the type is `host_probe`.
  /// [vpcId] The ID of the VPC. Has a value when the type is `vpc_black_hole_probe`.
  GetHoneypotProbesProbe({
    required this.arp,
    required this.controlNodeId,
    required this.displayName,
    required this.honeypotBindLists,
    required this.honeypotProbeId,
    required this.id,
    required this.ping,
    required this.probeType,
    required this.serviceIpLists,
    required this.status,
    required this.uuid,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arp': arp,
      'controlNodeId': controlNodeId,
      'displayName': displayName,
      'honeypotBindLists':
          pulumi.Input.mapInputValue<
            List<GetHoneypotProbesProbeHoneypotBindList>,
            List<Map<String, dynamic>>
          >(
            honeypotBindLists,
            (value) =>
                pulumi.Input.encodeList<
                  GetHoneypotProbesProbeHoneypotBindList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'honeypotProbeId': honeypotProbeId,
      'id': id,
      'ping': ping,
      'probeType': probeType,
      'serviceIpLists': serviceIpLists,
      'status': status,
      'uuid': uuid,
      'vpcId': vpcId,
    };
  }

  factory GetHoneypotProbesProbe.fromMap(Map<String, dynamic> map) {
    return GetHoneypotProbesProbe(
      arp: pulumi.Input.fromValue(map['arp'] as bool),
      controlNodeId: pulumi.Input.fromValue(map['controlNodeId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      honeypotBindLists: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetHoneypotProbesProbeHoneypotBindList>(
          map['honeypotBindLists']!,
          (value) => GetHoneypotProbesProbeHoneypotBindList.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      honeypotProbeId: pulumi.Input.fromValue(map['honeypotProbeId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ping: pulumi.Input.fromValue(map['ping'] as bool),
      probeType: pulumi.Input.fromValue(map['probeType'] as String),
      serviceIpLists: pulumi.Input.fromValue(
        (map['serviceIpLists'] as List).cast<String>(),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
