// ignore_for_file: unused_element, unnecessary_cast

class GroupResourceQuery {
  /// The resource query as a JSON string.
  final String query;

  /// The type of the resource query. Defaults to `TAG_FILTERS_1_0`.
  final String? type;

  GroupResourceQuery({
    required this.query,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['query'] = query;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GroupResourceQuery.fromMap(Map<String, dynamic> map) {
    return GroupResourceQuery(
      query: map['query'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
