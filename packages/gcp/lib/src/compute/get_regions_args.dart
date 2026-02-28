// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_regions_get_regions_args_doc}
/// Arguments for getRegions.
/// {@endtemplate}
/// {@macro pulumi_compute_get_regions_get_regions_args_doc}
class GetRegionsArgs {
  /// Project from which to list available regions. Defaults to project declared in the provider.
  final pulumi.Input<String>? project;

  /// Allows to filter list of regions based on their current status. Status can be either `UP` or `DOWN`.
  /// Defaults to no filtering (all available regions - both `UP` and `DOWN`).
  final pulumi.Input<String>? status;

  /// Creates a new [GetRegionsArgs].
  /// [project] Project from which to list available regions. Defaults to project declared in the provider.
  /// [status] Allows to filter list of regions based on their current status. Status can be either `UP` or `DOWN`.
  GetRegionsArgs({
    String? project,
    String? status,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory GetRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs(
      project: map['project'] == null ? null : map['project'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
