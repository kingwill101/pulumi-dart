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
    this.bps,
    this.ddosType,
    this.instanceId,
    this.instanceType,
    this.internetIp,
    this.isAuto,
    this.maxBps,
    this.maxPps,
    this.pps,
  });

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
      bps: map['bps'] == null ? null : (map['bps']! as int).input(),
      ddosType: map['ddosType'] == null ? null : (map['ddosType']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      internetIp: map['internetIp'] == null ? null : (map['internetIp']! as String).input(),
      isAuto: map['isAuto'] == null ? null : (map['isAuto']! as bool).input(),
      maxBps: map['maxBps'] == null ? null : (map['maxBps']! as int).input(),
      maxPps: map['maxPps'] == null ? null : (map['maxPps']! as int).input(),
      pps: map['pps'] == null ? null : (map['pps']! as int).input(),
    );
  }
}

