// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ProjectInfo.
class ProjectInfoArgs {
  /// The ID of the billing account associated with the project, if
  /// any. Set to empty string to disable billing for the project.
  /// For example, `"012345-567890-ABCDEF"` or `""`.
  final Input<String> billingAccount;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ProjectInfoArgs({
    required this.billingAccount,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccount'] = billingAccount;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ProjectInfoArgs.fromMap(Map<String, dynamic> map) {
    return ProjectInfoArgs(
      billingAccount: Input.asInput<String>(map['billingAccount']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
