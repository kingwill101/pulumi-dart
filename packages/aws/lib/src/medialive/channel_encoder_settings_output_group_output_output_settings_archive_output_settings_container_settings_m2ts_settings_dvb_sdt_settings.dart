// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings {
  final String? outputSdt;
  final int? repInterval;
  final String? serviceName;
  final String? serviceProviderName;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings].
  /// [outputSdt] Optional.
  /// [repInterval] Optional.
  /// [serviceName] Optional.
  /// [serviceProviderName] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings({
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

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings(
      outputSdt: map['outputSdt'] == null ? null : map['outputSdt'] as String,
      repInterval: map['repInterval'] == null
          ? null
          : map['repInterval'] as int,
      serviceName: map['serviceName'] == null
          ? null
          : map['serviceName'] as String,
      serviceProviderName: map['serviceProviderName'] == null
          ? null
          : map['serviceProviderName'] as String,
    );
  }
}
