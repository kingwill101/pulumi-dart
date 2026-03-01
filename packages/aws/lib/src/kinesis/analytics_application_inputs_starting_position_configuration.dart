// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationInputsStartingPositionConfiguration {
  /// The starting position on the stream. Valid values: `LAST_STOPPED_POINT`, `NOW`, `TRIM_HORIZON`.
  final String? startingPosition;

  /// Creates a new [AnalyticsApplicationInputsStartingPositionConfiguration].
  /// [startingPosition] The starting position on the stream. Valid values: `LAST_STOPPED_POINT`, `NOW`, `TRIM_HORIZON`.
  AnalyticsApplicationInputsStartingPositionConfiguration({
    this.startingPosition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'startingPosition': ?startingPosition};
  }

  factory AnalyticsApplicationInputsStartingPositionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnalyticsApplicationInputsStartingPositionConfiguration(
      startingPosition: map['startingPosition'] == null
          ? null
          : map['startingPosition'] as String,
    );
  }
}
