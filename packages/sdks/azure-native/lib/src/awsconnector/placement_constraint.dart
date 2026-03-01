// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PlacementConstraint
class PlacementConstraint {
  /// A cluster query language expression to apply to the constraint. The expression can have a maximum length of 2000 characters. You can't specify an expression if the constraint type is ``distinctInstance``. For more information, see [Cluster query language](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html) in the *Amazon Elastic Container Service Developer Guide*.
  final String? expression;
  /// The type of constraint. Use ``distinctInstance`` to ensure that each task in a particular group is running on a different container instance. Use ``memberOf`` to restrict the selection to a group of valid candidates.
  final String? type;

  /// Creates a new [PlacementConstraint].
  /// [expression] A cluster query language expression to apply to the constraint. The expression can have a maximum length of 2000 characters. You can't specify an expression if the constraint type is ``distinctInstance``. For more information, see [Cluster query language](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html) in the *Amazon Elastic Container Service Developer Guide*.
  /// [type] The type of constraint. Use ``distinctInstance`` to ensure that each task in a particular group is running on a different container instance. Use ``memberOf`` to restrict the selection to a group of valid candidates.
  PlacementConstraint({
    this.expression,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'type': ?type,
    };
  }

  factory PlacementConstraint.fromMap(Map<String, dynamic> map) {
    return PlacementConstraint(
      expression: map['expression'] == null ? null : map['expression'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

