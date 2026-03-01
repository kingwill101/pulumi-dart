// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_commands_get_commands_args_doc}
/// Arguments for getCommands.
/// {@endtemplate}
/// {@macro pulumi_eds_get_commands_get_commands_args_doc}
class GetCommandsArgs {
  /// The Script Type. Valid values: `RunBatScript`, `RunPowerShellScript`.
  final pulumi.Input<String>? commandType;
  /// That Returns the Data Encoding Method. Valid values: `Base64`, `PlainText`.
  final pulumi.Input<String>? contentEncoding;
  /// The desktop id of the Desktop.
  final pulumi.Input<String>? desktopId;
  /// A list of Command IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Script Is Executed in the Overall Implementation of the State. Valid values: `Pending`, `Failed`, `PartialFailed`, `Running`, `Stopped`, `Stopping`, `Finished`, `Success`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetCommandsArgs].
  /// [commandType] The Script Type. Valid values: `RunBatScript`, `RunPowerShellScript`.
  /// [contentEncoding] That Returns the Data Encoding Method. Valid values: `Base64`, `PlainText`.
  /// [desktopId] The desktop id of the Desktop.
  /// [ids] A list of Command IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Script Is Executed in the Overall Implementation of the State. Valid values: `Pending`, `Failed`, `PartialFailed`, `Running`, `Stopped`, `Stopping`, `Finished`, `Success`.
  GetCommandsArgs({
    String? commandType,
    String? contentEncoding,
    String? desktopId,
    List<String>? ids,
    String? outputFile,
    String? status,
  }) :
      commandType = pulumi.Input.asOptionalInput<String>(commandType),
      contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
      desktopId = pulumi.Input.asOptionalInput<String>(desktopId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandType': ?commandType,
      'contentEncoding': ?contentEncoding,
      'desktopId': ?desktopId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetCommandsArgs.fromMap(Map<String, dynamic> map) {
    return GetCommandsArgs(
      commandType: map['commandType'] == null ? null : map['commandType'] as String,
      contentEncoding: map['contentEncoding'] == null ? null : map['contentEncoding'] as String,
      desktopId: map['desktopId'] == null ? null : map['desktopId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

