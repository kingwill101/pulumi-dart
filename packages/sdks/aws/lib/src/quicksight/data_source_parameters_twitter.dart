// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersTwitter {
  /// The maximum number of rows to query.
  final pulumi.Input<int> maxRows;
  /// The Twitter query to retrieve the data.
  final pulumi.Input<String> query;

  /// Creates a new [DataSourceParametersTwitter].
  /// [maxRows] The maximum number of rows to query.
  /// [query] The Twitter query to retrieve the data.
  const DataSourceParametersTwitter({
    required this.maxRows,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRows': maxRows,
      'query': query,
    };
  }

  factory DataSourceParametersTwitter.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersTwitter(
      maxRows: pulumi.Input.fromValue(map['maxRows'] as int),
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}
