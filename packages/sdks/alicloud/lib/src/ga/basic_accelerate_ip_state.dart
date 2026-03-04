// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BasicAccelerateIp resources.
class BasicAccelerateIpState {
  /// The address of the Basic Accelerate IP.
  final pulumi.Input<String>? accelerateIpAddress;

  /// The ID of the Basic GA instance.
  final pulumi.Input<String>? acceleratorId;

  /// The ID of the Basic Ip Set.
  final pulumi.Input<String>? ipSetId;

  /// The status of the Basic Accelerate IP instance.
  final pulumi.Input<String>? status;

  /// Creates a new [BasicAccelerateIpState].
  /// [accelerateIpAddress] The address of the Basic Accelerate IP.
  /// [acceleratorId] The ID of the Basic GA instance.
  /// [ipSetId] The ID of the Basic Ip Set.
  /// [status] The status of the Basic Accelerate IP instance.
  BasicAccelerateIpState({
    this.accelerateIpAddress,
    this.acceleratorId,
    this.ipSetId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateIpAddress': ?accelerateIpAddress,
      'acceleratorId': ?acceleratorId,
      'ipSetId': ?ipSetId,
      'status': ?status,
    };
  }

  factory BasicAccelerateIpState.fromMap(Map<String, dynamic> map) {
    return BasicAccelerateIpState(
      accelerateIpAddress: (() {
        final guardedValue = map['accelerateIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      acceleratorId: (() {
        final guardedValue = map['acceleratorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipSetId: (() {
        final guardedValue = map['ipSetId'];
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
