// ignore_for_file: unused_element, unnecessary_cast

class PluginDocumentation {
  /// The uri of the externally hosted documentation.
  final String? externalUri;

  /// Creates a new [PluginDocumentation].
  /// [externalUri] The uri of the externally hosted documentation.
  PluginDocumentation({
    this.externalUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final externalUriValue = externalUri;
    if (externalUriValue != null) {
      map['externalUri'] = externalUriValue;
    }
    return map;
  }

  factory PluginDocumentation.fromMap(Map<String, dynamic> map) {
    return PluginDocumentation(
      externalUri:
          map['externalUri'] == null ? null : map['externalUri'] as String,
    );
  }
}
