// ignore_for_file: unused_element, unnecessary_cast

class PipeSourceParametersFilterCriteriaFilter {
  /// The event pattern. At most 4096 characters.
  final String pattern;

  PipeSourceParametersFilterCriteriaFilter({
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pattern'] = pattern;
    return map;
  }

  factory PipeSourceParametersFilterCriteriaFilter.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersFilterCriteriaFilter(
      pattern: map['pattern'] as String,
    );
  }
}
