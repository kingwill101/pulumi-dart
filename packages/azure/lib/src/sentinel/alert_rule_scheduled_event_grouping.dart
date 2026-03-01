// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleScheduledEventGrouping {
  /// The aggregation type of grouping the events. Possible values are `AlertPerResult` and `SingleAlert`.
  final String aggregationMethod;

  /// Creates a new [AlertRuleScheduledEventGrouping].
  /// [aggregationMethod] The aggregation type of grouping the events. Possible values are `AlertPerResult` and `SingleAlert`.
  AlertRuleScheduledEventGrouping({
    required this.aggregationMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationMethod': aggregationMethod,
    };
  }

  factory AlertRuleScheduledEventGrouping.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledEventGrouping(
      aggregationMethod: map['aggregationMethod'] as String,
    );
  }
}

