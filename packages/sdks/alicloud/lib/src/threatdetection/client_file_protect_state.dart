// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClientFileProtect resources.
class ClientFileProtectState {
  /// 0 no alert 1 info 2 suspicious 3 critical.
  final pulumi.Input<int>? alertLevel;
  /// file operation.
  final pulumi.Input<List<String>>? fileOps;
  /// file path.
  final pulumi.Input<List<String>>? filePaths;
  /// process path.
  final pulumi.Input<List<String>>? procPaths;
  /// rule action, pass or alert.
  final pulumi.Input<String>? ruleAction;
  /// ruleName.
  final pulumi.Input<String>? ruleName;
  /// rule status 0 is disable 1 is enable.
  final pulumi.Input<int>? status;
  /// switch id.
  final pulumi.Input<String>? switchId;

  /// Creates a new [ClientFileProtectState].
  /// [alertLevel] 0 no alert 1 info 2 suspicious 3 critical.
  /// [fileOps] file operation.
  /// [filePaths] file path.
  /// [procPaths] process path.
  /// [ruleAction] rule action, pass or alert.
  /// [ruleName] ruleName.
  /// [status] rule status 0 is disable 1 is enable.
  /// [switchId] switch id.
  ClientFileProtectState({
    this.alertLevel,
    this.fileOps,
    this.filePaths,
    this.procPaths,
    this.ruleAction,
    this.ruleName,
    this.status,
    this.switchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertLevel': ?alertLevel,
      'fileOps': ?fileOps,
      'filePaths': ?filePaths,
      'procPaths': ?procPaths,
      'ruleAction': ?ruleAction,
      'ruleName': ?ruleName,
      'status': ?status,
      'switchId': ?switchId,
    };
  }

  factory ClientFileProtectState.fromMap(Map<String, dynamic> map) {
    return ClientFileProtectState(
      alertLevel: map['alertLevel'] == null ? null : (map['alertLevel']! as int).input(),
      fileOps: map['fileOps'] == null ? null : ((map['fileOps']! as List).cast<String>()).input(),
      filePaths: map['filePaths'] == null ? null : ((map['filePaths']! as List).cast<String>()).input(),
      procPaths: map['procPaths'] == null ? null : ((map['procPaths']! as List).cast<String>()).input(),
      ruleAction: map['ruleAction'] == null ? null : (map['ruleAction']! as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as int).input(),
      switchId: map['switchId'] == null ? null : (map['switchId']! as String).input(),
    );
  }
}

