// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_packet_mirroring_compute_v1_args_doc}
/// Arguments for getPacketMirroring.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_packet_mirroring_compute_v1_args_doc}
class GetPacketMirroringComputeV1Args {
  final pulumi.Input<String> packetMirroring;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetPacketMirroringComputeV1Args].
  /// [packetMirroring] Required.
  /// [project] Optional.
  /// [region] Required.
  GetPacketMirroringComputeV1Args({
    required String packetMirroring,
    String? project,
    required String region,
  })  : packetMirroring = pulumi.Input.asInput<String>(packetMirroring),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region);

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

  factory GetPacketMirroringComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetPacketMirroringComputeV1Args(
      packetMirroring: map['packetMirroring'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
