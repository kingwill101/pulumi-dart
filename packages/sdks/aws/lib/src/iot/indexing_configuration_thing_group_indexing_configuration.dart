// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexing_configuration_thing_group_indexing_configuration_custom_field.dart';
import 'indexing_configuration_thing_group_indexing_configuration_managed_field.dart';

class IndexingConfigurationThingGroupIndexingConfiguration {
  /// A list of thing group fields to index. This list cannot contain any managed fields. See below.
  final List<IndexingConfigurationThingGroupIndexingConfigurationCustomField>? customFields;
  /// Contains fields that are indexed and whose types are already known by the Fleet Indexing service. See below.
  final List<IndexingConfigurationThingGroupIndexingConfigurationManagedField>? managedFields;
  /// Thing group indexing mode. Valid values: `OFF`, `ON`.
  final String thingGroupIndexingMode;

  /// Creates a new [IndexingConfigurationThingGroupIndexingConfiguration].
  /// [customFields] A list of thing group fields to index. This list cannot contain any managed fields. See below.
  /// [managedFields] Contains fields that are indexed and whose types are already known by the Fleet Indexing service. See below.
  /// [thingGroupIndexingMode] Thing group indexing mode. Valid values: `OFF`, `ON`.
  IndexingConfigurationThingGroupIndexingConfiguration({
    this.customFields,
    this.managedFields,
    required this.thingGroupIndexingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFields': ?customFields == null ? null : pulumi.Input.encodeList<IndexingConfigurationThingGroupIndexingConfigurationCustomField, Map<String, dynamic>>(customFields!, (value) => value.toMap()),
      'managedFields': ?managedFields == null ? null : pulumi.Input.encodeList<IndexingConfigurationThingGroupIndexingConfigurationManagedField, Map<String, dynamic>>(managedFields!, (value) => value.toMap()),
      'thingGroupIndexingMode': thingGroupIndexingMode,
    };
  }

  factory IndexingConfigurationThingGroupIndexingConfiguration.fromMap(Map<String, dynamic> map) {
    return IndexingConfigurationThingGroupIndexingConfiguration(
      customFields: map['customFields'] == null ? null : pulumi.Input.decodeList<IndexingConfigurationThingGroupIndexingConfigurationCustomField>(map['customFields'], (value) => IndexingConfigurationThingGroupIndexingConfigurationCustomField.fromMap((value as Map).cast<String, dynamic>())),
      managedFields: map['managedFields'] == null ? null : pulumi.Input.decodeList<IndexingConfigurationThingGroupIndexingConfigurationManagedField>(map['managedFields'], (value) => IndexingConfigurationThingGroupIndexingConfigurationManagedField.fromMap((value as Map).cast<String, dynamic>())),
      thingGroupIndexingMode: map['thingGroupIndexingMode'] as String,
    );
  }
}

