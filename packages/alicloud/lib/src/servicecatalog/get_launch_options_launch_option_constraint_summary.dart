// ignore_for_file: unused_element, unnecessary_cast


class GetLaunchOptionsLaunchOptionConstraintSummary {
  /// Constraint type.The value is Launch, which indicates that the constraint is started.
  final String constraintType;
  /// Constraint description.
  final String description;

  /// Creates a new [GetLaunchOptionsLaunchOptionConstraintSummary].
  /// [constraintType] Constraint type.The value is Launch, which indicates that the constraint is started.
  /// [description] Constraint description.
  GetLaunchOptionsLaunchOptionConstraintSummary({
    required this.constraintType,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraintType': constraintType,
      'description': description,
    };
  }

  factory GetLaunchOptionsLaunchOptionConstraintSummary.fromMap(Map<String, dynamic> map) {
    return GetLaunchOptionsLaunchOptionConstraintSummary(
      constraintType: map['constraintType'] as String,
      description: map['description'] as String,
    );
  }
}

