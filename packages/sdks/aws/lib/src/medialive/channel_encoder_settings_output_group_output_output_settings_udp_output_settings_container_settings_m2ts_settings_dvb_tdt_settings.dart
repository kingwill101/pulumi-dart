// ignore_for_file: unused_element, unnecessary_cast


class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings {
  final int? repInterval;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings].
  /// [repInterval] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings({
    this.repInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repInterval': ?repInterval,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings(
      repInterval: map['repInterval'] == null ? null : map['repInterval'] as int,
    );
  }
}

