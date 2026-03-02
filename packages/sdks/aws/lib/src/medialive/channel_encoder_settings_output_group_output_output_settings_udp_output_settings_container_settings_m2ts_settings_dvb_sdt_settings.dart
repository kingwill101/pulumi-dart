// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings {
  final pulumi.Input<String>? outputSdt;
  final pulumi.Input<int>? repInterval;
  final pulumi.Input<String>? serviceName;
  final pulumi.Input<String>? serviceProviderName;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings].
  /// [outputSdt] Optional.
  /// [repInterval] Optional.
  /// [serviceName] Optional.
  /// [serviceProviderName] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings({
    this.outputSdt,
    this.repInterval,
    this.serviceName,
    this.serviceProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputSdt': ?outputSdt,
      'repInterval': ?repInterval,
      'serviceName': ?serviceName,
      'serviceProviderName': ?serviceProviderName,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings(
      outputSdt: map['outputSdt'] == null ? null : ((map['outputSdt'] as String).input()).input(),
      repInterval: map['repInterval'] == null ? null : ((map['repInterval'] as int).input()).input(),
      serviceName: map['serviceName'] == null ? null : ((map['serviceName'] as String).input()).input(),
      serviceProviderName: map['serviceProviderName'] == null ? null : ((map['serviceProviderName'] as String).input()).input(),
    );
  }
}

