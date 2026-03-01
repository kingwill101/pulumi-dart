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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? pidLoopName,
    required pulumi.Output<String> pidProjectId,
    pulumi.Output<String>? status,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pidLoopName = pulumi.Input.asOptionalInput<String>(pidLoopName),
      pidProjectId = pulumi.Input.asInput<String>(pidProjectId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pidLoopName: map['pidLoopName'] == null ? null : pulumi.Output.create<String>(map['pidLoopName'] as String),
      pidProjectId: pulumi.Output.create<String>(map['pidProjectId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

