// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../widget_config_ui_settings_data_store_ui_config_facet_field/widget_config_ui_settings_data_store_ui_config_facet_field.dart';
import '../widget_config_ui_settings_data_store_ui_config_fields_ui_components_map/widget_config_ui_settings_data_store_ui_config_fields_ui_components_map.dart';

class WidgetConfigUiSettingsDataStoreUiConfig {
  /// Structure is documented below.
  final List<WidgetConfigUiSettingsDataStoreUiConfigFacetField>? facetFields;

  /// 'The key is the UI component. Currently supported `title`, `thumbnail`,
  /// `url`, `custom1`, `custom2`, `custom3`. The value is the name of
  /// the field along with its device visibility. The 3 custom fields are optional
  /// and can be added or removed.
  /// `title`, `thumbnail`, `url` are required UI components that cannot be removed.
  /// Structure is documented below.
  final List<WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap>?
      fieldsUiComponentsMaps;

  /// The name of the data store. It should be data store resource name. Format:
  /// `projects/{project}/locations/{location}/collections/{collectionId}/dataStores/{dataStoreId}`.
  /// For APIs under `WidgetService`, such as [WidgetService.LookUpWidgetConfig][],
  /// the project number and location part is erased in this field.
  final String? name;

  WidgetConfigUiSettingsDataStoreUiConfig({
    this.facetFields,
    this.fieldsUiComponentsMaps,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final facetFieldsValue = facetFields;
    if (facetFieldsValue != null) {
      map['facetFields'] = Input.encodeList<
          WidgetConfigUiSettingsDataStoreUiConfigFacetField,
          Map<String, dynamic>>(facetFieldsValue, (value) => value.toMap());
    }
    final fieldsUiComponentsMapsValue = fieldsUiComponentsMaps;
    if (fieldsUiComponentsMapsValue != null) {
      map['fieldsUiComponentsMaps'] = Input.encodeList<
              WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap,
              Map<String, dynamic>>(
          fieldsUiComponentsMapsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory WidgetConfigUiSettingsDataStoreUiConfig.fromMap(
      Map<String, dynamic> map) {
    return WidgetConfigUiSettingsDataStoreUiConfig(
      facetFields: map['facetFields'] == null
          ? null
          : Input.decodeList<WidgetConfigUiSettingsDataStoreUiConfigFacetField>(
              map['facetFields'],
              (value) =>
                  WidgetConfigUiSettingsDataStoreUiConfigFacetField.fromMap(
                      (value as Map).cast<String, dynamic>())),
      fieldsUiComponentsMaps: map['fieldsUiComponentsMaps'] == null
          ? null
          : Input.decodeList<
                  WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap>(
              map['fieldsUiComponentsMaps'],
              (value) =>
                  WidgetConfigUiSettingsDataStoreUiConfigFieldsUiComponentsMap
                      .fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
