// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPacketMirroring.
class GetPacketMirroringArgs3 {
  final Input<String> packetMirroring;
  final Input<String>? project;
  final Input<String> region;

  GetPacketMirroringArgs3({
    required this.packetMirroring,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['packetMirroring'] = packetMirroring;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetPacketMirroringArgs3.fromMap(Map<String, dynamic> map) {
    return GetPacketMirroringArgs3(
      packetMirroring: Input.asInput<String>(map['packetMirroring']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
