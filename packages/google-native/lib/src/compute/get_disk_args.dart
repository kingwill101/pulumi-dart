// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_disk_args_doc}
/// Arguments for getDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_disk_args_doc}
class GetDiskArgs {
  final pulumi.Input<String> disk;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetDiskArgs].
  /// [disk] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetDiskArgs({
    required String disk,
    String? project,
    required String zone,
  })  : disk = pulumi.Input.asInput<String>(disk),
        project = pulumi.Input.asOptionalInput<String>(project),
        zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disk'] = disk;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetDiskArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskArgs(
      disk: map['disk'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
