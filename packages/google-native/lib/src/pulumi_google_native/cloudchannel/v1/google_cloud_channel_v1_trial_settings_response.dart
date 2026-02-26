// ignore_for_file: unused_element, unnecessary_cast

/// Settings for trial offers.
class GoogleCloudChannelV1TrialSettingsResponse {
  /// Date when the trial ends. The value is in milliseconds using the UNIX Epoch format. See an example [Epoch converter](https://www.epochconverter.com).
  final String endTime;

  /// Determines if the entitlement is in a trial or not: * `true` - The entitlement is in trial. * `false` - The entitlement is not in trial.
  final bool trial;

  GoogleCloudChannelV1TrialSettingsResponse({
    required this.endTime,
    required this.trial,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['trial'] = trial;
    return map;
  }

  factory GoogleCloudChannelV1TrialSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1TrialSettingsResponse(
      endTime: map['endTime'] as String,
      trial: map['trial'] as bool,
    );
  }
}
