// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexing_configuration_thing_indexing_configuration_custom_field.dart';
import 'indexing_configuration_thing_indexing_configuration_filter.dart';
import 'indexing_configuration_thing_indexing_configuration_managed_field.dart';

class IndexingConfigurationThingIndexingConfiguration {
  /// Contains custom field names and their data type. See below.
  final pulumi.Input<List<IndexingConfigurationThingIndexingConfigurationCustomField>>? customFields;
  /// Device Defender indexing mode. Valid values: `VIOLATIONS`, `OFF`. Default: `OFF`.
  final pulumi.Input<String>? deviceDefenderIndexingMode;
  /// Required if `named_shadow_indexing_mode` is `ON`. Enables to add named shadows filtered by `filter` to fleet indexing configuration.
  final pulumi.Input<IndexingConfigurationThingIndexingConfigurationFilter>? filter;
  /// Contains fields that are indexed and whose types are already known by the Fleet Indexing service. See below.
  final pulumi.Input<List<IndexingConfigurationThingIndexingConfigurationManagedField>>? managedFields;
  /// [Named shadow](https://docs.aws.amazon.com/iot/latest/developerguide/iot-device-shadows.html) indexing mode. Valid values: `ON`, `OFF`. Default: `OFF`.
  final pulumi.Input<String>? namedShadowIndexingMode;
  /// Thing connectivity indexing mode. Valid values: `STATUS`, `OFF`. Default: `OFF`.
  final pulumi.Input<String>? thingConnectivityIndexingMode;
  /// Thing indexing mode. Valid values: `REGISTRY`, `REGISTRY_AND_SHADOW`, `OFF`.
  final pulumi.Input<String> thingIndexingMode;

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
    return <String, dynamic>{
      'customFields': ?pulumi.Input.mapOptionalInputValue<List<IndexingConfigurationThingIndexingConfigurationCustomField>, List<Map<String, dynamic>>>(customFields, (value) => pulumi.Input.encodeList<IndexingConfigurationThingIndexingConfigurationCustomField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceDefenderIndexingMode': ?deviceDefenderIndexingMode,
      'filter': ?pulumi.Input.mapOptionalInputValue<IndexingConfigurationThingIndexingConfigurationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'managedFields': ?pulumi.Input.mapOptionalInputValue<List<IndexingConfigurationThingIndexingConfigurationManagedField>, List<Map<String, dynamic>>>(managedFields, (value) => pulumi.Input.encodeList<IndexingConfigurationThingIndexingConfigurationManagedField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namedShadowIndexingMode': ?namedShadowIndexingMode,
      'thingConnectivityIndexingMode': ?thingConnectivityIndexingMode,
      'thingIndexingMode': thingIndexingMode,
    };
  }

  factory IndexingConfigurationThingIndexingConfiguration.fromMap(Map<String, dynamic> map) {
    return IndexingConfigurationThingIndexingConfiguration(
      customFields: (() { final guardedValue = map['customFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IndexingConfigurationThingIndexingConfigurationCustomField>(guardedValue, (value) => IndexingConfigurationThingIndexingConfigurationCustomField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deviceDefenderIndexingMode: (() { final guardedValue = map['deviceDefenderIndexingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexingConfigurationThingIndexingConfigurationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedFields: (() { final guardedValue = map['managedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IndexingConfigurationThingIndexingConfigurationManagedField>(guardedValue, (value) => IndexingConfigurationThingIndexingConfigurationManagedField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      namedShadowIndexingMode: (() { final guardedValue = map['namedShadowIndexingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thingConnectivityIndexingMode: (() { final guardedValue = map['thingConnectivityIndexingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thingIndexingMode: pulumi.Input.fromValue(map['thingIndexingMode'] as String),
    );
  }
}

