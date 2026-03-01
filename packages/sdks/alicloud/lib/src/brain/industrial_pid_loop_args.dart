// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_brain_industrial_pid_loop_industrial_pid_loop_args_doc}
/// The set of arguments for IndustrialPidLoop.
/// {@endtemplate}
/// {@macro pulumi_brain_industrial_pid_loop_industrial_pid_loop_args_doc}
class IndustrialPidLoopArgs {
  /// The Pid Loop Configuration.
  final pulumi.Input<String> pidLoopConfiguration;
  /// The dcs type of Pid Loop. Valid values: `standard`.
  final pulumi.Input<String> pidLoopDcsType;
  /// The desc of Pid Loop.
  final pulumi.Input<String>? pidLoopDesc;
  /// Whether is crucial Pid Loop.
  final pulumi.Input<bool> pidLoopIsCrucial;
  /// The name of Pid Loop.
  final pulumi.Input<String> pidLoopName;
  /// The type of Pid Loop. Valid values: `0`, `1`, `2`, `3`, `4`, `5`.
  final pulumi.Input<String> pidLoopType;
  /// The pid project id.
  final pulumi.Input<String> pidProjectId;

  /// Creates a new [IndustrialPidLoopArgs].
  /// [pidLoopConfiguration] The Pid Loop Configuration.
  /// [pidLoopDcsType] The dcs type of Pid Loop. Valid values: `standard`.
  /// [pidLoopDesc] The desc of Pid Loop.
  /// [pidLoopIsCrucial] Whether is crucial Pid Loop.
  /// [pidLoopName] The name of Pid Loop.
  /// [pidLoopType] The type of Pid Loop. Valid values: `0`, `1`, `2`, `3`, `4`, `5`.
  /// [pidProjectId] The pid project id.
  IndustrialPidLoopArgs({
    required pulumi.Output<String> pidLoopConfiguration,
    required pulumi.Output<String> pidLoopDcsType,
    pulumi.Output<String>? pidLoopDesc,
    required pulumi.Output<bool> pidLoopIsCrucial,
    required pulumi.Output<String> pidLoopName,
    required pulumi.Output<String> pidLoopType,
    required pulumi.Output<String> pidProjectId,
  }) :
      pidLoopConfiguration = pulumi.Input.asInput<String>(pidLoopConfiguration),
      pidLoopDcsType = pulumi.Input.asInput<String>(pidLoopDcsType),
      pidLoopDesc = pulumi.Input.asOptionalInput<String>(pidLoopDesc),
      pidLoopIsCrucial = pulumi.Input.asInput<bool>(pidLoopIsCrucial),
      pidLoopName = pulumi.Input.asInput<String>(pidLoopName),
      pidLoopType = pulumi.Input.asInput<String>(pidLoopType),
      pidProjectId = pulumi.Input.asInput<String>(pidProjectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pidLoopConfiguration': pidLoopConfiguration,
      'pidLoopDcsType': pidLoopDcsType,
      'pidLoopDesc': ?pidLoopDesc,
      'pidLoopIsCrucial': pidLoopIsCrucial,
      'pidLoopName': pidLoopName,
      'pidLoopType': pidLoopType,
      'pidProjectId': pidProjectId,
    };
  }

  factory IndustrialPidLoopArgs.fromMap(Map<String, dynamic> map) {
    return IndustrialPidLoopArgs(
      pidLoopConfiguration: pulumi.Output.create<String>(map['pidLoopConfiguration'] as String),
      pidLoopDcsType: pulumi.Output.create<String>(map['pidLoopDcsType'] as String),
      pidLoopDesc: map['pidLoopDesc'] == null ? null : pulumi.Output.create<String>(map['pidLoopDesc'] as String),
      pidLoopIsCrucial: pulumi.Output.create<bool>(map['pidLoopIsCrucial'] as bool),
      pidLoopName: pulumi.Output.create<String>(map['pidLoopName'] as String),
      pidLoopType: pulumi.Output.create<String>(map['pidLoopType'] as String),
      pidProjectId: pulumi.Output.create<String>(map['pidProjectId'] as String),
    );
  }
}

