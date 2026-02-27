// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_condition_response.dart';

/// ResourceStatus describes why a cluster or node pool has a certain status. (e.g., ERROR or DEGRADED).
class ResourceStatusResponseGkeonpremV1 {
  /// ResourceCondition provide a standard mechanism for higher-level status reporting from controller.
  final List<ResourceConditionResponse> conditions;

  /// Human-friendly representation of the error message from controller. The error message can be temporary as the controller controller creates a cluster or node pool. If the error message persists for a longer period of time, it can be used to surface error message to indicate real problems requiring user intervention.
  final String errorMessage;

  ResourceStatusResponseGkeonpremV1({
    required this.conditions,
    required this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = pulumi.Input.encodeList<ResourceConditionResponse,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    map['errorMessage'] = errorMessage;
    return map;
  }

  factory ResourceStatusResponseGkeonpremV1.fromMap(Map<String, dynamic> map) {
    return ResourceStatusResponseGkeonpremV1(
      conditions: pulumi.Input.decodeList<ResourceConditionResponse>(
          map['conditions'],
          (value) => ResourceConditionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      errorMessage: map['errorMessage'] as String,
    );
  }
}
