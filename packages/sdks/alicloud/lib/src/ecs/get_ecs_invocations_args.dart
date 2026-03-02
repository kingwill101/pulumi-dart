// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_invocations_get_ecs_invocations_args_doc}
/// Arguments for getEcsInvocations.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_invocations_get_ecs_invocations_args_doc}
class GetEcsInvocationsArgs {
  /// The execution ID of the command.
  final pulumi.Input<String>? commandId;
  /// The encoding mode of the CommandContent and Output response parameters. Valid values: `PlainText`, `Base64`.
  final pulumi.Input<String>? contentEncoding;
  /// A list of Invocation IDs.
  final pulumi.Input<List<String>>? ids;
  /// The overall execution state of the command. The value of this parameter depends on the execution states on all the involved instances. Valid values: `Running`, `Finished`, `Failed`, `PartialFailed`, `Stopped`.
  final pulumi.Input<String>? invokeStatus;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetEcsInvocationsArgs].
  /// [commandId] The execution ID of the command.
  /// [contentEncoding] The encoding mode of the CommandContent and Output response parameters. Valid values: `PlainText`, `Base64`.
  /// [ids] A list of Invocation IDs.
  /// [invokeStatus] The overall execution state of the command. The value of this parameter depends on the execution states on all the involved instances. Valid values: `Running`, `Finished`, `Failed`, `PartialFailed`, `Stopped`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetEcsInvocationsArgs({
    this.commandId,
    this.contentEncoding,
    this.ids,
    this.invokeStatus,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandId': ?commandId,
      'contentEncoding': ?contentEncoding,
      'ids': ?ids,
      'invokeStatus': ?invokeStatus,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetEcsInvocationsArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsInvocationsArgs(
      commandId: map['commandId'] == null ? null : (map['commandId'] as String).input(),
      contentEncoding: map['contentEncoding'] == null ? null : (map['contentEncoding'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      invokeStatus: map['invokeStatus'] == null ? null : (map['invokeStatus'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
    );
  }
}

