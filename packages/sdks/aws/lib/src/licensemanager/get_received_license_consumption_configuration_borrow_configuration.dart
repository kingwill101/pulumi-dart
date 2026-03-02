// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReceivedLicenseConsumptionConfigurationBorrowConfiguration {
  /// Indicates whether early check-ins are allowed.
  final pulumi.Input<bool> allowEarlyCheckIn;
  /// Maximum time for the provisional configuration, in minutes.
  final pulumi.Input<int> maxTimeToLiveInMinutes;

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

  factory GetReceivedLicenseConsumptionConfigurationBorrowConfiguration.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseConsumptionConfigurationBorrowConfiguration(
      allowEarlyCheckIn: (map['allowEarlyCheckIn'] as bool).input(),
      maxTimeToLiveInMinutes: (map['maxTimeToLiveInMinutes'] as int).input(),
    );
  }
}

