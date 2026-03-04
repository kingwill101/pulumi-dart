// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ddos_basic_defense_threshold_basic_defense_threshold_args_doc}
/// The set of arguments for BasicDefenseThreshold.
/// {@endtemplate}
/// {@macro pulumi_ddos_basic_defense_threshold_basic_defense_threshold_args_doc}
class BasicDefenseThresholdArgs {
  /// Specifies the traffic scrubbing threshold. Unit: Mbit/s. The traffic scrubbing threshold cannot exceed the peak inbound or outbound Internet traffic, whichever is larger, of the asset.
  final pulumi.Input<int>? bps;

  /// The type of the threshold to query. Valid values: `defense`,`blackhole`.
  final pulumi.Input<String> ddosType;

  /// The ID of the instance.
  final pulumi.Input<String> instanceId;

  /// The instance type of the public IP address asset. Value: `ecs`,`slb`,`eip`.
  final pulumi.Input<String> instanceType;

  /// The Internet IP address.
  final pulumi.Input<String>? internetIp;

  /// Whether it is the system default threshold. Value:
  final pulumi.Input<bool>? isAuto;

  /// The current message number cleaning threshold. Unit: pps.
  final pulumi.Input<int>? pps;

  /// Creates a new [BasicDefenseThresholdArgs].
  /// [bps] Specifies the traffic scrubbing threshold. Unit: Mbit/s. The traffic scrubbing threshold cannot exceed the peak inbound or outbound Internet traffic, whichever is larger, of the asset.
  /// [ddosType] The type of the threshold to query. Valid values: `defense`,`blackhole`.
  /// [instanceId] The ID of the instance.
  /// [instanceType] The instance type of the public IP address asset. Value: `ecs`,`slb`,`eip`.
  /// [internetIp] The Internet IP address.
  /// [isAuto] Whether it is the system default threshold. Value:
  /// [pps] The current message number cleaning threshold. Unit: pps.
  BasicDefenseThresholdArgs({
    this.bps,
    required this.ddosType,
    required this.instanceId,
    required this.instanceType,
    this.internetIp,
    this.isAuto,
    this.pps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bps': ?bps,
      'ddosType': ddosType,
      'instanceId': instanceId,
      'instanceType': instanceType,
      'internetIp': ?internetIp,
      'isAuto': ?isAuto,
      'pps': ?pps,
    };
  }

  factory BasicDefenseThresholdArgs.fromMap(Map<String, dynamic> map) {
    return BasicDefenseThresholdArgs(
      bps: (() {
        final guardedValue = map['bps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ddosType: pulumi.Input.fromValue(map['ddosType'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      internetIp: (() {
        final guardedValue = map['internetIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isAuto: (() {
        final guardedValue = map['isAuto'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      pps: (() {
        final guardedValue = map['pps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
