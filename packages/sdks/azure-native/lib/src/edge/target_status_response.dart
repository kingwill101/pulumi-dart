// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_status_response.dart';

/// Target Status
class TargetStatusResponse {
  /// Component statuses
  final List<ComponentStatusResponse>? componentStatuses;
  /// Target name
  final String? name;
  /// Target status
  final String? status;

  /// Creates a new [TargetStatusResponse].
  /// [componentStatuses] Component statuses
  /// [name] Target name
  /// [status] Target status
  TargetStatusResponse({
    this.componentStatuses,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentStatuses': ?componentStatuses == null ? null : pulumi.Input.encodeList<ComponentStatusResponse, Map<String, dynamic>>(componentStatuses!, (value) => value.toMap()),
      'name': ?name,
      'status': ?status,
    };
  }

  factory TargetStatusResponse.fromMap(Map<String, dynamic> map) {
    return TargetStatusResponse(
      componentStatuses: map['componentStatuses'] == null ? null : pulumi.Input.decodeList<ComponentStatusResponse>(map['componentStatuses'], (value) => ComponentStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

