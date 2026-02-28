// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings {
  final int networkId;
  final String networkName;
  final int? repInterval;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings].
  /// [networkId] Required.
  /// [networkName] Required.
  /// [repInterval] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings({
    required this.networkId,
    required this.networkName,
    this.repInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkId'] = networkId;
    map['networkName'] = networkName;
    final repIntervalValue = repInterval;
    if (repIntervalValue != null) {
      map['repInterval'] = repIntervalValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings(
      networkId: map['networkId'] as int,
      networkName: map['networkName'] as String,
      repInterval:
          map['repInterval'] == null ? null : map['repInterval'] as int,
    );
  }
}
