// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_log_tail_attachment_log_tail_attachment_args_doc}
/// The set of arguments for LogTailAttachment.
/// {@endtemplate}
/// {@macro pulumi_log_log_tail_attachment_log_tail_attachment_args_doc}
class LogTailAttachmentArgs {
  /// The Logtail configuration name, which is unique in the same project.
  final pulumi.Input<String> logtailConfigName;
  /// The machine group name, which is unique in the same project.
  final pulumi.Input<String> machineGroupName;
  /// The project name to the log store belongs.
  final pulumi.Input<String> project;

  /// Creates a new [LogTailAttachmentArgs].
  /// [logtailConfigName] The Logtail configuration name, which is unique in the same project.
  /// [machineGroupName] The machine group name, which is unique in the same project.
  /// [project] The project name to the log store belongs.
  LogTailAttachmentArgs({
    required this.logtailConfigName,
    required this.machineGroupName,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logtailConfigName': logtailConfigName,
      'machineGroupName': machineGroupName,
      'project': project,
    };
  }

  factory LogTailAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return LogTailAttachmentArgs(
      logtailConfigName: pulumi.Input.fromValue(map['logtailConfigName'] as String),
      machineGroupName: pulumi.Input.fromValue(map['machineGroupName'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}

