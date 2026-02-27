// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPacketMirroring.
class GetPacketMirroringComputeBetaArgs {
  final pulumi.Input<String> packetMirroring;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetPacketMirroringComputeBetaArgs({
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

  factory GetPacketMirroringComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetPacketMirroringComputeBetaArgs(
      packetMirroring: pulumi.Input.asInput<String>(map['packetMirroring']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
