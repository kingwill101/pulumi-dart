// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_requested_run_duration.dart';

/// {@template pulumi_compute_resize_request_resize_request_args_doc}
/// The set of arguments for ResizeRequest.
/// {@endtemplate}
/// {@macro pulumi_compute_resize_request_resize_request_args_doc}
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

  /// Creates a new [ResizeRequestArgs].
  /// [description] An optional description of this resize-request.
  /// [instanceGroupManager] The reference of the instance group manager this ResizeRequest is a part of.
  /// [name] The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  /// [project] The ID of the project in which the resource belongs.
  /// [requestedRunDuration] Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  /// [resizeBy] The number of instances to be created by this resize request. The group's target size will be increased by this number.
  /// [zone] The reference of the compute zone scoping this request. If it is not provided, the provider zone is used.
  ResizeRequestArgs({
    String? description,
    required String instanceGroupManager,
    String? name,
    String? project,
    ResizeRequestRequestedRunDuration? requestedRunDuration,
    required int resizeBy,
    String? zone,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        instanceGroupManager =
            pulumi.Input.asInput<String>(instanceGroupManager),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestedRunDuration =
            pulumi.Input.asOptionalInput<ResizeRequestRequestedRunDuration>(
                requestedRunDuration),
        resizeBy = pulumi.Input.asInput<int>(resizeBy),
        zone = pulumi.Input.asOptionalInput<String>(zone);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      instanceGroupManager: map['instanceGroupManager'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestedRunDuration: map['requestedRunDuration'] == null
          ? null
          : ResizeRequestRequestedRunDuration.fromMap(
              (map['requestedRunDuration'] as Map).cast<String, dynamic>()),
      resizeBy: map['resizeBy'] as int,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
