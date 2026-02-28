// ignore_for_file: unused_element, unnecessary_cast

class EventSourceMappingFilterCriteriaFilter {
  /// Filter pattern up to 4096 characters. See [Filter Rule Syntax](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-syntax).
  final String? pattern;

  /// Creates a new [EventSourceMappingFilterCriteriaFilter].
  /// [pattern] Filter pattern up to 4096 characters. See [Filter Rule Syntax](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-syntax).
  EventSourceMappingFilterCriteriaFilter({
    this.pattern,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final patternValue = pattern;
    if (patternValue != null) {
      map['pattern'] = patternValue;
    }
    return map;
  }

  factory EventSourceMappingFilterCriteriaFilter.fromMap(
      Map<String, dynamic> map) {
    return EventSourceMappingFilterCriteriaFilter(
      pattern: map['pattern'] == null ? null : map['pattern'] as String,
    );
  }
}
