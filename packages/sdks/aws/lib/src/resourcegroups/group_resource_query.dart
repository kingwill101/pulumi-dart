// ignore_for_file: unused_element, unnecessary_cast


class GroupResourceQuery {
  /// The resource query as a JSON string.
  final String query;
  /// The type of the resource query. Defaults to `TAG_FILTERS_1_0`.
  final String? type;

  /// Creates a new [GroupResourceQuery].
  /// [query] The resource query as a JSON string.
  /// [type] The type of the resource query. Defaults to `TAG_FILTERS_1_0`.
  GroupResourceQuery({
    required this.query,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
      'type': ?type,
    };
  }

  factory GroupResourceQuery.fromMap(Map<String, dynamic> map) {
    return GroupResourceQuery(
      query: map['query'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

