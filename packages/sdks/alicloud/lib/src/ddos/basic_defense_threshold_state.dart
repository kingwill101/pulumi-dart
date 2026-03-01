// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BasicDefenseThreshold resources.
class BasicDefenseThresholdState {
  /// Specifies the traffic scrubbing threshold. Unit: Mbit/s. The traffic scrubbing threshold cannot exceed the peak inbound or outbound Internet traffic, whichever is larger, of the asset.
  final pulumi.Input<int>? bps;
  /// The type of the threshold to query. Valid values: `defense`,`blackhole`.
  final pulumi.Input<String>? ddosType;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The instance type of the public IP address asset. Value: `ecs`,`slb`,`eip`.
  final pulumi.Input<String>? instanceType;
  /// The Internet IP address.
  final pulumi.Input<String>? internetIp;
  /// Whether it is the system default threshold. Value:
  final pulumi.Input<bool>? isAuto;
  /// The maximum traffic scrubbing threshold. Unit: Mbit/s.
  final pulumi.Input<int>? maxBps;
  /// The maximum packet scrubbing threshold. Unit: pps.
  final pulumi.Input<int>? maxPps;
  /// The current message number cleaning threshold. Unit: pps.
  final pulumi.Input<int>? pps;

  /// Creates a new [BasicDefenseThresholdState].
  /// [bps] Specifies the traffic scrubbing threshold. Unit: Mbit/s. The traffic scrubbing threshold cannot exceed the peak inbound or outbound Internet traffic, whichever is larger, of the asset.
  /// [ddosType] The type of the threshold to query. Valid values: `defense`,`blackhole`.
  /// [instanceId] The ID of the instance.
  /// [instanceType] The instance type of the public IP address asset. Value: `ecs`,`slb`,`eip`.
  /// [internetIp] The Internet IP address.
  /// [isAuto] Whether it is the system default threshold. Value:
  /// [maxBps] The maximum traffic scrubbing threshold. Unit: Mbit/s.
  /// [maxPps] The maximum packet scrubbing threshold. Unit: pps.
  /// [pps] The current message number cleaning threshold. Unit: pps.
  BasicDefenseThresholdState({
    pulumi.Output<int>? bps,
    pulumi.Output<String>? ddosType,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? internetIp,
    pulumi.Output<bool>? isAuto,
    pulumi.Output<int>? maxBps,
    pulumi.Output<int>? maxPps,
    pulumi.Output<int>? pps,
  }) :
      bps = pulumi.Input.asOptionalInput<int>(bps),
      ddosType = pulumi.Input.asOptionalInput<String>(ddosType),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      internetIp = pulumi.Input.asOptionalInput<String>(internetIp),
      isAuto = pulumi.Input.asOptionalInput<bool>(isAuto),
      maxBps = pulumi.Input.asOptionalInput<int>(maxBps),
      maxPps = pulumi.Input.asOptionalInput<int>(maxPps),
      pps = pulumi.Input.asOptionalInput<int>(pps);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bps': ?bps,
      'ddosType': ?ddosType,
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'internetIp': ?internetIp,
      'isAuto': ?isAuto,
      'maxBps': ?maxBps,
      'maxPps': ?maxPps,
      'pps': ?pps,
    };
  }

  factory BasicDefenseThresholdState.fromMap(Map<String, dynamic> map) {
    return BasicDefenseThresholdState(
      bps: map['bps'] == null ? null : pulumi.Output.create<int>(map['bps'] as int),
      ddosType: map['ddosType'] == null ? null : pulumi.Output.create<String>(map['ddosType'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      internetIp: map['internetIp'] == null ? null : pulumi.Output.create<String>(map['internetIp'] as String),
      isAuto: map['isAuto'] == null ? null : pulumi.Output.create<bool>(map['isAuto'] as bool),
      maxBps: map['maxBps'] == null ? null : pulumi.Output.create<int>(map['maxBps'] as int),
      maxPps: map['maxPps'] == null ? null : pulumi.Output.create<int>(map['maxPps'] as int),
      pps: map['pps'] == null ? null : pulumi.Output.create<int>(map['pps'] as int),
    );
  }
}

