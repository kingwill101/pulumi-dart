// ignore_for_file: unused_element, unnecessary_cast


/// Open AI Integration details.
class OpenAIIntegrationProperties {
  /// Value of API key for Open AI resource
  final String? key;
  /// The API endpoint for Open AI resource
  final String? openAIResourceEndpoint;
  /// The resource name of Open AI resource
  final String? openAIResourceId;

  /// Creates a new [OpenAIIntegrationProperties].
  /// [key] Value of API key for Open AI resource
  /// [openAIResourceEndpoint] The API endpoint for Open AI resource
  /// [openAIResourceId] The resource name of Open AI resource
  OpenAIIntegrationProperties({
    this.key,
    this.openAIResourceEndpoint,
    this.openAIResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'openAIResourceEndpoint': ?openAIResourceEndpoint,
      'openAIResourceId': ?openAIResourceId,
    };
  }

  factory OpenAIIntegrationProperties.fromMap(Map<String, dynamic> map) {
    return OpenAIIntegrationProperties(
      key: map['key'] == null ? null : map['key'] as String,
      openAIResourceEndpoint: map['openAIResourceEndpoint'] == null ? null : map['openAIResourceEndpoint'] as String,
      openAIResourceId: map['openAIResourceId'] == null ? null : map['openAIResourceId'] as String,
    );
  }
}

