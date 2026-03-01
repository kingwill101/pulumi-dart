// ignore_for_file: unused_element, unnecessary_cast


class AnalyticsApplicationInputsParallelism {
  /// The Count of streams.
  final int? count;

  /// Creates a new [AnalyticsApplicationInputsParallelism].
  /// [count] The Count of streams.
  AnalyticsApplicationInputsParallelism({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory AnalyticsApplicationInputsParallelism.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsParallelism(
      count: map['count'] == null ? null : map['count'] as int,
    );
  }
}

