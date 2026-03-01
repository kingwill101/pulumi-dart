// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadence {
  /// How frequently data profiles can be updated when the template is modified. Defaults to never.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final String? frequency;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadence].
  /// [frequency] How frequently data profiles can be updated when the template is modified. Defaults to never.
  PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadence({
    this.frequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'frequency': ?frequency};
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadence.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadence(
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
    );
  }
}
