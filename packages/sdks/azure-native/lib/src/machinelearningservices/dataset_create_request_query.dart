// ignore_for_file: unused_element, unnecessary_cast


class DatasetCreateRequestQuery {
  /// The SQL/PostgreSQL/MySQL datastore name.
  final String? datastoreName;
  /// SQL Quey.
  final String? query;

  /// Creates a new [DatasetCreateRequestQuery].
  /// [datastoreName] The SQL/PostgreSQL/MySQL datastore name.
  /// [query] SQL Quey.
  DatasetCreateRequestQuery({
    this.datastoreName,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreName': ?datastoreName,
      'query': ?query,
    };
  }

  factory DatasetCreateRequestQuery.fromMap(Map<String, dynamic> map) {
    return DatasetCreateRequestQuery(
      datastoreName: map['datastoreName'] == null ? null : map['datastoreName'] as String,
      query: map['query'] == null ? null : map['query'] as String,
    );
  }
}

