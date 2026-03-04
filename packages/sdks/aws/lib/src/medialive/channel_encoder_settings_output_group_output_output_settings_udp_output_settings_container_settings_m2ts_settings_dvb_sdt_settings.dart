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

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings(
      outputSdt: (() {
        final guardedValue = map['outputSdt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repInterval: (() {
        final guardedValue = map['repInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serviceName: (() {
        final guardedValue = map['serviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceProviderName: (() {
        final guardedValue = map['serviceProviderName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
