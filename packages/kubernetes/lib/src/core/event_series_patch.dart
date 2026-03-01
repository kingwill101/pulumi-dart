// ignore_for_file: unused_element, unnecessary_cast


/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
class EventSeriesPatch {
  /// Number of occurrences in this series up to the last heartbeat time
  final int? count;
  /// Time of the last occurrence observed
  final String? lastObservedTime;
  /// State of this Series: Ongoing or Finished Deprecated. Planned removal for 1.18
  final String? state;

  /// Creates a new [EventSeriesPatch].
  /// [count] Number of occurrences in this series up to the last heartbeat time
  /// [lastObservedTime] Time of the last occurrence observed
  /// [state] State of this Series: Ongoing or Finished Deprecated. Planned removal for 1.18
  EventSeriesPatch({
    this.count,
    this.lastObservedTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'lastObservedTime': ?lastObservedTime,
      'state': ?state,
    };
  }

  factory EventSeriesPatch.fromMap(Map<String, dynamic> map) {
    return EventSeriesPatch(
      count: map['count'] == null ? null : map['count'] as int,
      lastObservedTime: map['lastObservedTime'] == null ? null : map['lastObservedTime'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

