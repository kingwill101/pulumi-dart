// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LogicalView.
class LogicalViewArgs {
  /// Set to true to make the logical view protected against deletion.
  final Input<bool>? deletionProtection;

  /// The name of the instance to create the logical view within.
  final Input<String>? instance;

  /// The unique name of the logical view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  final Input<String> logicalViewId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The logical view's select query.
  final Input<String> query;

  LogicalViewArgs({
    this.deletionProtection,
    this.instance,
    required this.logicalViewId,
    this.project,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    map['logicalViewId'] = logicalViewId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['query'] = query;
    return map;
  }

  factory LogicalViewArgs.fromMap(Map<String, dynamic> map) {
    return LogicalViewArgs(
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      instance: Input.asOptionalInput<String>(map['instance']),
      logicalViewId: Input.asInput<String>(map['logicalViewId']),
      project: Input.asOptionalInput<String>(map['project']),
      query: Input.asInput<String>(map['query']),
    );
  }
}
