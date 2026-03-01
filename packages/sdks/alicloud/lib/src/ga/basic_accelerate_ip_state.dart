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
    pulumi.Output<String>? accelerateIpAddress,
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? ipSetId,
    pulumi.Output<String>? status,
  }) :
      accelerateIpAddress = pulumi.Input.asOptionalInput<String>(accelerateIpAddress),
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      ipSetId = pulumi.Input.asOptionalInput<String>(ipSetId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      accelerateIpAddress: map['accelerateIpAddress'] == null ? null : pulumi.Output.create<String>(map['accelerateIpAddress'] as String),
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      ipSetId: map['ipSetId'] == null ? null : pulumi.Output.create<String>(map['ipSetId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

