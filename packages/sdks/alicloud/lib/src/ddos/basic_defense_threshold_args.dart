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
    pulumi.Output<int>? bps,
    required pulumi.Output<String> ddosType,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> instanceType,
    pulumi.Output<String>? internetIp,
    pulumi.Output<bool>? isAuto,
    pulumi.Output<int>? pps,
  }) :
      bps = pulumi.Input.asOptionalInput<int>(bps),
      ddosType = pulumi.Input.asInput<String>(ddosType),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      internetIp = pulumi.Input.asOptionalInput<String>(internetIp),
      isAuto = pulumi.Input.asOptionalInput<bool>(isAuto),
      pps = pulumi.Input.asOptionalInput<int>(pps);

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
      bps: map['bps'] == null ? null : pulumi.Output.create<int>(map['bps'] as int),
      ddosType: pulumi.Output.create<String>(map['ddosType'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: pulumi.Output.create<String>(map['instanceType'] as String),
      internetIp: map['internetIp'] == null ? null : pulumi.Output.create<String>(map['internetIp'] as String),
      isAuto: map['isAuto'] == null ? null : pulumi.Output.create<bool>(map['isAuto'] as bool),
      pps: map['pps'] == null ? null : pulumi.Output.create<int>(map['pps'] as int),
    );
  }
}

