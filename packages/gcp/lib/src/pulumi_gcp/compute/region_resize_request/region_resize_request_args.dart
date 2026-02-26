// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_resize_request_requested_run_duration/region_resize_request_requested_run_duration.dart';

/// The set of arguments for RegionResizeRequest.
class RegionResizeRequestArgs {
  /// An optional description of this resize-request.
  final Input<String>? description;

  /// The reference of the regional instance group manager this ResizeRequest is a part of.
  final Input<String> instanceGroupManager;

  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The reference of the compute region scoping this request. If it is not provided, the provider region is used.
  final Input<String>? region;

  /// Requested run duration for instances that will be created by this request. At the end of the run duration instances will be deleted.
  /// Structure is documented below.
  final Input<RegionResizeRequestRequestedRunDuration>? requestedRunDuration;

  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  final Input<int> resizeBy;

  RegionResizeRequestArgs({
    this.description,
    required this.instanceGroupManager,
    this.name,
    this.project,
    this.region,
    this.requestedRunDuration,
    required this.resizeBy,
  });

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
      map['requestedRunDuration'] = Input.mapOptionalInputValue<
              RegionResizeRequestRequestedRunDuration, Map<String, dynamic>>(
          requestedRunDurationValue, (value) => value.toMap());
    }
    map['resizeBy'] = resizeBy;
    return map;
  }

  factory RegionResizeRequestArgs.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestArgs(
      description: Input.asOptionalInput<String>(map['description']),
      instanceGroupManager: Input.asInput<String>(map['instanceGroupManager']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      requestedRunDuration:
          Input.asOptionalInput<RegionResizeRequestRequestedRunDuration>(
              map['requestedRunDuration']),
      resizeBy: Input.asInput<int>(map['resizeBy']),
    );
  }
}
