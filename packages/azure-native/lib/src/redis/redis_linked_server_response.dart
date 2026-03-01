// ignore_for_file: unused_element, unnecessary_cast


/// Linked server Id
class RedisLinkedServerResponse {
  /// Linked server Id.
  final String id;

  /// Creates a new [RedisLinkedServerResponse].
  /// [id] Linked server Id.
  RedisLinkedServerResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory RedisLinkedServerResponse.fromMap(Map<String, dynamic> map) {
    return RedisLinkedServerResponse(
      id: map['id'] as String,
    );
  }
}

