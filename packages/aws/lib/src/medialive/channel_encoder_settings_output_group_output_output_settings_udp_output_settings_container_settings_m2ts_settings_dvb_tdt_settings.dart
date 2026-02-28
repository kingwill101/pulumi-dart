// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings {
  final int? repInterval;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings].
  /// [repInterval] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings({
    this.repInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final repIntervalValue = repInterval;
    if (repIntervalValue != null) {
      map['repInterval'] = repIntervalValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings(
      repInterval:
          map['repInterval'] == null ? null : map['repInterval'] as int,
    );
  }
}
