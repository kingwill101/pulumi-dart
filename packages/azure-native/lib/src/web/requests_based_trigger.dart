// ignore_for_file: unused_element, unnecessary_cast


/// Trigger based on total requests.
class RequestsBasedTrigger {
  /// Request Count.
  final int? count;
  /// Time interval.
  final String? timeInterval;

  /// Creates a new [RequestsBasedTrigger].
  /// [count] Request Count.
  /// [timeInterval] Time interval.
  RequestsBasedTrigger({
    this.count,
    this.timeInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'timeInterval': ?timeInterval,
    };
  }

  factory RequestsBasedTrigger.fromMap(Map<String, dynamic> map) {
    return RequestsBasedTrigger(
      count: map['count'] == null ? null : map['count'] as int,
      timeInterval: map['timeInterval'] == null ? null : map['timeInterval'] as String,
    );
  }
}

