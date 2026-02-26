// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_target_cloud_sql_target_generation_cadence_inspect_template_modified_cadence/prevention_discovery_config_target_cloud_sql_target_generation_cadence_inspect_template_modified_cadence.dart';
import '../prevention_discovery_config_target_cloud_sql_target_generation_cadence_schema_modified_cadence/prevention_discovery_config_target_cloud_sql_target_generation_cadence_schema_modified_cadence.dart';

class PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence {
  /// Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence?
      inspectTemplateModifiedCadence;

  /// Frequency to update profiles regardless of whether the underlying resource has changes. Defaults to never.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final String? refreshFrequency;

  /// Governs when to update data profiles when a schema is modified
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceSchemaModifiedCadence?
      schemaModifiedCadence;

  PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence({
    this.inspectTemplateModifiedCadence,
    this.refreshFrequency,
    this.schemaModifiedCadence,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inspectTemplateModifiedCadenceValue = inspectTemplateModifiedCadence;
    if (inspectTemplateModifiedCadenceValue != null) {
      map['inspectTemplateModifiedCadence'] =
          inspectTemplateModifiedCadenceValue.toMap();
    }
    final refreshFrequencyValue = refreshFrequency;
    if (refreshFrequencyValue != null) {
      map['refreshFrequency'] = refreshFrequencyValue;
    }
    final schemaModifiedCadenceValue = schemaModifiedCadence;
    if (schemaModifiedCadenceValue != null) {
      map['schemaModifiedCadence'] = schemaModifiedCadenceValue.toMap();
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence(
      inspectTemplateModifiedCadence: map['inspectTemplateModifiedCadence'] ==
              null
          ? null
          : PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence
              .fromMap((map['inspectTemplateModifiedCadence'] as Map)
                  .cast<String, dynamic>()),
      refreshFrequency: map['refreshFrequency'] == null
          ? null
          : map['refreshFrequency'] as String,
      schemaModifiedCadence: map['schemaModifiedCadence'] == null
          ? null
          : PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceSchemaModifiedCadence
              .fromMap((map['schemaModifiedCadence'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
