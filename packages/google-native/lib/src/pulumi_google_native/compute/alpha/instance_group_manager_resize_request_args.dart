// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';
import 'queuing_policy.dart';

/// The set of arguments for InstanceGroupManagerResizeRequest.
class InstanceGroupManagerResizeRequestArgs {
  /// The count of instances to create as part of this resize request.
  final pulumi.Input<int>? count;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> instanceGroupManager;

  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// When set, defines queing parameters for the requested deferred capacity. When unset, the request starts provisioning immediately, or fails if immediate provisioning is not possible.
  final pulumi.Input<QueuingPolicy>? queuingPolicy;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  final pulumi.Input<Duration>? requestedRunDuration;

  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  final pulumi.Input<int>? resizeBy;
  final pulumi.Input<String>? zone;

  InstanceGroupManagerResizeRequestArgs({
    this.count,
    this.description,
    required this.instanceGroupManager,
    this.name,
    this.project,
    this.queuingPolicy,
    this.requestId,
    this.requestedRunDuration,
    this.resizeBy,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
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
    final queuingPolicyValue = queuingPolicy;
    if (queuingPolicyValue != null) {
      map['queuingPolicy'] = pulumi.Input.mapOptionalInputValue<QueuingPolicy,
          Map<String, dynamic>>(queuingPolicyValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final requestedRunDurationValue = requestedRunDuration;
    if (requestedRunDurationValue != null) {
      map['requestedRunDuration'] =
          pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(
              requestedRunDurationValue, (value) => value.toMap());
    }
    final resizeByValue = resizeBy;
    if (resizeByValue != null) {
      map['resizeBy'] = resizeByValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceGroupManagerResizeRequestArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestArgs(
      count: pulumi.Input.asOptionalInput<int>(map['count']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instanceGroupManager:
          pulumi.Input.asInput<String>(map['instanceGroupManager']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      queuingPolicy:
          pulumi.Input.asOptionalInput<QueuingPolicy>(map['queuingPolicy']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      requestedRunDuration:
          pulumi.Input.asOptionalInput<Duration>(map['requestedRunDuration']),
      resizeBy: pulumi.Input.asOptionalInput<int>(map['resizeBy']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
