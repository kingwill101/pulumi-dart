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
  const BasicThresholdState({
    this.bps,
    this.instanceId,
    this.instanceType,
    this.internetIp,
    this.maxBps,
    this.maxPps,
    this.pps,
  });

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
      bps: (() { final guardedValue = map['bps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetIp: (() { final guardedValue = map['internetIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBps: (() { final guardedValue = map['maxBps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxPps: (() { final guardedValue = map['maxPps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pps: (() { final guardedValue = map['pps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

