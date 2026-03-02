// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SolutionInstanceParameter {
  /// Create parameter Key.
  final pulumi.Input<String> parameterKey;
  /// Create parameter Value.
  final pulumi.Input<String> parameterValue;

  /// Creates a new [SolutionInstanceParameter].
  /// [parameterKey] Create parameter Key.
  /// [parameterValue] Create parameter Value.
  SolutionInstanceParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory SolutionInstanceParameter.fromMap(Map<String, dynamic> map) {
    return SolutionInstanceParameter(
      parameterKey: (map['parameterKey'] as String).input(),
      parameterValue: (map['parameterValue'] as String).input(),
    );
  }
}

