// ignore_for_file: unused_element, unnecessary_cast


class EventSourcesConfigEventSourceAmazonCodeGuruProfiler {
  /// Status of the CodeGuru Profiler integration. Valid values are `ENABLED` and `DISABLED`.
  final String status;

  /// Creates a new [EventSourcesConfigEventSourceAmazonCodeGuruProfiler].
  /// [status] Status of the CodeGuru Profiler integration. Valid values are `ENABLED` and `DISABLED`.
  EventSourcesConfigEventSourceAmazonCodeGuruProfiler({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory EventSourcesConfigEventSourceAmazonCodeGuruProfiler.fromMap(Map<String, dynamic> map) {
    return EventSourcesConfigEventSourceAmazonCodeGuruProfiler(
      status: map['status'] as String,
    );
  }
}

