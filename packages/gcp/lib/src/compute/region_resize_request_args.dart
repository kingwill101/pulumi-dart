// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_requested_run_duration.dart';

/// {@template pulumi_compute_region_resize_request_region_resize_request_args_doc}
/// The set of arguments for RegionResizeRequest.
/// {@endtemplate}
/// {@macro pulumi_compute_region_resize_request_region_resize_request_args_doc}
class RegionResizeRequestArgs {
  /// An optional description of this resize-request.
  final pulumi.Input<String>? description;

  /// The reference of the regional instance group manager this ResizeRequest is a part of.
  final pulumi.Input<String> instanceGroupManager;

  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The reference of the compute region scoping this request. If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// Requested run duration for instances that will be created by this request. At the end of the run duration instances will be deleted.
  /// Structure is documented below.
  final pulumi.Input<RegionResizeRequestRequestedRunDuration>?
      requestedRunDuration;

  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  final pulumi.Input<int> resizeBy;

  /// Creates a new [RegionResizeRequestArgs].
  /// [description] An optional description of this resize-request.
  /// [instanceGroupManager] The reference of the regional instance group manager this ResizeRequest is a part of.
  /// [name] The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The reference of the compute region scoping this request. If it is not provided, the provider region is used.
  /// [requestedRunDuration] Requested run duration for instances that will be created by this request. At the end of the run duration instances will be deleted.
  /// [resizeBy] The number of instances to be created by this resize request. The group's target size will be increased by this number.
  RegionResizeRequestArgs({
    String? description,
    required String instanceGroupManager,
    String? name,
    String? project,
    String? region,
    RegionResizeRequestRequestedRunDuration? requestedRunDuration,
    required int resizeBy,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        instanceGroupManager =
            pulumi.Input.asInput<String>(instanceGroupManager),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region),
        requestedRunDuration = pulumi.Input.asOptionalInput<
            RegionResizeRequestRequestedRunDuration>(requestedRunDuration),
        resizeBy = pulumi.Input.asInput<int>(resizeBy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instanceGroupManager'] = instanceGroupManager;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requestedRunDurationValue = requestedRunDuration;
    if (requestedRunDurationValue != null) {
      map['requestedRunDuration'] = pulumi.Input.mapOptionalInputValue<
              RegionResizeRequestRequestedRunDuration, Map<String, dynamic>>(
          requestedRunDurationValue, (value) => value.toMap());
    }
    map['resizeBy'] = resizeBy;
    return map;
  }

  factory RegionResizeRequestArgs.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      instanceGroupManager: map['instanceGroupManager'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      requestedRunDuration: map['requestedRunDuration'] == null
          ? null
          : RegionResizeRequestRequestedRunDuration.fromMap(
              (map['requestedRunDuration'] as Map).cast<String, dynamic>()),
      resizeBy: map['resizeBy'] as int,
    );
  }
}
