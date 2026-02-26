// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegions.
class GetRegionsArgs {
  /// Project from which to list available regions. Defaults to project declared in the provider.
  final Input<String>? project;

  /// Allows to filter list of regions based on their current status. Status can be either `UP` or `DOWN`.
  /// Defaults to no filtering (all available regions - both `UP` and `DOWN`).
  final Input<String>? status;

  GetRegionsArgs({
    this.project,
    this.status,
  });

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
      project: Input.asOptionalInput<String>(map['project']),
      status: Input.asOptionalInput<String>(map['status']),
    );
  }
}
