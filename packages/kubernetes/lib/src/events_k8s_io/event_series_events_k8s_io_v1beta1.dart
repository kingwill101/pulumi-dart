// ignore_for_file: unused_element, unnecessary_cast


/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
class EventSeriesEventsK8sIoV1beta1 {
  /// Number of occurrences in this series up to the last heartbeat time
  final int count;
  /// Time when last Event from the series was seen before last heartbeat.
  final String lastObservedTime;
  /// Information whether this series is ongoing or finished. Deprecated. Planned removal for 1.18
  final String state;

  /// Creates a new [EventSeriesEventsK8sIoV1beta1].
  /// [count] Number of occurrences in this series up to the last heartbeat time
  /// [lastObservedTime] Time when last Event from the series was seen before last heartbeat.
  /// [state] Information whether this series is ongoing or finished. Deprecated. Planned removal for 1.18
  EventSeriesEventsK8sIoV1beta1({
    required this.count,
    required this.lastObservedTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'lastObservedTime': lastObservedTime,
      'state': state,
    };
  }

  factory EventSeriesEventsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return EventSeriesEventsK8sIoV1beta1(
      count: map['count'] as int,
      lastObservedTime: map['lastObservedTime'] as String,
      state: map['state'] as String,
    );
  }
}

