// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings {
  final pulumi.Input<int> networkId;
  final pulumi.Input<String> networkName;
  final pulumi.Input<int?>? repInterval;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings].
  /// [networkId] Required.
  /// [networkName] Required.
  /// [repInterval] Optional.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings({
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

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings(
      networkId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['networkId'])),
      networkName: pulumi.Input.fromValue(map['networkName'] as String),
      repInterval: (() { final guardedValue = map['repInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
