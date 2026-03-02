// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskDefinitionPlacementConstraint {
  /// Cluster Query Language expression to apply to the constraint. For more information, see [Cluster Query Language in the Amazon EC2 Container Service Developer Guide](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html).
  final pulumi.Input<String> expression;
  /// Proxy type. The default value is `APPMESH`. The only supported value is `APPMESH`.
  final pulumi.Input<String> type;

  /// Creates a new [GetTaskDefinitionPlacementConstraint].
  /// [expression] Cluster Query Language expression to apply to the constraint. For more information, see [Cluster Query Language in the Amazon EC2 Container Service Developer Guide](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html).
  /// [type] Proxy type. The default value is `APPMESH`. The only supported value is `APPMESH`.
  GetTaskDefinitionPlacementConstraint({
    required this.expression,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'type': type,
    };
  }

  factory GetTaskDefinitionPlacementConstraint.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionPlacementConstraint(
      expression: (map['expression'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

