// ignore_for_file: unused_element, unnecessary_cast

/// A Cardinality condition for the Waiter resource. A cardinality condition is met when the number of variables under a specified path prefix reaches a predefined number. For example, if you set a Cardinality condition where the `path` is set to `/foo` and the number of paths is set to `2`, the following variables would meet the condition in a RuntimeConfig resource: + `/foo/variable1 = "value1"` + `/foo/variable2 = "value2"` + `/bar/variable3 = "value3"` It would not satisfy the same condition with the `number` set to `3`, however, because there is only 2 paths that start with `/foo`. Cardinality conditions are recursive; all subtrees under the specific path prefix are counted.
class CardinalityResponse {
  /// The number variables under the `path` that must exist to meet this condition. Defaults to 1 if not specified.
  final int number;

  /// The root of the variable subtree to monitor. For example, `/foo`.
  final String path;

  /// Creates a new [CardinalityResponse].
  /// [number] The number variables under the `path` that must exist to meet this condition. Defaults to 1 if not specified.
  /// [path] The root of the variable subtree to monitor. For example, `/foo`.
  CardinalityResponse({
    required this.number,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['number'] = number;
    map['path'] = path;
    return map;
  }

  factory CardinalityResponse.fromMap(Map<String, dynamic> map) {
    return CardinalityResponse(
      number: map['number'] as int,
      path: map['path'] as String,
    );
  }
}
