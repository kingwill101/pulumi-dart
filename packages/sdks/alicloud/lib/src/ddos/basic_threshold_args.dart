// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ddos_basic_threshold_basic_threshold_args_doc}
/// The set of arguments for BasicThreshold.
/// {@endtemplate}
/// {@macro pulumi_ddos_basic_threshold_basic_threshold_args_doc}
class BasicThresholdArgs {
  /// Specifies the traffic scrubbing threshold. Unit: Mbit/s. The traffic scrubbing threshold cannot exceed the peak inbound or outbound Internet traffic, whichever is larger, of the asset.
  final pulumi.Input<int> bps;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The type of the Instance. Valid values: `ecs`,`slb`,`eip`.
  final pulumi.Input<String> instanceType;
  /// The IP address of the public IP address asset.
  final pulumi.Input<String> internetIp;
  /// The current message number cleaning threshold. Unit: pps.
  final pulumi.Input<int> pps;

  /// Creates a new [BasicThresholdArgs].
  /// [bps] Specifies the traffic scrubbing threshold. Unit: Mbit/s. The traffic scrubbing threshold cannot exceed the peak inbound or outbound Internet traffic, whichever is larger, of the asset.
  /// [instanceId] The ID of the instance.
  /// [instanceType] The type of the Instance. Valid values: `ecs`,`slb`,`eip`.
  /// [internetIp] The IP address of the public IP address asset.
  /// [pps] The current message number cleaning threshold. Unit: pps.
  const BasicThresholdArgs({
    required this.bps,
    required this.instanceId,
    required this.instanceType,
    required this.internetIp,
    required this.pps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bps': bps,
      'instanceId': instanceId,
      'instanceType': instanceType,
      'internetIp': internetIp,
      'pps': pps,
    };
  }

  factory BasicThresholdArgs.fromMap(Map<String, dynamic> map) {
    return BasicThresholdArgs(
      bps: pulumi.Input.fromValue(map['bps'] as int),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      internetIp: pulumi.Input.fromValue(map['internetIp'] as String),
      pps: pulumi.Input.fromValue(map['pps'] as int),
    );
  }
}

