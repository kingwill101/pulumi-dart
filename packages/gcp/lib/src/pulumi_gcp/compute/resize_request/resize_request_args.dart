// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../resize_request_requested_run_duration/resize_request_requested_run_duration.dart';

/// The set of arguments for ResizeRequest.
class ResizeRequestArgs {
  /// An optional description of this resize-request.
  final pulumi.Input<String>? description;

  /// The reference of the instance group manager this ResizeRequest is a part of.
  final pulumi.Input<String> instanceGroupManager;

  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  /// Structure is documented below.
  final pulumi.Input<ResizeRequestRequestedRunDuration>? requestedRunDuration;

  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  final pulumi.Input<int> resizeBy;

  /// The reference of the compute zone scoping this request. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  ResizeRequestArgs({
    this.description,
    required this.instanceGroupManager,
    this.name,
    this.project,
    this.requestedRunDuration,
    required this.resizeBy,
    this.zone,
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
    final requestedRunDurationValue = requestedRunDuration;
    if (requestedRunDurationValue != null) {
      map['requestedRunDuration'] = pulumi.Input.mapOptionalInputValue<
              ResizeRequestRequestedRunDuration, Map<String, dynamic>>(
          requestedRunDurationValue, (value) => value.toMap());
    }
    map['resizeBy'] = resizeBy;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory ResizeRequestArgs.fromMap(Map<String, dynamic> map) {
    return ResizeRequestArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instanceGroupManager:
          pulumi.Input.asInput<String>(map['instanceGroupManager']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestedRunDuration:
          pulumi.Input.asOptionalInput<ResizeRequestRequestedRunDuration>(
              map['requestedRunDuration']),
      resizeBy: pulumi.Input.asInput<int>(map['resizeBy']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
