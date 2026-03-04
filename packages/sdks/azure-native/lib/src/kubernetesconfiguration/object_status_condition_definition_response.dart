// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status condition of Kubernetes object
class ObjectStatusConditionDefinitionResponse {
  /// Last time this status condition has changed
  final pulumi.Input<String>? lastTransitionTime;

  /// A more verbose description of the object status condition
  final pulumi.Input<String>? message;

  /// Reason for the specified status condition type status
  final pulumi.Input<String>? reason;

  /// Status of the Kubernetes object condition type
  final pulumi.Input<String>? status;

  /// Object status condition type for this object
  final pulumi.Input<String>? type;

  /// Creates a new [ObjectStatusConditionDefinitionResponse].
  /// [lastTransitionTime] Last time this status condition has changed
  /// [message] A more verbose description of the object status condition
  /// [reason] Reason for the specified status condition type status
  /// [status] Status of the Kubernetes object condition type
  /// [type] Object status condition type for this object
  ObjectStatusConditionDefinitionResponse({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory ObjectStatusConditionDefinitionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ObjectStatusConditionDefinitionResponse(
      lastTransitionTime: (() {
        final guardedValue = map['lastTransitionTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reason: (() {
        final guardedValue = map['reason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
