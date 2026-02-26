// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../widget_config_ui_settings_data_store_ui_config_facet_field/widget_config_ui_settings_data_store_ui_config_facet_field.dart';
import '../widget_config_ui_settings_data_store_ui_config_fields_ui_components_map/widget_config_ui_settings_data_store_ui_config_fields_ui_components_map.dart';

class WidgetConfigUiSettingsDataStoreUiConfig {
  /// Structure is documented below.
  final List<WidgetConfigUiSettingsDataStoreUiConfigFacetField>? facetFields;

  /// 'The key is the UI component. Currently supported <span pulumi-lang-nodejs="`title`" pulumi-lang-dotnet="`Title`" pulumi-lang-go="`title`" pulumi-lang-python="`title`" pulumi-lang-yaml="`title`" pulumi-lang-java="`title`">`title`</span>, <span pulumi-lang-nodejs="`thumbnail`" pulumi-lang-dotnet="`Thumbnail`" pulumi-lang-go="`thumbnail`" pulumi-lang-python="`thumbnail`" pulumi-lang-yaml="`thumbnail`" pulumi-lang-java="`thumbnail`">`thumbnail`</span>,
  /// <span pulumi-lang-nodejs="`url`" pulumi-lang-dotnet="`Url`" pulumi-lang-go="`url`" pulumi-lang-python="`url`" pulumi-lang-yaml="`url`" pulumi-lang-java="`url`">`url`</span>, <span pulumi-lang-nodejs="`custom1`" pulumi-lang-dotnet="`Custom1`" pulumi-lang-go="`custom1`" pulumi-lang-python="`custom1`" pulumi-lang-yaml="`custom1`" pulumi-lang-java="`custom1`">`custom1`</span>, <span pulumi-lang-nodejs="`custom2`" pulumi-lang-dotnet="`Custom2`" pulumi-lang-go="`custom2`" pulumi-lang-python="`custom2`" pulumi-lang-yaml="`custom2`" pulumi-lang-java="`custom2`">`custom2`</span>, <span pulumi-lang-nodejs="`custom3`" pulumi-lang-dotnet="`Custom3`" pulumi-lang-go="`custom3`" pulumi-lang-python="`custom3`" pulumi-lang-yaml="`custom3`" pulumi-lang-java="`custom3`">`custom3`</span>. The value is the name of
  /// the field along with its device visibility. The 3 custom fields are optional
  /// and can be added or removed.
  /// <span pulumi-lang-nodejs="`title`" pulumi-lang-dotnet="`Title`" pulumi-lang-go="`title`" pulumi-lang-python="`title`" pulumi-lang-yaml="`title`" pulumi-lang-java="`title`">`title`</span>, <span pulumi-lang-nodejs="`thumbnail`" pulumi-lang-dotnet="`Thumbnail`" pulumi-lang-go="`thumbnail`" pulumi-lang-python="`thumbnail`" pulumi-lang-yaml="`thumbnail`" pulumi-lang-java="`thumbnail`">`thumbnail`</span>, <span pulumi-lang-nodejs="`url`" pulumi-lang-dotnet="`Url`" pulumi-lang-go="`url`" pulumi-lang-python="`url`" pulumi-lang-yaml="`url`" pulumi-lang-java="`url`">`url`</span> are required UI components that cannot be removed.
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
