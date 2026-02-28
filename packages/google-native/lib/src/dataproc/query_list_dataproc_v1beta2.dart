// ignore_for_file: unused_element, unnecessary_cast

/// A list of queries to run on a cluster.
class QueryListDataprocV1beta2 {
  /// The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": [ "query1", "query2", "query3;query4", ] } }
  final List<String> queries;

  /// Creates a new [QueryListDataprocV1beta2].
  /// [queries] The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": [ "query1", "query2", "query3;query4", ] } }
  QueryListDataprocV1beta2({
    required this.queries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queries'] = queries;
    return map;
  }

  factory QueryListDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return QueryListDataprocV1beta2(
      queries: (map['queries'] as List).cast<String>(),
    );
  }
}
