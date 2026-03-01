// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_client_file_protect_client_file_protect_args_doc}
/// The set of arguments for ClientFileProtect.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_client_file_protect_client_file_protect_args_doc}
class ClientFileProtectArgs {
  /// 0 no alert 1 info 2 suspicious 3 critical.
  final pulumi.Input<int>? alertLevel;
  /// file operation.
  final pulumi.Input<List<String>> fileOps;
  /// file path.
  final pulumi.Input<List<String>> filePaths;
  /// process path.
  final pulumi.Input<List<String>> procPaths;
  /// rule action, pass or alert.
  final pulumi.Input<String> ruleAction;
  /// ruleName.
  final pulumi.Input<String> ruleName;
  /// rule status 0 is disable 1 is enable.
  final pulumi.Input<int>? status;
  /// switch id.
  final pulumi.Input<String>? switchId;

  /// Creates a new [ClientFileProtectArgs].
  /// [alertLevel] 0 no alert 1 info 2 suspicious 3 critical.
  /// [fileOps] file operation.
  /// [filePaths] file path.
  /// [procPaths] process path.
  /// [ruleAction] rule action, pass or alert.
  /// [ruleName] ruleName.
  /// [status] rule status 0 is disable 1 is enable.
  /// [switchId] switch id.
  ClientFileProtectArgs({
    pulumi.Output<int>? alertLevel,
    required pulumi.Output<List<String>> fileOps,
    required pulumi.Output<List<String>> filePaths,
    required pulumi.Output<List<String>> procPaths,
    required pulumi.Output<String> ruleAction,
    required pulumi.Output<String> ruleName,
    pulumi.Output<int>? status,
    pulumi.Output<String>? switchId,
  }) :
      alertLevel = pulumi.Input.asOptionalInput<int>(alertLevel),
      fileOps = pulumi.Input.asInput<List<String>>(fileOps),
      filePaths = pulumi.Input.asInput<List<String>>(filePaths),
      procPaths = pulumi.Input.asInput<List<String>>(procPaths),
      ruleAction = pulumi.Input.asInput<String>(ruleAction),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      status = pulumi.Input.asOptionalInput<int>(status),
      switchId = pulumi.Input.asOptionalInput<String>(switchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertLevel': ?alertLevel,
      'fileOps': fileOps,
      'filePaths': filePaths,
      'procPaths': procPaths,
      'ruleAction': ruleAction,
      'ruleName': ruleName,
      'status': ?status,
      'switchId': ?switchId,
    };
  }

  factory ClientFileProtectArgs.fromMap(Map<String, dynamic> map) {
    return ClientFileProtectArgs(
      alertLevel: map['alertLevel'] == null ? null : pulumi.Output.create<int>(map['alertLevel'] as int),
      fileOps: pulumi.Output.create<List<String>>((map['fileOps'] as List).cast<String>()),
      filePaths: pulumi.Output.create<List<String>>((map['filePaths'] as List).cast<String>()),
      procPaths: pulumi.Output.create<List<String>>((map['procPaths'] as List).cast<String>()),
      ruleAction: pulumi.Output.create<String>(map['ruleAction'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
      switchId: map['switchId'] == null ? null : pulumi.Output.create<String>(map['switchId'] as String),
    );
  }
}

