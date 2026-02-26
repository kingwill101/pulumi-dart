// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_target_big_query_target_cadence_inspect_template_modified_cadence/prevention_discovery_config_target_big_query_target_cadence_inspect_template_modified_cadence.dart';
import '../prevention_discovery_config_target_big_query_target_cadence_schema_modified_cadence/prevention_discovery_config_target_big_query_target_cadence_schema_modified_cadence.dart';
import '../prevention_discovery_config_target_big_query_target_cadence_table_modified_cadence/prevention_discovery_config_target_big_query_target_cadence_table_modified_cadence.dart';

class PreventionDiscoveryConfigTargetBigQueryTargetCadence {
  /// Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetBigQueryTargetCadenceInspectTemplateModifiedCadence?
      inspectTemplateModifiedCadence;

  /// Governs when to update data profiles when a schema is modified
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetBigQueryTargetCadenceSchemaModifiedCadence?
      schemaModifiedCadence;

  /// Governs when to update profile when a table is modified.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence?
      tableModifiedCadence;

  PreventionDiscoveryConfigTargetBigQueryTargetCadence({
    this.inspectTemplateModifiedCadence,
    this.schemaModifiedCadence,
    this.tableModifiedCadence,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inspectTemplateModifiedCadenceValue = inspectTemplateModifiedCadence;
    if (inspectTemplateModifiedCadenceValue != null) {
      map['inspectTemplateModifiedCadence'] =
          inspectTemplateModifiedCadenceValue.toMap();
    }
    final schemaModifiedCadenceValue = schemaModifiedCadence;
    if (schemaModifiedCadenceValue != null) {
      map['schemaModifiedCadence'] = schemaModifiedCadenceValue.toMap();
    }
    final tableModifiedCadenceValue = tableModifiedCadence;
    if (tableModifiedCadenceValue != null) {
      map['tableModifiedCadence'] = tableModifiedCadenceValue.toMap();
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetCadence.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetCadence(
      inspectTemplateModifiedCadence: map['inspectTemplateModifiedCadence'] ==
              null
          ? null
          : PreventionDiscoveryConfigTargetBigQueryTargetCadenceInspectTemplateModifiedCadence
              .fromMap((map['inspectTemplateModifiedCadence'] as Map)
                  .cast<String, dynamic>()),
      schemaModifiedCadence: map['schemaModifiedCadence'] == null
          ? null
          : PreventionDiscoveryConfigTargetBigQueryTargetCadenceSchemaModifiedCadence
              .fromMap((map['schemaModifiedCadence'] as Map)
                  .cast<String, dynamic>()),
      tableModifiedCadence: map['tableModifiedCadence'] == null
          ? null
          : PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence
              .fromMap(
                  (map['tableModifiedCadence'] as Map).cast<String, dynamic>()),
    );
  }
}
