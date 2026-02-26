// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings {
  final String? outputSdt;
  final int? repInterval;
  final String? serviceName;
  final String? serviceProviderName;

  ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings({
    this.outputSdt,
    this.repInterval,
    this.serviceName,
    this.serviceProviderName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final outputSdtValue = outputSdt;
    if (outputSdtValue != null) {
      map['outputSdt'] = outputSdtValue;
    }
    final repIntervalValue = repInterval;
    if (repIntervalValue != null) {
      map['repInterval'] = repIntervalValue;
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    final serviceProviderNameValue = serviceProviderName;
    if (serviceProviderNameValue != null) {
      map['serviceProviderName'] = serviceProviderNameValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings(
      outputSdt: map['outputSdt'] == null ? null : map['outputSdt'] as String,
      repInterval:
          map['repInterval'] == null ? null : map['repInterval'] as int,
      serviceName:
          map['serviceName'] == null ? null : map['serviceName'] as String,
      serviceProviderName: map['serviceProviderName'] == null
          ? null
          : map['serviceProviderName'] as String,
    );
  }
}
