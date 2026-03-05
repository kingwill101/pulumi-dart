// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_honeypot_probes_probe_honeypot_bind_list_bind_port_list.dart';

class GetHoneypotProbesProbeHoneypotBindList {
  /// List of listening ports. Available when `enable_details` is on.
  final pulumi.Input<List<GetHoneypotProbesProbeHoneypotBindListBindPortList>> bindPortLists;
  final pulumi.Input<String> honeypotId;

  /// Creates a new [GetHoneypotProbesProbeHoneypotBindList].
  /// [bindPortLists] List of listening ports. Available when `enable_details` is on.
  /// [honeypotId] Required.
  GetHoneypotProbesProbeHoneypotBindList({
    required this.bindPortLists,
    required this.honeypotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindPortLists': pulumi.Input.mapInputValue<List<GetHoneypotProbesProbeHoneypotBindListBindPortList>, List<Map<String, dynamic>>>(bindPortLists, (value) => pulumi.Input.encodeList<GetHoneypotProbesProbeHoneypotBindListBindPortList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'honeypotId': honeypotId,
    };
  }

  factory GetHoneypotProbesProbeHoneypotBindList.fromMap(Map<String, dynamic> map) {
    return GetHoneypotProbesProbeHoneypotBindList(
      bindPortLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetHoneypotProbesProbeHoneypotBindListBindPortList>(map['bindPortLists']!, (value) => GetHoneypotProbesProbeHoneypotBindListBindPortList.fromMap((value as Map).cast<String, dynamic>()))),
      honeypotId: pulumi.Input.fromValue(map['honeypotId'] as String),
    );
  }
}

