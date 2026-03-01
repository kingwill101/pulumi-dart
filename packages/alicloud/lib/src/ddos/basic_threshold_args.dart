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
  BasicThresholdArgs({
    required int bps,
    required String instanceId,
    required String instanceType,
    required String internetIp,
    required int pps,
  }) :
      bps = pulumi.Input.asInput<int>(bps),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      internetIp = pulumi.Input.asInput<String>(internetIp),
      pps = pulumi.Input.asInput<int>(pps);

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
      bps: map['bps'] as int,
      instanceId: map['instanceId'] as String,
      instanceType: map['instanceType'] as String,
      internetIp: map['internetIp'] as String,
      pps: map['pps'] as int,
    );
  }
}

