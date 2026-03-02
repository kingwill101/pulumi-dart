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
    this.acceleratorId,
    this.basicEndpointName,
    this.endpointAddress,
    this.endpointGroupId,
    this.endpointId,
    this.endpointSubAddress,
    this.endpointSubAddressType,
    this.endpointType,
    this.endpointZoneId,
    this.status,
  });

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
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId'] as String).input(),
      basicEndpointName: map['basicEndpointName'] == null ? null : (map['basicEndpointName'] as String).input(),
      endpointAddress: map['endpointAddress'] == null ? null : (map['endpointAddress'] as String).input(),
      endpointGroupId: map['endpointGroupId'] == null ? null : (map['endpointGroupId'] as String).input(),
      endpointId: map['endpointId'] == null ? null : (map['endpointId'] as String).input(),
      endpointSubAddress: map['endpointSubAddress'] == null ? null : (map['endpointSubAddress'] as String).input(),
      endpointSubAddressType: map['endpointSubAddressType'] == null ? null : (map['endpointSubAddressType'] as String).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
      endpointZoneId: map['endpointZoneId'] == null ? null : (map['endpointZoneId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

