// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration {
  /// The starting position on the stream. Valid values: `LAST_STOPPED_POINT`, `NOW`, `TRIM_HORIZON`.
  final String? inputStartingPosition;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration].
  /// [inputStartingPosition] The starting position on the stream. Valid values: `LAST_STOPPED_POINT`, `NOW`, `TRIM_HORIZON`.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration({
    this.inputStartingPosition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'inputStartingPosition': ?inputStartingPosition};
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration(
      inputStartingPosition: map['inputStartingPosition'] == null
          ? null
          : map['inputStartingPosition'] as String,
    );
  }
}
