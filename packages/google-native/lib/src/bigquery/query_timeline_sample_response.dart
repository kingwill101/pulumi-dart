// ignore_for_file: unused_element, unnecessary_cast

class QueryTimelineSampleResponse {
  /// Total number of units currently being processed by workers. This does not correspond directly to slot usage. This is the largest value observed since the last sample.
  final String activeUnits;

  /// Total parallel units of work completed by this query.
  final String completedUnits;

  /// Milliseconds elapsed since the start of query execution.
  final String elapsedMs;

  /// Units of work that can be scheduled immediately. Providing additional slots for these units of work will speed up the query, provided no other query in the reservation needs additional slots.
  final String estimatedRunnableUnits;

  /// Total units of work remaining for the query. This number can be revised (increased or decreased) while the query is running.
  final String pendingUnits;

  /// Cumulative slot-ms consumed by the query.
  final String totalSlotMs;

  /// Creates a new [QueryTimelineSampleResponse].
  /// [activeUnits] Total number of units currently being processed by workers. This does not correspond directly to slot usage. This is the largest value observed since the last sample.
  /// [completedUnits] Total parallel units of work completed by this query.
  /// [elapsedMs] Milliseconds elapsed since the start of query execution.
  /// [estimatedRunnableUnits] Units of work that can be scheduled immediately. Providing additional slots for these units of work will speed up the query, provided no other query in the reservation needs additional slots.
  /// [pendingUnits] Total units of work remaining for the query. This number can be revised (increased or decreased) while the query is running.
  /// [totalSlotMs] Cumulative slot-ms consumed by the query.
  QueryTimelineSampleResponse({
    required this.activeUnits,
    required this.completedUnits,
    required this.elapsedMs,
    required this.estimatedRunnableUnits,
    required this.pendingUnits,
    required this.totalSlotMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeUnits': activeUnits,
      'completedUnits': completedUnits,
      'elapsedMs': elapsedMs,
      'estimatedRunnableUnits': estimatedRunnableUnits,
      'pendingUnits': pendingUnits,
      'totalSlotMs': totalSlotMs,
    };
  }

  factory QueryTimelineSampleResponse.fromMap(Map<String, dynamic> map) {
    return QueryTimelineSampleResponse(
      activeUnits: map['activeUnits'] as String,
      completedUnits: map['completedUnits'] as String,
      elapsedMs: map['elapsedMs'] as String,
      estimatedRunnableUnits: map['estimatedRunnableUnits'] as String,
      pendingUnits: map['pendingUnits'] as String,
      totalSlotMs: map['totalSlotMs'] as String,
    );
  }
}
