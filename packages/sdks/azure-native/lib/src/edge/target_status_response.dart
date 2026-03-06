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
  const TargetStatusResponse({
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
      componentStatuses: (() { final guardedValue = map['componentStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ComponentStatusResponse>(guardedValue, (value) => ComponentStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

