// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getZones.
class GetZonesArgs {
  /// Project from which to list available zones. Defaults to project declared in the provider.
  final Input<String>? project;

  /// Region from which to list available zones. Defaults to region declared in the provider.
  final Input<String>? region;

  /// Allows to filter list of zones based on their current status. Status can be either `UP` or `DOWN`.
  /// Defaults to no filtering (all available zones - both `UP` and `DOWN`).
  final Input<String>? status;

  GetZonesArgs({
    this.project,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      status: Input.asOptionalInput<String>(map['status']),
    );
  }
}
