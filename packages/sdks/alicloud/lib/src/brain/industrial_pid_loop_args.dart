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
    required this.pidLoopConfiguration,
    required this.pidLoopDcsType,
    this.pidLoopDesc,
    required this.pidLoopIsCrucial,
    required this.pidLoopName,
    required this.pidLoopType,
    required this.pidProjectId,
  });

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
      pidLoopConfiguration: pulumi.Input.fromValue(map['pidLoopConfiguration'] as String),
      pidLoopDcsType: pulumi.Input.fromValue(map['pidLoopDcsType'] as String),
      pidLoopDesc: (() { final guardedValue = map['pidLoopDesc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pidLoopIsCrucial: pulumi.Input.fromValue(map['pidLoopIsCrucial'] as bool),
      pidLoopName: pulumi.Input.fromValue(map['pidLoopName'] as String),
      pidLoopType: pulumi.Input.fromValue(map['pidLoopType'] as String),
      pidProjectId: pulumi.Input.fromValue(map['pidProjectId'] as String),
    );
  }
}

