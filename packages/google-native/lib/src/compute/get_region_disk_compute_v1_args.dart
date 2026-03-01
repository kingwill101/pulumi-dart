// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_disk_compute_v1_args_doc}
/// Arguments for getRegionDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_disk_compute_v1_args_doc}
class GetRegionDiskComputeV1Args {
  final pulumi.Input<String> disk;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionDiskComputeV1Args].
  /// [disk] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionDiskComputeV1Args({
    required String disk,
    String? project,
    required String region,
  }) : disk = pulumi.Input.asInput<String>(disk),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionDiskComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskComputeV1Args(
      disk: map['disk'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
