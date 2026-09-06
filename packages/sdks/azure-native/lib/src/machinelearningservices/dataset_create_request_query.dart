// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetCreateRequestQuery {
  /// The SQL/PostgreSQL/MySQL datastore name.
  final pulumi.Input<String?>? datastoreName;
  /// SQL Quey.
  final pulumi.Input<String?>? query;

  /// Creates a new [DatasetCreateRequestQuery].
  /// [datastoreName] The SQL/PostgreSQL/MySQL datastore name.
  /// [query] SQL Quey.
  const DatasetCreateRequestQuery({
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
      datastoreName: (() { final guardedValue = map['datastoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
