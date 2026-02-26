// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how many time series must fail a predicate to trigger a condition. If not specified, then a {count: 1} trigger is used.
class Trigger {
  /// The absolute number of time series that must fail the predicate for the condition to be triggered.
  final int? count;

  /// The percentage of time series that must fail the predicate for the condition to be triggered.
  final double? percent;

  Trigger({
    this.count,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final percentValue = percent;
    if (percentValue != null) {
      map['percent'] = percentValue;
    }
    return map;
  }

  factory Trigger.fromMap(Map<String, dynamic> map) {
    return Trigger(
      count: map['count'] == null ? null : map['count'] as int,
      percent: map['percent'] == null ? null : map['percent'] as double,
    );
  }
}
