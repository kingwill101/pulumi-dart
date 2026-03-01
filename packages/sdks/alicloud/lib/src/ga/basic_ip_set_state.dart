// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BasicIpSet resources.
class BasicIpSetState {
  /// The ID of the acceleration region.
  final pulumi.Input<String>? accelerateRegionId;
  /// The ID of the basic GA instance.
  final pulumi.Input<String>? acceleratorId;
  /// The bandwidth of the acceleration region. Unit: Mbit/s.
  final pulumi.Input<int>? bandwidth;
  /// The line type of the elastic IP address (EIP) in the acceleration region. Default value: `BGP`. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`.
  final pulumi.Input<String>? ispType;
  /// The status of the Basic Ip Set instance.
  final pulumi.Input<String>? status;

  /// Creates a new [BasicIpSetState].
  /// [accelerateRegionId] The ID of the acceleration region.
  /// [acceleratorId] The ID of the basic GA instance.
  /// [bandwidth] The bandwidth of the acceleration region. Unit: Mbit/s.
  /// [ispType] The line type of the elastic IP address (EIP) in the acceleration region. Default value: `BGP`. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`.
  /// [status] The status of the Basic Ip Set instance.
  BasicIpSetState({
    pulumi.Output<String>? accelerateRegionId,
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? ispType,
    pulumi.Output<String>? status,
  }) :
      accelerateRegionId = pulumi.Input.asOptionalInput<String>(accelerateRegionId),
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      ispType = pulumi.Input.asOptionalInput<String>(ispType),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateRegionId': ?accelerateRegionId,
      'acceleratorId': ?acceleratorId,
      'bandwidth': ?bandwidth,
      'ispType': ?ispType,
      'status': ?status,
    };
  }

  factory BasicIpSetState.fromMap(Map<String, dynamic> map) {
    return BasicIpSetState(
      accelerateRegionId: map['accelerateRegionId'] == null ? null : pulumi.Output.create<String>(map['accelerateRegionId'] as String),
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      ispType: map['ispType'] == null ? null : pulumi.Output.create<String>(map['ispType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

