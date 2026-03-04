// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupResourceQuery {
  /// The resource query as a JSON string.
  final pulumi.Input<String> query;

  /// The type of the resource query. Defaults to `TAG_FILTERS_1_0`.
  final pulumi.Input<String>? type;

  /// Creates a new [GroupResourceQuery].
  /// [query] The resource query as a JSON string.
  /// [type] The type of the resource query. Defaults to `TAG_FILTERS_1_0`.
  GroupResourceQuery({required this.query, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'query': query, 'type': ?type};
  }

  factory GroupResourceQuery.fromMap(Map<String, dynamic> map) {
    return GroupResourceQuery(
      query: pulumi.Input.fromValue(map['query'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
