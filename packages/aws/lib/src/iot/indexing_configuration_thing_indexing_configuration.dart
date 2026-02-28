// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexing_configuration_thing_indexing_configuration_custom_field.dart';
import 'indexing_configuration_thing_indexing_configuration_filter.dart';
import 'indexing_configuration_thing_indexing_configuration_managed_field.dart';

class IndexingConfigurationThingIndexingConfiguration {
  /// Contains custom field names and their data type. See below.
  final List<IndexingConfigurationThingIndexingConfigurationCustomField>?
      customFields;

  /// Device Defender indexing mode. Valid values: `VIOLATIONS`, `OFF`. Default: `OFF`.
  final String? deviceDefenderIndexingMode;

  /// Required if `named_shadow_indexing_mode` is `ON`. Enables to add named shadows filtered by `filter` to fleet indexing configuration.
  final IndexingConfigurationThingIndexingConfigurationFilter? filter;

  /// Contains fields that are indexed and whose types are already known by the Fleet Indexing service. See below.
  final List<IndexingConfigurationThingIndexingConfigurationManagedField>?
      managedFields;

  /// [Named shadow](https://docs.aws.amazon.com/iot/latest/developerguide/iot-device-shadows.html) indexing mode. Valid values: `ON`, `OFF`. Default: `OFF`.
  final String? namedShadowIndexingMode;

  /// Thing connectivity indexing mode. Valid values: `STATUS`, `OFF`. Default: `OFF`.
  final String? thingConnectivityIndexingMode;

  /// Thing indexing mode. Valid values: `REGISTRY`, `REGISTRY_AND_SHADOW`, `OFF`.
  final String thingIndexingMode;

  /// Creates a new [IndexingConfigurationThingIndexingConfiguration].
  /// [customFields] Contains custom field names and their data type. See below.
  /// [deviceDefenderIndexingMode] Device Defender indexing mode. Valid values: `VIOLATIONS`, `OFF`. Default: `OFF`.
  /// [filter] Required if `named_shadow_indexing_mode` is `ON`. Enables to add named shadows filtered by `filter` to fleet indexing configuration.
  /// [managedFields] Contains fields that are indexed and whose types are already known by the Fleet Indexing service. See below.
  /// [namedShadowIndexingMode] [Named shadow](https://docs.aws.amazon.com/iot/latest/developerguide/iot-device-shadows.html) indexing mode. Valid values: `ON`, `OFF`. Default: `OFF`.
  /// [thingConnectivityIndexingMode] Thing connectivity indexing mode. Valid values: `STATUS`, `OFF`. Default: `OFF`.
  /// [thingIndexingMode] Thing indexing mode. Valid values: `REGISTRY`, `REGISTRY_AND_SHADOW`, `OFF`.
  IndexingConfigurationThingIndexingConfiguration({
    this.customFields,
    this.deviceDefenderIndexingMode,
    this.filter,
    this.managedFields,
    this.namedShadowIndexingMode,
    this.thingConnectivityIndexingMode,
    required this.thingIndexingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customFieldsValue = customFields;
    if (customFieldsValue != null) {
      map['customFields'] = pulumi.Input.encodeList<
          IndexingConfigurationThingIndexingConfigurationCustomField,
          Map<String, dynamic>>(customFieldsValue, (value) => value.toMap());
    }
    final deviceDefenderIndexingModeValue = deviceDefenderIndexingMode;
    if (deviceDefenderIndexingModeValue != null) {
      map['deviceDefenderIndexingMode'] = deviceDefenderIndexingModeValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue.toMap();
    }
    final managedFieldsValue = managedFields;
    if (managedFieldsValue != null) {
      map['managedFields'] = pulumi.Input.encodeList<
          IndexingConfigurationThingIndexingConfigurationManagedField,
          Map<String, dynamic>>(managedFieldsValue, (value) => value.toMap());
    }
    final namedShadowIndexingModeValue = namedShadowIndexingMode;
    if (namedShadowIndexingModeValue != null) {
      map['namedShadowIndexingMode'] = namedShadowIndexingModeValue;
    }
    final thingConnectivityIndexingModeValue = thingConnectivityIndexingMode;
    if (thingConnectivityIndexingModeValue != null) {
      map['thingConnectivityIndexingMode'] = thingConnectivityIndexingModeValue;
    }
    map['thingIndexingMode'] = thingIndexingMode;
    return map;
  }

  factory IndexingConfigurationThingIndexingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return IndexingConfigurationThingIndexingConfiguration(
      customFields: map['customFields'] == null
          ? null
          : pulumi.Input.decodeList<
                  IndexingConfigurationThingIndexingConfigurationCustomField>(
              map['customFields'],
              (value) =>
                  IndexingConfigurationThingIndexingConfigurationCustomField
                      .fromMap((value as Map).cast<String, dynamic>())),
      deviceDefenderIndexingMode: map['deviceDefenderIndexingMode'] == null
          ? null
          : map['deviceDefenderIndexingMode'] as String,
      filter: map['filter'] == null
          ? null
          : IndexingConfigurationThingIndexingConfigurationFilter.fromMap(
              (map['filter'] as Map).cast<String, dynamic>()),
      managedFields: map['managedFields'] == null
          ? null
          : pulumi.Input.decodeList<
                  IndexingConfigurationThingIndexingConfigurationManagedField>(
              map['managedFields'],
              (value) =>
                  IndexingConfigurationThingIndexingConfigurationManagedField
                      .fromMap((value as Map).cast<String, dynamic>())),
      namedShadowIndexingMode: map['namedShadowIndexingMode'] == null
          ? null
          : map['namedShadowIndexingMode'] as String,
      thingConnectivityIndexingMode:
          map['thingConnectivityIndexingMode'] == null
              ? null
              : map['thingConnectivityIndexingMode'] as String,
      thingIndexingMode: map['thingIndexingMode'] as String,
    );
  }
}
