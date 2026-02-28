// ignore_for_file: unused_element, unnecessary_cast

class EventTargetAppsyncTarget {
  /// Contains the GraphQL mutation to be parsed and executed.
  final String? graphqlOperation;

  /// Creates a new [EventTargetAppsyncTarget].
  /// [graphqlOperation] Contains the GraphQL mutation to be parsed and executed.
  EventTargetAppsyncTarget({
    this.graphqlOperation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final graphqlOperationValue = graphqlOperation;
    if (graphqlOperationValue != null) {
      map['graphqlOperation'] = graphqlOperationValue;
    }
    return map;
  }

  factory EventTargetAppsyncTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetAppsyncTarget(
      graphqlOperation: map['graphqlOperation'] == null
          ? null
          : map['graphqlOperation'] as String,
    );
  }
}
