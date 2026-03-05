// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IndustrialPidLoop resources.
class IndustrialPidLoopState {
  /// The Pid Loop Configuration.
  final pulumi.Input<String>? pidLoopConfiguration;
  /// The dcs type of Pid Loop. Valid values: `standard`.
  final pulumi.Input<String>? pidLoopDcsType;
  /// The desc of Pid Loop.
  final pulumi.Input<String>? pidLoopDesc;
  /// Whether is crucial Pid Loop.
  final pulumi.Input<bool>? pidLoopIsCrucial;
  /// The name of Pid Loop.
  final pulumi.Input<String>? pidLoopName;
  /// The type of Pid Loop. Valid values: `0`, `1`, `2`, `3`, `4`, `5`.
  final pulumi.Input<String>? pidLoopType;
  /// The pid project id.
  final pulumi.Input<String>? pidProjectId;
  /// The status of Pid Loop.
  final pulumi.Input<String>? status;

  /// Creates a new [IndustrialPidLoopState].
  /// [pidLoopConfiguration] The Pid Loop Configuration.
  /// [pidLoopDcsType] The dcs type of Pid Loop. Valid values: `standard`.
  /// [pidLoopDesc] The desc of Pid Loop.
  /// [pidLoopIsCrucial] Whether is crucial Pid Loop.
  /// [pidLoopName] The name of Pid Loop.
  /// [pidLoopType] The type of Pid Loop. Valid values: `0`, `1`, `2`, `3`, `4`, `5`.
  /// [pidProjectId] The pid project id.
  /// [status] The status of Pid Loop.
  IndustrialPidLoopState({
    this.pidLoopConfiguration,
    this.pidLoopDcsType,
    this.pidLoopDesc,
    this.pidLoopIsCrucial,
    this.pidLoopName,
    this.pidLoopType,
    this.pidProjectId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pidLoopConfiguration': ?pidLoopConfiguration,
      'pidLoopDcsType': ?pidLoopDcsType,
      'pidLoopDesc': ?pidLoopDesc,
      'pidLoopIsCrucial': ?pidLoopIsCrucial,
      'pidLoopName': ?pidLoopName,
      'pidLoopType': ?pidLoopType,
      'pidProjectId': ?pidProjectId,
      'status': ?status,
    };
  }

  factory IndustrialPidLoopState.fromMap(Map<String, dynamic> map) {
    return IndustrialPidLoopState(
      pidLoopConfiguration: (() { final guardedValue = map['pidLoopConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pidLoopDcsType: (() { final guardedValue = map['pidLoopDcsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pidLoopDesc: (() { final guardedValue = map['pidLoopDesc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pidLoopIsCrucial: (() { final guardedValue = map['pidLoopIsCrucial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pidLoopName: (() { final guardedValue = map['pidLoopName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pidLoopType: (() { final guardedValue = map['pidLoopType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pidProjectId: (() { final guardedValue = map['pidProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

