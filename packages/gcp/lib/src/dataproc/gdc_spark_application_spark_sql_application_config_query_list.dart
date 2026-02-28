// ignore_for_file: unused_element, unnecessary_cast

class GdcSparkApplicationSparkSqlApplicationConfigQueryList {
  /// The queries to run.
  final List<String> queries;

  /// Creates a new [GdcSparkApplicationSparkSqlApplicationConfigQueryList].
  /// [queries] The queries to run.
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
