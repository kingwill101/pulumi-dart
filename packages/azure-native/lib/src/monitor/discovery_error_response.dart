// ignore_for_file: unused_element, unnecessary_cast


/// Error details for a failed discovery operation
class DiscoveryErrorResponse {
  /// Additional context information, like resource IDs or query details
  final List<String> context;
  /// Error message
  final String message;

  /// Creates a new [DiscoveryErrorResponse].
  /// [context] Additional context information, like resource IDs or query details
  /// [message] Error message
  DiscoveryErrorResponse({
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
      context: (map['context'] as List).cast<String>(),
      message: map['message'] as String,
    );
  }
}

