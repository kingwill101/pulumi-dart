// ignore_for_file: unused_element, unnecessary_cast

class GetReceivedLicenseConsumptionConfigurationBorrowConfiguration {
  /// Indicates whether early check-ins are allowed.
  final bool allowEarlyCheckIn;

  /// Maximum time for the provisional configuration, in minutes.
  final int maxTimeToLiveInMinutes;

  GetReceivedLicenseConsumptionConfigurationBorrowConfiguration({
    required this.allowEarlyCheckIn,
    required this.maxTimeToLiveInMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowEarlyCheckIn'] = allowEarlyCheckIn;
    map['maxTimeToLiveInMinutes'] = maxTimeToLiveInMinutes;
    return map;
  }

  factory GetReceivedLicenseConsumptionConfigurationBorrowConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetReceivedLicenseConsumptionConfigurationBorrowConfiguration(
      allowEarlyCheckIn: map['allowEarlyCheckIn'] as bool,
      maxTimeToLiveInMinutes: map['maxTimeToLiveInMinutes'] as int,
    );
  }
}
