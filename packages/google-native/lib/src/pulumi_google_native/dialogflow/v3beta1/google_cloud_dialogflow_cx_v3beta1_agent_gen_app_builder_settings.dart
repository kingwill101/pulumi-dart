// ignore_for_file: unused_element, unnecessary_cast

/// Settings for Gen App Builder.
class GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings {
  /// The full name of the Gen App Builder engine related to this agent if there is one. Format: `projects/{Project ID}/locations/{Location ID}/collections/{Collection ID}/engines/{Engine ID}`
  final String engine;

  GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings({
    required this.engine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['engine'] = engine;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings(
      engine: map['engine'] as String,
    );
  }
}
