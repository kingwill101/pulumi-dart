// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndustrialPidLoopsLoop {
  /// The ID of the Pid Loop.
  final pulumi.Input<String> id;
  final pulumi.Input<String> pidLoopConfiguration;

  /// The dcs type of Pid Loop.
  final pulumi.Input<String> pidLoopDcsType;
  final pulumi.Input<String> pidLoopDesc;

  /// The ID of the Pid Loop.
  final pulumi.Input<String> pidLoopId;

  /// Whether is crucial Pid Loop.
  final pulumi.Input<bool> pidLoopIsCrucial;

  /// The name of Pid Loop.
  final pulumi.Input<String> pidLoopName;

  /// The type of Pid Loop.
  final pulumi.Input<String> pidLoopType;

  /// The pid project id.
  final pulumi.Input<String> pidProjectId;

  /// The status of Pid Loop.
  final pulumi.Input<String> status;

  /// Creates a new [GetIndustrialPidLoopsLoop].
  /// [id] The ID of the Pid Loop.
  /// [pidLoopConfiguration] Required.
  /// [pidLoopDcsType] The dcs type of Pid Loop.
  /// [pidLoopDesc] Required.
  /// [pidLoopId] The ID of the Pid Loop.
  /// [pidLoopIsCrucial] Whether is crucial Pid Loop.
  /// [pidLoopName] The name of Pid Loop.
  /// [pidLoopType] The type of Pid Loop.
  /// [pidProjectId] The pid project id.
  /// [status] The status of Pid Loop.
  GetIndustrialPidLoopsLoop({
    required this.id,
    required this.pidLoopConfiguration,
    required this.pidLoopDcsType,
    required this.pidLoopDesc,
    required this.pidLoopId,
    required this.pidLoopIsCrucial,
    required this.pidLoopName,
    required this.pidLoopType,
    required this.pidProjectId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'pidLoopConfiguration': pidLoopConfiguration,
      'pidLoopDcsType': pidLoopDcsType,
      'pidLoopDesc': pidLoopDesc,
      'pidLoopId': pidLoopId,
      'pidLoopIsCrucial': pidLoopIsCrucial,
      'pidLoopName': pidLoopName,
      'pidLoopType': pidLoopType,
      'pidProjectId': pidProjectId,
      'status': status,
    };
  }

  factory GetIndustrialPidLoopsLoop.fromMap(Map<String, dynamic> map) {
    return GetIndustrialPidLoopsLoop(
      id: pulumi.Input.fromValue(map['id'] as String),
      pidLoopConfiguration: pulumi.Input.fromValue(
        map['pidLoopConfiguration'] as String,
      ),
      pidLoopDcsType: pulumi.Input.fromValue(map['pidLoopDcsType'] as String),
      pidLoopDesc: pulumi.Input.fromValue(map['pidLoopDesc'] as String),
      pidLoopId: pulumi.Input.fromValue(map['pidLoopId'] as String),
      pidLoopIsCrucial: pulumi.Input.fromValue(map['pidLoopIsCrucial'] as bool),
      pidLoopName: pulumi.Input.fromValue(map['pidLoopName'] as String),
      pidLoopType: pulumi.Input.fromValue(map['pidLoopType'] as String),
      pidProjectId: pulumi.Input.fromValue(map['pidProjectId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
