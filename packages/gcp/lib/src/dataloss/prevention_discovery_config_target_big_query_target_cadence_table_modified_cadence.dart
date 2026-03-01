// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence {
  /// How frequently data profiles can be updated when tables are modified. Defaults to never.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final String? frequency;

  /// The type of events to consider when deciding if the table has been modified and should have the profile updated. Defaults to MODIFIED_TIMESTAMP
  /// Each value may be one of: `TABLE_MODIFIED_TIMESTAMP`.
  final List<String>? types;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence].
  /// [frequency] How frequently data profiles can be updated when tables are modified. Defaults to never.
  /// [types] The type of events to consider when deciding if the table has been modified and should have the profile updated. Defaults to MODIFIED_TIMESTAMP
  PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence({
    this.frequency,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'frequency': ?frequency, 'types': ?types};
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence(
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      types: map['types'] == null
          ? null
          : (map['types'] as List).cast<String>(),
    );
  }
}
