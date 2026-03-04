// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePlacementConstraint {
  /// Cluster Query Language expression to apply to the constraint. Does not need to be specified for the `distinctInstance` type. For more information, see [Cluster Query Language in the Amazon EC2 Container Service Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html).
  final pulumi.Input<String>? expression;

  /// Type of constraint. The only valid values at this time are `memberOf` and `distinctInstance`.
  final pulumi.Input<String> type;

  /// Creates a new [ServicePlacementConstraint].
  /// [expression] Cluster Query Language expression to apply to the constraint. Does not need to be specified for the `distinctInstance` type. For more information, see [Cluster Query Language in the Amazon EC2 Container Service Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html).
  /// [type] Type of constraint. The only valid values at this time are `memberOf` and `distinctInstance`.
  ServicePlacementConstraint({this.expression, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expression': ?expression, 'type': type};
  }

  factory ServicePlacementConstraint.fromMap(Map<String, dynamic> map) {
    return ServicePlacementConstraint(
      expression: (() {
        final guardedValue = map['expression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
