// ignore_for_file: unused_element, unnecessary_cast

class WidgetConfigUiSettingsDataStoreUiConfigFacetField {
  /// The field name that end users will see.
  final String? displayName;

  /// Registered field name. The format is `field.abc`.
  final String field;

  /// Creates a new [WidgetConfigUiSettingsDataStoreUiConfigFacetField].
  /// [displayName] The field name that end users will see.
  /// [field] Registered field name. The format is `field.abc`.
  WidgetConfigUiSettingsDataStoreUiConfigFacetField({
    this.displayName,
    required this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': ?displayName, 'field': field};
  }

  factory WidgetConfigUiSettingsDataStoreUiConfigFacetField.fromMap(
    Map<String, dynamic> map,
  ) {
    return WidgetConfigUiSettingsDataStoreUiConfigFacetField(
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      field: map['field'] as String,
    );
  }
}
