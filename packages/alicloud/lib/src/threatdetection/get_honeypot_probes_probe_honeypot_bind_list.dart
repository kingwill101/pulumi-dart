// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_honeypot_probes_probe_honeypot_bind_list_bind_port_list.dart';

class GetHoneypotProbesProbeHoneypotBindList {
  /// List of listening ports. Available when `enable_details` is on.
  final List<GetHoneypotProbesProbeHoneypotBindListBindPortList> bindPortLists;
  final String honeypotId;

  /// Creates a new [GetHoneypotProbesProbeHoneypotBindList].
  /// [bindPortLists] List of listening ports. Available when `enable_details` is on.
  /// [honeypotId] Required.
  GetHoneypotProbesProbeHoneypotBindList({
    required this.bindPortLists,
    required this.honeypotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindPortLists': pulumi.Input.encodeList<GetHoneypotProbesProbeHoneypotBindListBindPortList, Map<String, dynamic>>(bindPortLists, (value) => value.toMap()),
      'honeypotId': honeypotId,
    };
  }

  factory GetHoneypotProbesProbeHoneypotBindList.fromMap(Map<String, dynamic> map) {
    return GetHoneypotProbesProbeHoneypotBindList(
      bindPortLists: pulumi.Input.decodeList<GetHoneypotProbesProbeHoneypotBindListBindPortList>(map['bindPortLists'], (value) => GetHoneypotProbesProbeHoneypotBindListBindPortList.fromMap((value as Map).cast<String, dynamic>())),
      honeypotId: map['honeypotId'] as String,
    );
  }
}

