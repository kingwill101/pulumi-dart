// ignore_for_file: unused_element, unnecessary_cast

class CurationPluginInstanceAction {
  /// (Output)
  /// The action ID that is using the curation.
  /// This should map to one of the action IDs specified
  /// in action configs in the plugin.
  final String? actionId;

  /// (Output)
  /// Plugin instance that is using the curation.
  /// Format is
  /// `projects/{project}/locations/{locati on}/plugins/{plugin}/instances/{instance}`
  final String? pluginInstance;

  CurationPluginInstanceAction({
    this.actionId,
    this.pluginInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionIdValue = actionId;
    if (actionIdValue != null) {
      map['actionId'] = actionIdValue;
    }
    final pluginInstanceValue = pluginInstance;
    if (pluginInstanceValue != null) {
      map['pluginInstance'] = pluginInstanceValue;
    }
    return map;
  }

  factory CurationPluginInstanceAction.fromMap(Map<String, dynamic> map) {
    return CurationPluginInstanceAction(
      actionId: map['actionId'] == null ? null : map['actionId'] as String,
      pluginInstance: map['pluginInstance'] == null
          ? null
          : map['pluginInstance'] as String,
    );
  }
}
