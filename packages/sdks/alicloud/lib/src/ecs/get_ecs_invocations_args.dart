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
    pulumi.Output<String>? commandId,
    pulumi.Output<String>? contentEncoding,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? invokeStatus,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
  }) :
      commandId = pulumi.Input.asOptionalInput<String>(commandId),
      contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      invokeStatus = pulumi.Input.asOptionalInput<String>(invokeStatus),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

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
      commandId: map['commandId'] == null ? null : pulumi.Output.create<String>(map['commandId'] as String),
      contentEncoding: map['contentEncoding'] == null ? null : pulumi.Output.create<String>(map['contentEncoding'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      invokeStatus: map['invokeStatus'] == null ? null : pulumi.Output.create<String>(map['invokeStatus'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
    );
  }
}

