// ignore_for_file: unused_element, unnecessary_cast

class GdcSparkApplicationSparkSqlApplicationConfigQueryList {
  /// The queries to run.
  final List<String> queries;

  GdcSparkApplicationSparkSqlApplicationConfigQueryList({
    required this.queries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queries'] = queries;
    return map;
  }

  factory GdcSparkApplicationSparkSqlApplicationConfigQueryList.fromMap(
      Map<String, dynamic> map) {
    return GdcSparkApplicationSparkSqlApplicationConfigQueryList(
      queries: (map['queries'] as List).cast<String>(),
    );
  }
}
