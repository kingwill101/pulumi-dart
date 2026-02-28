// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response_compute_beta.dart';
import 'instance_group_manager_resize_request_status_response_compute_beta.dart';

/// Result data returned by getInstanceGroupManagerResizeRequest.
class GetInstanceGroupManagerResizeRequestComputeBetaResult {
  /// The count of instances to create as part of this resize request.
  final int count;
  /// The creation timestamp for this resize request in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource.
  final String description;
  /// The resource type, which is always compute#instanceGroupManagerResizeRequest for resize requests.
  final String kind;
  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  final String name;
  /// Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  final DurationResponseComputeBeta requestedRunDuration;
  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  final int resizeBy;
  /// The URL for this resize request. The server defines this URL.
  final String selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;
  /// [Output only] Current state of the request.
  final String state;
  /// [Output only] Status of the request.
  final InstanceGroupManagerResizeRequestStatusResponseComputeBeta status;
  /// The URL of a zone where the resize request is located. Populated only for zonal resize requests.
  final String zone;

  /// Creates a new [GetInstanceGroupManagerResizeRequestComputeBetaResult].
  /// [count] The count of instances to create as part of this resize request.
  /// [creationTimestamp] The creation timestamp for this resize request in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [kind] The resource type, which is always compute#instanceGroupManagerResizeRequest for resize requests.
  /// [name] The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  /// [requestedRunDuration] Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  /// [resizeBy] The number of instances to be created by this resize request. The group's target size will be increased by this number.
  /// [selfLink] The URL for this resize request. The server defines this URL.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [state] [Output only] Current state of the request.
  /// [status] [Output only] Status of the request.
  /// [zone] The URL of a zone where the resize request is located. Populated only for zonal resize requests.
  GetInstanceGroupManagerResizeRequestComputeBetaResult({
    required this.count,
    required this.creationTimestamp,
    required this.description,
    required this.kind,
    required this.name,
    required this.requestedRunDuration,
    required this.resizeBy,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.state,
    required this.status,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'kind': kind,
      'name': name,
      'requestedRunDuration': requestedRunDuration.toMap(),
      'resizeBy': resizeBy,
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'state': state,
      'status': status.toMap(),
      'zone': zone,
    };
  }

  factory GetInstanceGroupManagerResizeRequestComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerResizeRequestComputeBetaResult(
      count: map['count'] as int,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      requestedRunDuration: DurationResponseComputeBeta.fromMap((map['requestedRunDuration'] as Map).cast<String, dynamic>()),
      resizeBy: map['resizeBy'] as int,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      state: map['state'] as String,
      status: InstanceGroupManagerResizeRequestStatusResponseComputeBeta.fromMap((map['status'] as Map).cast<String, dynamic>()),
      zone: map['zone'] as String,
    );
  }
}

