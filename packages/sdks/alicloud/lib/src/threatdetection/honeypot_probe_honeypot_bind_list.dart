// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'honeypot_probe_honeypot_bind_list_bind_port_list.dart';

class HoneypotProbeHoneypotBindList {
  /// List of listening ports.See the following `Block BindPortList`.
  final pulumi.Input<List<HoneypotProbeHoneypotBindListBindPortList>>? bindPortLists;
  /// Honeypot ID.
  final pulumi.Input<String>? honeypotId;

  /// Creates a new [HoneypotProbeHoneypotBindList].
  /// [bindPortLists] List of listening ports.See the following `Block BindPortList`.
  /// [honeypotId] Honeypot ID.
  HoneypotProbeHoneypotBindList({
    this.bindPortLists,
    this.honeypotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindPortLists': ?pulumi.Input.mapOptionalInputValue<List<HoneypotProbeHoneypotBindListBindPortList>, List<Map<String, dynamic>>>(bindPortLists, (value) => pulumi.Input.encodeList<HoneypotProbeHoneypotBindListBindPortList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'honeypotId': ?honeypotId,
    };
  }

  factory HoneypotProbeHoneypotBindList.fromMap(Map<String, dynamic> map) {
    return HoneypotProbeHoneypotBindList(
      bindPortLists: map['bindPortLists'] == null ? null : (pulumi.Input.decodeList<HoneypotProbeHoneypotBindListBindPortList>(map['bindPortLists']!, (value) => HoneypotProbeHoneypotBindListBindPortList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      honeypotId: map['honeypotId'] == null ? null : (map['honeypotId']! as String).input(),
    );
  }
}

