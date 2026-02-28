// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_disk_args_doc}
/// Arguments for getRegionDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_disk_args_doc}
class GetRegionDiskArgs {
  final pulumi.Input<String> disk;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionDiskArgs].
  /// [disk] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionDiskArgs({
    required String disk,
    String? project,
    required String region,
  }) :
      disk = pulumi.Input.asInput<String>(disk),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionDiskArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskArgs(
      disk: map['disk'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}

