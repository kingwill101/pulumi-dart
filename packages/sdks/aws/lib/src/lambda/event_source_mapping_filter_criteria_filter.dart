// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceMappingFilterCriteriaFilter {
  /// Filter pattern up to 4096 characters. See [Filter Rule Syntax](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-syntax).
  final pulumi.Input<String?>? pattern;

  /// Creates a new [EventSourceMappingFilterCriteriaFilter].
  /// [pattern] Filter pattern up to 4096 characters. See [Filter Rule Syntax](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-syntax).
  const EventSourceMappingFilterCriteriaFilter({
    this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pattern': ?pattern,
    };
  }

  factory EventSourceMappingFilterCriteriaFilter.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingFilterCriteriaFilter(
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
