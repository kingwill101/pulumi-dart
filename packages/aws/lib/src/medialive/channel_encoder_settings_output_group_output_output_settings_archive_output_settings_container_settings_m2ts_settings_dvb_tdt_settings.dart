// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings {
  final int? repInterval;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings].
  /// [repInterval] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings({
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

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings(
      repInterval:
          map['repInterval'] == null ? null : map['repInterval'] as int,
    );
  }
}
