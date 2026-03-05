// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listAgentPoolQueueStatus.
class ListAgentPoolQueueStatusResult {
  /// The number of pending runs in the queue
  final int? count;

  /// Creates a new [ListAgentPoolQueueStatusResult].
  /// [count] The number of pending runs in the queue
  ListAgentPoolQueueStatusResult({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory ListAgentPoolQueueStatusResult.fromMap(Map<String, dynamic> map) {
    return ListAgentPoolQueueStatusResult(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

