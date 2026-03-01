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
    pulumi.Output<String>? accelerateIpId,
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? endpointId,
    pulumi.Output<String>? status,
  }) :
      accelerateIpId = pulumi.Input.asOptionalInput<String>(accelerateIpId),
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateIpId': ?accelerateIpId,
      'acceleratorId': ?acceleratorId,
      'endpointId': ?endpointId,
      'status': ?status,
    };
  }

  factory BasicAccelerateIpEndpointRelationState.fromMap(Map<String, dynamic> map) {
    return BasicAccelerateIpEndpointRelationState(
      accelerateIpId: map['accelerateIpId'] == null ? null : pulumi.Output.create<String>(map['accelerateIpId'] as String),
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      endpointId: map['endpointId'] == null ? null : pulumi.Output.create<String>(map['endpointId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

