// ignore_for_file: unused_element, unnecessary_cast

/// A list of queries to run on a cluster.
class QueryList {
  /// The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": [ "query1", "query2", "query3;query4", ] } }
  final List<String> queries;

  QueryList({
    required this.queries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queries'] = queries;
    return map;
  }

  factory QueryList.fromMap(Map<String, dynamic> map) {
    return QueryList(
      queries: (map['queries'] as List).cast<String>(),
    );
  }
}
