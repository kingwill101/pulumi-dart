// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration {
  /// The starting position on the stream. Valid values: `LAST_STOPPED_POINT`, `NOW`, `TRIM_HORIZON`.
  final pulumi.Input<String>? inputStartingPosition;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration].
  /// [inputStartingPosition] The starting position on the stream. Valid values: `LAST_STOPPED_POINT`, `NOW`, `TRIM_HORIZON`.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration({
    this.inputStartingPosition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputStartingPosition': ?inputStartingPosition,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration(
      inputStartingPosition: (() { final guardedValue = map['inputStartingPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

