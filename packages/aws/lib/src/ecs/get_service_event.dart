// ignore_for_file: unused_element, unnecessary_cast

class GetServiceEvent {
  /// Time when task set was created (RFC3339 format)
  final String createdAt;

  /// Task set ID
  final String id;

  /// Event message
  final String message;

  /// Creates a new [GetServiceEvent].
  /// [createdAt] Time when task set was created (RFC3339 format)
  /// [id] Task set ID
  /// [message] Event message
  GetServiceEvent({
    required this.createdAt,
    required this.id,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'message': message,
    };
  }

  factory GetServiceEvent.fromMap(Map<String, dynamic> map) {
    return GetServiceEvent(
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      message: map['message'] as String,
    );
  }
}
