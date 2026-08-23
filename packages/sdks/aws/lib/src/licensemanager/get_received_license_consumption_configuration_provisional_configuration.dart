// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration {
  /// Maximum time for the provisional configuration, in minutes.
  final pulumi.Input<int> maxTimeToLiveInMinutes;

  /// Creates a new [GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration].
  /// [maxTimeToLiveInMinutes] Maximum time for the provisional configuration, in minutes.
  const GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration({
    required this.maxTimeToLiveInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxTimeToLiveInMinutes': maxTimeToLiveInMinutes,
    };
  }

  factory GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration(
      maxTimeToLiveInMinutes: pulumi.Input.fromValue(map['maxTimeToLiveInMinutes'] as int),
    );
  }
}
