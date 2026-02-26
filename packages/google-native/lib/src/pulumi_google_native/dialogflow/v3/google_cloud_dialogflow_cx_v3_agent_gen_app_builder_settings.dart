// ignore_for_file: unused_element, unnecessary_cast

/// Settings for Gen App Builder.
class GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings {
  /// The full name of the Gen App Builder engine related to this agent if there is one. Format: `projects/{Project ID}/locations/{Location ID}/collections/{Collection ID}/engines/{Engine ID}`
  final String engine;

  GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings({
    required this.engine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['engine'] = engine;
    return map;
  }

  factory GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings(
      engine: map['engine'] as String,
    );
  }
}
