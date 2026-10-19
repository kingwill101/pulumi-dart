// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings {
  /// Service Description Table output behavior.
  final pulumi.Input<String?>? outputSdt;
  /// Number of milliseconds between instances of this table in the output transport stream.
  final pulumi.Input<int?>? repInterval;
  /// Service name placed in the `serviceDescriptor` in the Service Description Table.
  final pulumi.Input<String?>? serviceName;
  /// Service provider name placed in the `serviceDescriptor` in the Service Description Table.
  final pulumi.Input<String?>? serviceProviderName;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings].
  /// [outputSdt] Service Description Table output behavior.
  /// [repInterval] Number of milliseconds between instances of this table in the output transport stream.
  /// [serviceName] Service name placed in the `serviceDescriptor` in the Service Description Table.
  /// [serviceProviderName] Service provider name placed in the `serviceDescriptor` in the Service Description Table.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings({
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
      outputSdt: (() { final guardedValue = map['outputSdt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repInterval: (() { final guardedValue = map['repInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProviderName: (() { final guardedValue = map['serviceProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
