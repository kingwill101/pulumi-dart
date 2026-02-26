// ignore_for_file: unused_element, unnecessary_cast

class AppDataStoreSettingsEngine {
  /// Identifier. The unique identifier of the app.
  /// Format: `projects/{project}/locations/{location}/apps/{app}`
  final String? name;

  /// The type of the engine.
  /// Possible values:
  /// ENGINE_TYPE_SEARCH
  /// ENGINE_TYPE_CHAT
  final String? type;

  AppDataStoreSettingsEngine({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory AppDataStoreSettingsEngine.fromMap(Map<String, dynamic> map) {
    return AppDataStoreSettingsEngine(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
