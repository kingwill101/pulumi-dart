// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how many time series must fail a predicate to trigger a condition. If not specified, then a {count: 1} trigger is used.
class Trigger {
  /// The absolute number of time series that must fail the predicate for the condition to be triggered.
  final int? count;

  /// The percentage of time series that must fail the predicate for the condition to be triggered.
  final double? percent;

  /// Creates a new [Trigger].
  /// [count] The absolute number of time series that must fail the predicate for the condition to be triggered.
  /// [percent] The percentage of time series that must fail the predicate for the condition to be triggered.
  Trigger({this.count, this.percent});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': ?count, 'percent': ?percent};
  }

  factory Trigger.fromMap(Map<String, dynamic> map) {
    return Trigger(
      count: map['count'] == null ? null : map['count'] as int,
      percent: map['percent'] == null ? null : map['percent'] as double,
    );
  }
}
