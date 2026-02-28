// ignore_for_file: unused_element, unnecessary_cast


/// Settings for Gen App Builder.
class GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettingsResponse {
  /// The full name of the Gen App Builder engine related to this agent if there is one. Format: `projects/{Project ID}/locations/{Location ID}/collections/{Collection ID}/engines/{Engine ID}`
  final String engine;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettingsResponse].
  /// [engine] The full name of the Gen App Builder engine related to this agent if there is one. Format: `projects/{Project ID}/locations/{Location ID}/collections/{Collection ID}/engines/{Engine ID}`
  GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettingsResponse({
    required this.engine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettingsResponse(
      engine: map['engine'] as String,
    );
  }
}

