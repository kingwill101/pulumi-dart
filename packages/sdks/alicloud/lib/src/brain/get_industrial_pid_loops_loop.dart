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
      id: (map['id'] as String).input(),
      pidLoopConfiguration: (map['pidLoopConfiguration'] as String).input(),
      pidLoopDcsType: (map['pidLoopDcsType'] as String).input(),
      pidLoopDesc: (map['pidLoopDesc'] as String).input(),
      pidLoopId: (map['pidLoopId'] as String).input(),
      pidLoopIsCrucial: (map['pidLoopIsCrucial'] as bool).input(),
      pidLoopName: (map['pidLoopName'] as String).input(),
      pidLoopType: (map['pidLoopType'] as String).input(),
      pidProjectId: (map['pidProjectId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

