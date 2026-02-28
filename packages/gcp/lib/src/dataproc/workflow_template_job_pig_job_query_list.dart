// ignore_for_file: unused_element, unnecessary_cast


class WorkflowTemplateJobPigJobQueryList {
  /// Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": } }
  final List<String> queries;

  /// Creates a new [WorkflowTemplateJobPigJobQueryList].
  /// [queries] Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": } }
  WorkflowTemplateJobPigJobQueryList({
    required this.queries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queries': queries,
    };
  }

  factory WorkflowTemplateJobPigJobQueryList.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobPigJobQueryList(
      queries: (map['queries'] as List).cast<String>(),
    );
  }
}

