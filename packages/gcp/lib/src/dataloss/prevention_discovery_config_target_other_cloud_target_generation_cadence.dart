// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_other_cloud_target_generation_cadence_inspect_template_modified_cadence.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadence {
  /// Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadence?
  inspectTemplateModifiedCadence;

  /// Frequency to update profiles regardless of whether the underlying resource has changes. Defaults to never.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final String? refreshFrequency;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadence].
  /// [inspectTemplateModifiedCadence] Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  /// [refreshFrequency] Frequency to update profiles regardless of whether the underlying resource has changes. Defaults to never.
  PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadence({
    this.inspectTemplateModifiedCadence,
    this.refreshFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectTemplateModifiedCadence': ?inspectTemplateModifiedCadence == null
          ? null
          : inspectTemplateModifiedCadence!.toMap(),
      'refreshFrequency': ?refreshFrequency,
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadence.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadence(
      inspectTemplateModifiedCadence:
          map['inspectTemplateModifiedCadence'] == null
          ? null
          : PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadence.fromMap(
              (map['inspectTemplateModifiedCadence'] as Map)
                  .cast<String, dynamic>(),
            ),
      refreshFrequency: map['refreshFrequency'] == null
          ? null
          : map['refreshFrequency'] as String,
    );
  }
}
