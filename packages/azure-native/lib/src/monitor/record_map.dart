// ignore_for_file: unused_element, unnecessary_cast


/// Record map for schema in azure monitor.
class RecordMap {
  /// Record Map Key.
  final String from;
  /// Record Map Value.
  final String to;

  /// Creates a new [RecordMap].
  /// [from] Record Map Key.
  /// [to] Record Map Value.
  RecordMap({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory RecordMap.fromMap(Map<String, dynamic> map) {
    return RecordMap(
      from: map['from'] as String,
      to: map['to'] as String,
    );
  }
}

