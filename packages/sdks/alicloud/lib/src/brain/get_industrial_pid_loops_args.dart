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
  const GetIndustrialPidLoopsArgs({
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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pidLoopName: (() { final guardedValue = map['pidLoopName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pidProjectId: pulumi.Input.fromValue(map['pidProjectId'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

