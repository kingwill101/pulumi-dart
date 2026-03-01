// ignore_for_file: unused_element, unnecessary_cast

class GetReceivedLicenseConsumptionConfigurationBorrowConfiguration {
  /// Indicates whether early check-ins are allowed.
  final bool allowEarlyCheckIn;

  /// Maximum time for the provisional configuration, in minutes.
  final int maxTimeToLiveInMinutes;

  /// Creates a new [GetReceivedLicenseConsumptionConfigurationBorrowConfiguration].
  /// [allowEarlyCheckIn] Indicates whether early check-ins are allowed.
  /// [maxTimeToLiveInMinutes] Maximum time for the provisional configuration, in minutes.
  GetReceivedLicenseConsumptionConfigurationBorrowConfiguration({
    required this.allowEarlyCheckIn,
    required this.maxTimeToLiveInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEarlyCheckIn': allowEarlyCheckIn,
      'maxTimeToLiveInMinutes': maxTimeToLiveInMinutes,
    };
  }

  factory GetReceivedLicenseConsumptionConfigurationBorrowConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetReceivedLicenseConsumptionConfigurationBorrowConfiguration(
      allowEarlyCheckIn: map['allowEarlyCheckIn'] as bool,
      maxTimeToLiveInMinutes: map['maxTimeToLiveInMinutes'] as int,
    );
  }
}
