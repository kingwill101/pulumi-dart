// ignore_for_file: unused_element, unnecessary_cast


/// Status of the OpenAI Integration
class OpenAIIntegrationStatusResponsePropertiesResponse {
  /// Status of the OpenAI Integration
  final String? status;

  /// Creates a new [OpenAIIntegrationStatusResponsePropertiesResponse].
  /// [status] Status of the OpenAI Integration
  OpenAIIntegrationStatusResponsePropertiesResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory OpenAIIntegrationStatusResponsePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OpenAIIntegrationStatusResponsePropertiesResponse(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

