// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersTwitter {
  /// The maximum number of rows to query.
  final int maxRows;

  /// The Twitter query to retrieve the data.
  final String query;

  DataSourceParametersTwitter({
    required this.maxRows,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxRows'] = maxRows;
    map['query'] = query;
    return map;
  }

  factory DataSourceParametersTwitter.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersTwitter(
      maxRows: map['maxRows'] as int,
      query: map['query'] as String,
    );
  }
}
