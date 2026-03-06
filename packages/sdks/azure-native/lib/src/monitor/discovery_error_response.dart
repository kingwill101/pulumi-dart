// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error details for a failed discovery operation
class DiscoveryErrorResponse {
  /// Additional context information, like resource IDs or query details
  final pulumi.Input<List<String>> context;
  /// Error message
  final pulumi.Input<String> message;

  /// Creates a new [DiscoveryErrorResponse].
  /// [context] Additional context information, like resource IDs or query details
  /// [message] Error message
  const DiscoveryErrorResponse({
    required this.context,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': context,
      'message': message,
    };
  }

  factory DiscoveryErrorResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveryErrorResponse(
      context: pulumi.Input.fromValue((map['context'] as List).cast<String>()),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

