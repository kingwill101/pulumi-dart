// ignore_for_file: unused_element, unnecessary_cast


/// timeline aggregation information per kind
class TimelineAggregationResponse {
  /// the total items found for a kind
  final int count;
  /// the query kind
  final String kind;

  /// Creates a new [TimelineAggregationResponse].
  /// [count] the total items found for a kind
  /// [kind] the query kind
  TimelineAggregationResponse({
    required this.count,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'kind': kind,
    };
  }

  factory TimelineAggregationResponse.fromMap(Map<String, dynamic> map) {
    return TimelineAggregationResponse(
      count: map['count'] as int,
      kind: map['kind'] as String,
    );
  }
}

