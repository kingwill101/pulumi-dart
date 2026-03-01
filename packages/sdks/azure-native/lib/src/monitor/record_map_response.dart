// ignore_for_file: unused_element, unnecessary_cast


/// Record map for schema in azure monitor.
class RecordMapResponse {
  /// Record Map Key.
  final String from;
  /// Record Map Value.
  final String to;

  /// Creates a new [RecordMapResponse].
  /// [from] Record Map Key.
  /// [to] Record Map Value.
  RecordMapResponse({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory RecordMapResponse.fromMap(Map<String, dynamic> map) {
    return RecordMapResponse(
      from: map['from'] as String,
      to: map['to'] as String,
    );
  }
}

