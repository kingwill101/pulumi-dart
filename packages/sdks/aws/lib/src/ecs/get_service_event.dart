// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceEvent {
  /// Time when task set was created (RFC3339 format)
  final pulumi.Input<String> createdAt;
  /// Task set ID
  final pulumi.Input<String> id;
  /// Event message
  final pulumi.Input<String> message;

  /// Creates a new [GetServiceEvent].
  /// [createdAt] Time when task set was created (RFC3339 format)
  /// [id] Task set ID
  /// [message] Event message
  const GetServiceEvent({
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
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

