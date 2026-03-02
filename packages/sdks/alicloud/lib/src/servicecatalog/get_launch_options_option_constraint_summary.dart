// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchOptionsOptionConstraintSummary {
  /// Constraint type.The value is Launch, which indicates that the constraint is started.
  final pulumi.Input<String> constraintType;
  /// Constraint description.
  final pulumi.Input<String> description;

  /// Creates a new [GetLaunchOptionsOptionConstraintSummary].
  /// [constraintType] Constraint type.The value is Launch, which indicates that the constraint is started.
  /// [description] Constraint description.
  GetLaunchOptionsOptionConstraintSummary({
    required this.constraintType,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraintType': constraintType,
      'description': description,
    };
  }

  factory GetLaunchOptionsOptionConstraintSummary.fromMap(Map<String, dynamic> map) {
    return GetLaunchOptionsOptionConstraintSummary(
      constraintType: (map['constraintType'] as String).input(),
      description: (map['description'] as String).input(),
    );
  }
}

