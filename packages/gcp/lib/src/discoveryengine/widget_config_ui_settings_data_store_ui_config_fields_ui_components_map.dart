// ignore_for_file: unused_element, unnecessary_cast


class WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap {
  /// Each value may be one of: `MOBILE`, `DESKTOP`.
  final List<String>? deviceVisibilities;
  /// The template to customize how the field is displayed.
  /// An example value would be a string that looks like: "Price: {value}".
  final String? displayTemplate;
  /// Registered field name. The format is `field.abc`.
  final String field;
  /// The identifier for this object. Format specified above.
  final String uiComponent;

  /// Creates a new [WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap].
  /// [deviceVisibilities] Each value may be one of: `MOBILE`, `DESKTOP`.
  /// [displayTemplate] The template to customize how the field is displayed.
  /// [field] Registered field name. The format is `field.abc`.
  /// [uiComponent] The identifier for this object. Format specified above.
  WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap({
    this.deviceVisibilities,
    this.displayTemplate,
    required this.field,
    required this.uiComponent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceVisibilities': ?deviceVisibilities,
      'displayTemplate': ?displayTemplate,
      'field': field,
      'uiComponent': uiComponent,
    };
  }

  factory WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap(
      deviceVisibilities: map['deviceVisibilities'] == null ? null : (map['deviceVisibilities'] as List).cast<String>(),
      displayTemplate: map['displayTemplate'] == null ? null : map['displayTemplate'] as String,
      field: map['field'] as String,
      uiComponent: map['uiComponent'] as String,
    );
  }
}

