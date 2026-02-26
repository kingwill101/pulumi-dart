// ignore_for_file: unused_element, unnecessary_cast

class GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration {
  /// Maximum time for the provisional configuration, in minutes.
  final int maxTimeToLiveInMinutes;

  GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration({
    required this.maxTimeToLiveInMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxTimeToLiveInMinutes'] = maxTimeToLiveInMinutes;
    return map;
  }

  factory GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration(
      maxTimeToLiveInMinutes: map['maxTimeToLiveInMinutes'] as int,
    );
  }
}
