// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BasicThreshold resources.
class BasicThresholdState {
  /// Specifies the traffic scrubbing threshold. Unit: Mbit/s. The traffic scrubbing threshold cannot exceed the peak inbound or outbound Internet traffic, whichever is larger, of the asset.
  final pulumi.Input<int>? bps;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The type of the Instance. Valid values: `ecs`,`slb`,`eip`.
  final pulumi.Input<String>? instanceType;
  /// The IP address of the public IP address asset.
  final pulumi.Input<String>? internetIp;
  /// Maximum flow cleaning threshold. Unit: Mbps.
  final pulumi.Input<int>? maxBps;
  /// The maximum number of messages cleaning threshold. Unit: pps.
  final pulumi.Input<int>? maxPps;
  /// The current message number cleaning threshold. Unit: pps.
  final pulumi.Input<int>? pps;

  /// Creates a new [BasicThresholdState].
  /// [bps] Specifies the traffic scrubbing threshold. Unit: Mbit/s. The traffic scrubbing threshold cannot exceed the peak inbound or outbound Internet traffic, whichever is larger, of the asset.
  /// [instanceId] The ID of the instance.
  /// [instanceType] The type of the Instance. Valid values: `ecs`,`slb`,`eip`.
  /// [internetIp] The IP address of the public IP address asset.
  /// [maxBps] Maximum flow cleaning threshold. Unit: Mbps.
  /// [maxPps] The maximum number of messages cleaning threshold. Unit: pps.
  /// [pps] The current message number cleaning threshold. Unit: pps.
  BasicThresholdState({
    pulumi.Output<int>? bps,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? internetIp,
    pulumi.Output<int>? maxBps,
    pulumi.Output<int>? maxPps,
    pulumi.Output<int>? pps,
  }) :
      bps = pulumi.Input.asOptionalInput<int>(bps),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      internetIp = pulumi.Input.asOptionalInput<String>(internetIp),
      maxBps = pulumi.Input.asOptionalInput<int>(maxBps),
      maxPps = pulumi.Input.asOptionalInput<int>(maxPps),
      pps = pulumi.Input.asOptionalInput<int>(pps);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bps': ?bps,
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'internetIp': ?internetIp,
      'maxBps': ?maxBps,
      'maxPps': ?maxPps,
      'pps': ?pps,
    };
  }

  factory BasicThresholdState.fromMap(Map<String, dynamic> map) {
    return BasicThresholdState(
      bps: map['bps'] == null ? null : pulumi.Output.create<int>(map['bps'] as int),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      internetIp: map['internetIp'] == null ? null : pulumi.Output.create<String>(map['internetIp'] as String),
      maxBps: map['maxBps'] == null ? null : pulumi.Output.create<int>(map['maxBps'] as int),
      maxPps: map['maxPps'] == null ? null : pulumi.Output.create<int>(map['maxPps'] as int),
      pps: map['pps'] == null ? null : pulumi.Output.create<int>(map['pps'] as int),
    );
  }
}

