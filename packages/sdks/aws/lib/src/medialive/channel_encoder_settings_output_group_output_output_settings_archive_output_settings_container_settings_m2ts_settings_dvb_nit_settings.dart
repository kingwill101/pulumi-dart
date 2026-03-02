// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings {
  final pulumi.Input<int> networkId;
  final pulumi.Input<String> networkName;
  final pulumi.Input<int>? repInterval;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings].
  /// [networkId] Required.
  /// [networkName] Required.
  /// [repInterval] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings({
    required this.networkId,
    required this.networkName,
    this.repInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkId': networkId,
      'networkName': networkName,
      'repInterval': ?repInterval,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings(
      networkId: (map['networkId'] as int).input(),
      networkName: (map['networkName'] as String).input(),
      repInterval: map['repInterval'] == null ? null : ((map['repInterval'] as int).input()).input(),
    );
  }
}

