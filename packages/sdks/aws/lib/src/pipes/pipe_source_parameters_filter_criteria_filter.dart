// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersFilterCriteriaFilter {
  /// The event pattern. At most 4096 characters.
  final pulumi.Input<String> pattern;

  /// Creates a new [PipeSourceParametersFilterCriteriaFilter].
  /// [pattern] The event pattern. At most 4096 characters.
  const PipeSourceParametersFilterCriteriaFilter({
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pattern': pattern,
    };
  }

  factory PipeSourceParametersFilterCriteriaFilter.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersFilterCriteriaFilter(
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
    );
  }
}
