// ignore_for_file: unused_element, unnecessary_cast

class PluginActionsConfig {
  /// The description of the operation performed by the action.
  final String description;

  /// The display name of the action.
  final String displayName;

  /// The id of the action.
  final String id;

  /// The trigger mode supported by the action.
  /// Possible values:
  /// TRIGGER_MODE_UNSPECIFIED
  /// API_HUB_ON_DEMAND_TRIGGER
  /// API_HUB_SCHEDULE_TRIGGER
  /// NON_API_HUB_MANAGED
  final String triggerMode;

  /// Creates a new [PluginActionsConfig].
  /// [description] The description of the operation performed by the action.
  /// [displayName] The display name of the action.
  /// [id] The id of the action.
  /// [triggerMode] The trigger mode supported by the action.
  PluginActionsConfig({
    required this.description,
    required this.displayName,
    required this.id,
    required this.triggerMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['displayName'] = displayName;
    map['id'] = id;
    map['triggerMode'] = triggerMode;
    return map;
  }

  factory PluginActionsConfig.fromMap(Map<String, dynamic> map) {
    return PluginActionsConfig(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      triggerMode: map['triggerMode'] as String,
    );
  }
}
