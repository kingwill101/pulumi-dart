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
      acceleratorId: (() {
        final guardedValue = map['acceleratorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      basicEndpointName: (() {
        final guardedValue = map['basicEndpointName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointAddress: (() {
        final guardedValue = map['endpointAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointGroupId: (() {
        final guardedValue = map['endpointGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointId: (() {
        final guardedValue = map['endpointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointSubAddress: (() {
        final guardedValue = map['endpointSubAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointSubAddressType: (() {
        final guardedValue = map['endpointSubAddressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointType: (() {
        final guardedValue = map['endpointType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointZoneId: (() {
        final guardedValue = map['endpointZoneId'];
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
