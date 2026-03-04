// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BasicAccelerateIpEndpointRelation resources.
class BasicAccelerateIpEndpointRelationState {
  /// The ID of the Basic Accelerate IP.
  final pulumi.Input<String>? accelerateIpId;

  /// The ID of the Basic GA instance.
  final pulumi.Input<String>? acceleratorId;

  /// The ID of the Basic Endpoint.
  final pulumi.Input<String>? endpointId;

  /// The status of the Basic Accelerate Ip Endpoint Relation.
  final pulumi.Input<String>? status;

  /// Creates a new [BasicAccelerateIpEndpointRelationState].
  /// [accelerateIpId] The ID of the Basic Accelerate IP.
  /// [acceleratorId] The ID of the Basic GA instance.
  /// [endpointId] The ID of the Basic Endpoint.
  /// [status] The status of the Basic Accelerate Ip Endpoint Relation.
  BasicAccelerateIpEndpointRelationState({
    this.accelerateIpId,
    this.acceleratorId,
    this.endpointId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateIpId': ?accelerateIpId,
      'acceleratorId': ?acceleratorId,
      'endpointId': ?endpointId,
      'status': ?status,
    };
  }

  factory BasicAccelerateIpEndpointRelationState.fromMap(
    Map<String, dynamic> map,
  ) {
    return BasicAccelerateIpEndpointRelationState(
      accelerateIpId: (() {
        final guardedValue = map['accelerateIpId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      acceleratorId: (() {
        final guardedValue = map['acceleratorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointId: (() {
        final guardedValue = map['endpointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
