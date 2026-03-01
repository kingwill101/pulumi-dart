// ignore_for_file: unused_element, unnecessary_cast


/// Open AI Integration details.
class OpenAIIntegrationPropertiesResponse {
  /// Value of API key for Open AI resource
  final String? key;
  /// Last Update Timestamp for key updation
  final String lastRefreshAt;
  /// The API endpoint for Open AI resource
  final String? openAIResourceEndpoint;
  /// The resource name of Open AI resource
  final String? openAIResourceId;

  /// Creates a new [OpenAIIntegrationPropertiesResponse].
  /// [key] Value of API key for Open AI resource
  /// [lastRefreshAt] Last Update Timestamp for key updation
  /// [openAIResourceEndpoint] The API endpoint for Open AI resource
  /// [openAIResourceId] The resource name of Open AI resource
  OpenAIIntegrationPropertiesResponse({
    this.key,
    required this.lastRefreshAt,
    this.openAIResourceEndpoint,
    this.openAIResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'lastRefreshAt': lastRefreshAt,
      'openAIResourceEndpoint': ?openAIResourceEndpoint,
      'openAIResourceId': ?openAIResourceId,
    };
  }

  factory OpenAIIntegrationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OpenAIIntegrationPropertiesResponse(
      key: map['key'] == null ? null : map['key'] as String,
      lastRefreshAt: map['lastRefreshAt'] as String,
      openAIResourceEndpoint: map['openAIResourceEndpoint'] == null ? null : map['openAIResourceEndpoint'] as String,
      openAIResourceId: map['openAIResourceId'] == null ? null : map['openAIResourceId'] as String,
    );
  }
}

