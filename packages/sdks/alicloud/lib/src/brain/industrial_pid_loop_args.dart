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
      pidLoopConfiguration: (map['pidLoopConfiguration'] as String).input(),
      pidLoopDcsType: (map['pidLoopDcsType'] as String).input(),
      pidLoopDesc: map['pidLoopDesc'] == null ? null : (map['pidLoopDesc'] as String).input(),
      pidLoopIsCrucial: (map['pidLoopIsCrucial'] as bool).input(),
      pidLoopName: (map['pidLoopName'] as String).input(),
      pidLoopType: (map['pidLoopType'] as String).input(),
      pidProjectId: (map['pidProjectId'] as String).input(),
    );
  }
}

