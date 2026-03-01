// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_compute_get_zones_get_zones_args_doc}
class GetZonesArgs {
  /// Project from which to list available zones. Defaults to project declared in the provider.
  final pulumi.Input<String>? project;

  /// Region from which to list available zones. Defaults to region declared in the provider.
  final pulumi.Input<String>? region;

  /// Allows to filter list of zones based on their current status. Status can be either `UP` or `DOWN`.
  /// Defaults to no filtering (all available zones - both `UP` and `DOWN`).
  final pulumi.Input<String>? status;

  /// Creates a new [GetZonesArgs].
  /// [project] Project from which to list available zones. Defaults to project declared in the provider.
  /// [region] Region from which to list available zones. Defaults to region declared in the provider.
  /// [status] Allows to filter list of zones based on their current status. Status can be either `UP` or `DOWN`.
  GetZonesArgs({String? project, String? region, String? status})
    : project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': ?region,
      'status': ?status,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
