// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_status_response.dart';

/// Target Status
class TargetStatusResponse {
  /// Component statuses
  final pulumi.Input<List<ComponentStatusResponse>>? componentStatuses;
  /// Target name
  final pulumi.Input<String>? name;
  /// Target status
  final pulumi.Input<String>? status;

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
      'componentStatuses': ?pulumi.Input.mapOptionalInputValue<List<ComponentStatusResponse>, List<Map<String, dynamic>>>(componentStatuses, (value) => pulumi.Input.encodeList<ComponentStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'status': ?status,
    };
  }

  factory TargetStatusResponse.fromMap(Map<String, dynamic> map) {
    return TargetStatusResponse(
      componentStatuses: map['componentStatuses'] == null ? null : (pulumi.Input.decodeList<ComponentStatusResponse>(map['componentStatuses'], (value) => ComponentStatusResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

