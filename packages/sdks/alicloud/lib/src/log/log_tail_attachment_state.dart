// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogTailAttachment resources.
class LogTailAttachmentState {
  /// The Logtail configuration name, which is unique in the same project.
  final pulumi.Input<String>? logtailConfigName;
  /// The machine group name, which is unique in the same project.
  final pulumi.Input<String>? machineGroupName;
  /// The project name to the log store belongs.
  final pulumi.Input<String>? project;

  /// Creates a new [LogTailAttachmentState].
  /// [logtailConfigName] The Logtail configuration name, which is unique in the same project.
  /// [machineGroupName] The machine group name, which is unique in the same project.
  /// [project] The project name to the log store belongs.
  LogTailAttachmentState({
    this.logtailConfigName,
    this.machineGroupName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logtailConfigName': ?logtailConfigName,
      'machineGroupName': ?machineGroupName,
      'project': ?project,
    };
  }

  factory LogTailAttachmentState.fromMap(Map<String, dynamic> map) {
    return LogTailAttachmentState(
      logtailConfigName: map['logtailConfigName'] == null ? null : (map['logtailConfigName']! as String).input(),
      machineGroupName: map['machineGroupName'] == null ? null : (map['machineGroupName']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

