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
    this.alertLevel,
    required this.fileOps,
    required this.filePaths,
    required this.procPaths,
    required this.ruleAction,
    required this.ruleName,
    this.status,
    this.switchId,
  });

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
      alertLevel: (() { final guardedValue = map['alertLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fileOps: pulumi.Input.fromValue((map['fileOps'] as List).cast<String>()),
      filePaths: pulumi.Input.fromValue((map['filePaths'] as List).cast<String>()),
      procPaths: pulumi.Input.fromValue((map['procPaths'] as List).cast<String>()),
      ruleAction: pulumi.Input.fromValue(map['ruleAction'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      switchId: (() { final guardedValue = map['switchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

