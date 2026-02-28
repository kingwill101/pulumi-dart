// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetBigQueryTargetCadenceInspectTemplateModifiedCadence {
  /// How frequently data profiles can be updated when the template is modified. Defaults to never.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final String? frequency;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetCadenceInspectTemplateModifiedCadence].
  /// [frequency] How frequently data profiles can be updated when the template is modified. Defaults to never.
  PreventionDiscoveryConfigTargetBigQueryTargetCadenceInspectTemplateModifiedCadence({
    this.frequency,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final frequencyValue = frequency;
    if (frequencyValue != null) {
      map['frequency'] = frequencyValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetCadenceInspectTemplateModifiedCadence.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetCadenceInspectTemplateModifiedCadence(
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
    );
  }
}
