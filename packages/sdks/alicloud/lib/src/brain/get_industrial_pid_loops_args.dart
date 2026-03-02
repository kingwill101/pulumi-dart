// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_brain_get_industrial_pid_loops_get_industrial_pid_loops_args_doc}
/// Arguments for getIndustrialPidLoops.
/// {@endtemplate}
/// {@macro pulumi_brain_get_industrial_pid_loops_get_industrial_pid_loops_args_doc}
class GetIndustrialPidLoopsArgs {
  final pulumi.Input<bool>? enableDetails;
  /// A list of Pid Loop IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Pid Loop name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of Pid Loop.
  final pulumi.Input<String>? pidLoopName;
  /// The pid project id.
  final pulumi.Input<String> pidProjectId;
  /// The status of Pid Loop.
  final pulumi.Input<String>? status;

  /// Creates a new [GetIndustrialPidLoopsArgs].
  /// [enableDetails] Optional.
  /// [ids] A list of Pid Loop IDs.
  /// [nameRegex] A regex string to filter results by Pid Loop name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pidLoopName] The name of Pid Loop.
  /// [pidProjectId] The pid project id.
  /// [status] The status of Pid Loop.
  GetIndustrialPidLoopsArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pidLoopName,
    required this.pidProjectId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pidLoopName': ?pidLoopName,
      'pidProjectId': pidProjectId,
      'status': ?status,
    };
  }

  factory GetIndustrialPidLoopsArgs.fromMap(Map<String, dynamic> map) {
    return GetIndustrialPidLoopsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pidLoopName: map['pidLoopName'] == null ? null : (map['pidLoopName']! as String).input(),
      pidProjectId: (map['pidProjectId'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

