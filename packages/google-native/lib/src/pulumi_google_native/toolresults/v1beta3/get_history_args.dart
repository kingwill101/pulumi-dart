// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHistory.
class GetHistoryArgs {
  final Input<String> historyId;
  final Input<String>? project;

  GetHistoryArgs({
    required this.historyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['historyId'] = historyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHistoryArgs.fromMap(Map<String, dynamic> map) {
    return GetHistoryArgs(
      historyId: Input.asInput<String>(map['historyId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
