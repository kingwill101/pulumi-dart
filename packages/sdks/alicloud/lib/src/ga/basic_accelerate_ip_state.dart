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
      accelerateIpAddress: map['accelerateIpAddress'] == null ? null : (map['accelerateIpAddress']! as String).input(),
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId']! as String).input(),
      ipSetId: map['ipSetId'] == null ? null : (map['ipSetId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

