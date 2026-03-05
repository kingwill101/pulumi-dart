// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetAppsyncTarget {
  /// Contains the GraphQL mutation to be parsed and executed.
  final pulumi.Input<String>? graphqlOperation;

  /// Creates a new [EventTargetAppsyncTarget].
  /// [graphqlOperation] Contains the GraphQL mutation to be parsed and executed.
  EventTargetAppsyncTarget({
    this.graphqlOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graphqlOperation': ?graphqlOperation,
    };
  }

  factory EventTargetAppsyncTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetAppsyncTarget(
      graphqlOperation: (() { final guardedValue = map['graphqlOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

