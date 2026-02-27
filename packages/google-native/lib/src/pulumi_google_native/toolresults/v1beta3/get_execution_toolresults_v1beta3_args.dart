// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExecution.
class GetExecutionToolresultsV1beta3Args {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> historyId;
  final pulumi.Input<String>? project;

  GetExecutionToolresultsV1beta3Args({
    required this.executionId,
    required this.historyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionId'] = executionId;
    map['historyId'] = historyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetExecutionToolresultsV1beta3Args.fromMap(Map<String, dynamic> map) {
    return GetExecutionToolresultsV1beta3Args(
      executionId: pulumi.Input.asInput<String>(map['executionId']),
      historyId: pulumi.Input.asInput<String>(map['historyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
