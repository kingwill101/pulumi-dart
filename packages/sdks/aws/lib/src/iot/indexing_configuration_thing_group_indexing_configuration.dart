// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexing_configuration_thing_group_indexing_configuration_custom_field.dart';
import 'indexing_configuration_thing_group_indexing_configuration_managed_field.dart';

class IndexingConfigurationThingGroupIndexingConfiguration {
  /// A list of thing group fields to index. This list cannot contain any managed fields. See below.
  final pulumi.Input<List<IndexingConfigurationThingGroupIndexingConfigurationCustomField>?>? customFields;
  /// Contains fields that are indexed and whose types are already known by the Fleet Indexing service. See below.
  final pulumi.Input<List<IndexingConfigurationThingGroupIndexingConfigurationManagedField>?>? managedFields;
  /// Thing group indexing mode. Valid values: `OFF`, `ON`.
  final pulumi.Input<String> thingGroupIndexingMode;

  /// Creates a new [IndexingConfigurationThingGroupIndexingConfiguration].
  /// [customFields] A list of thing group fields to index. This list cannot contain any managed fields. See below.
  /// [managedFields] Contains fields that are indexed and whose types are already known by the Fleet Indexing service. See below.
  /// [thingGroupIndexingMode] Thing group indexing mode. Valid values: `OFF`, `ON`.
  const IndexingConfigurationThingGroupIndexingConfiguration({
    this.customFields,
    this.managedFields,
    required this.thingGroupIndexingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFields': ?pulumi.Input.mapOptionalInputValue<List<IndexingConfigurationThingGroupIndexingConfigurationCustomField>, List<Map<String, dynamic>>>(customFields, (value) => pulumi.Input.encodeList<IndexingConfigurationThingGroupIndexingConfigurationCustomField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedFields': ?pulumi.Input.mapOptionalInputValue<List<IndexingConfigurationThingGroupIndexingConfigurationManagedField>, List<Map<String, dynamic>>>(managedFields, (value) => pulumi.Input.encodeList<IndexingConfigurationThingGroupIndexingConfigurationManagedField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'thingGroupIndexingMode': thingGroupIndexingMode,
    };
  }

  factory IndexingConfigurationThingGroupIndexingConfiguration.fromMap(Map<String, dynamic> map) {
    return IndexingConfigurationThingGroupIndexingConfiguration(
      customFields: (() { final guardedValue = map['customFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IndexingConfigurationThingGroupIndexingConfigurationCustomField>(guardedValue, (value) => IndexingConfigurationThingGroupIndexingConfigurationCustomField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedFields: (() { final guardedValue = map['managedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IndexingConfigurationThingGroupIndexingConfigurationManagedField>(guardedValue, (value) => IndexingConfigurationThingGroupIndexingConfigurationManagedField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      thingGroupIndexingMode: pulumi.Input.fromValue(map['thingGroupIndexingMode'] as String),
    );
  }
}
