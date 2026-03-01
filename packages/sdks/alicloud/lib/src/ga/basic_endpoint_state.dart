// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BasicEndpoint resources.
class BasicEndpointState {
  /// The ID of the Basic GA instance.
  final pulumi.Input<String>? acceleratorId;
  /// The name of the Basic Endpoint.
  final pulumi.Input<String>? basicEndpointName;
  /// The address of the Basic Endpoint.
  final pulumi.Input<String>? endpointAddress;
  /// The ID of the Basic Endpoint Group.
  final pulumi.Input<String>? endpointGroupId;
  /// The ID of the Basic Endpoint.
  final pulumi.Input<String>? endpointId;
  /// The sub address of the Basic Endpoint.
  final pulumi.Input<String>? endpointSubAddress;
  /// The sub address type of the Basic Endpoint. Valid values: `primary`, `secondary`.
  final pulumi.Input<String>? endpointSubAddressType;
  /// The type of the Basic Endpoint. Valid values: `ENI`, `SLB`, `ECS` and `NLB`.
  final pulumi.Input<String>? endpointType;
  /// The zone id of the Basic Endpoint.
  final pulumi.Input<String>? endpointZoneId;
  /// The status of the Basic Endpoint.
  final pulumi.Input<String>? status;

  /// Creates a new [BasicEndpointState].
  /// [acceleratorId] The ID of the Basic GA instance.
  /// [basicEndpointName] The name of the Basic Endpoint.
  /// [endpointAddress] The address of the Basic Endpoint.
  /// [endpointGroupId] The ID of the Basic Endpoint Group.
  /// [endpointId] The ID of the Basic Endpoint.
  /// [endpointSubAddress] The sub address of the Basic Endpoint.
  /// [endpointSubAddressType] The sub address type of the Basic Endpoint. Valid values: `primary`, `secondary`.
  /// [endpointType] The type of the Basic Endpoint. Valid values: `ENI`, `SLB`, `ECS` and `NLB`.
  /// [endpointZoneId] The zone id of the Basic Endpoint.
  /// [status] The status of the Basic Endpoint.
  BasicEndpointState({
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? basicEndpointName,
    pulumi.Output<String>? endpointAddress,
    pulumi.Output<String>? endpointGroupId,
    pulumi.Output<String>? endpointId,
    pulumi.Output<String>? endpointSubAddress,
    pulumi.Output<String>? endpointSubAddressType,
    pulumi.Output<String>? endpointType,
    pulumi.Output<String>? endpointZoneId,
    pulumi.Output<String>? status,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      basicEndpointName = pulumi.Input.asOptionalInput<String>(basicEndpointName),
      endpointAddress = pulumi.Input.asOptionalInput<String>(endpointAddress),
      endpointGroupId = pulumi.Input.asOptionalInput<String>(endpointGroupId),
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      endpointSubAddress = pulumi.Input.asOptionalInput<String>(endpointSubAddress),
      endpointSubAddressType = pulumi.Input.asOptionalInput<String>(endpointSubAddressType),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      endpointZoneId = pulumi.Input.asOptionalInput<String>(endpointZoneId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'basicEndpointName': ?basicEndpointName,
      'endpointAddress': ?endpointAddress,
      'endpointGroupId': ?endpointGroupId,
      'endpointId': ?endpointId,
      'endpointSubAddress': ?endpointSubAddress,
      'endpointSubAddressType': ?endpointSubAddressType,
      'endpointType': ?endpointType,
      'endpointZoneId': ?endpointZoneId,
      'status': ?status,
    };
  }

  factory BasicEndpointState.fromMap(Map<String, dynamic> map) {
    return BasicEndpointState(
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      basicEndpointName: map['basicEndpointName'] == null ? null : pulumi.Output.create<String>(map['basicEndpointName'] as String),
      endpointAddress: map['endpointAddress'] == null ? null : pulumi.Output.create<String>(map['endpointAddress'] as String),
      endpointGroupId: map['endpointGroupId'] == null ? null : pulumi.Output.create<String>(map['endpointGroupId'] as String),
      endpointId: map['endpointId'] == null ? null : pulumi.Output.create<String>(map['endpointId'] as String),
      endpointSubAddress: map['endpointSubAddress'] == null ? null : pulumi.Output.create<String>(map['endpointSubAddress'] as String),
      endpointSubAddressType: map['endpointSubAddressType'] == null ? null : pulumi.Output.create<String>(map['endpointSubAddressType'] as String),
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
      endpointZoneId: map['endpointZoneId'] == null ? null : pulumi.Output.create<String>(map['endpointZoneId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

