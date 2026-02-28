// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolDeviceConfiguration {
  /// - Whether a challenge is required on new devices.
  final bool challengeRequiredOnNewDevice;

  /// - Whether devices are only remembered if the user prompts it.
  final bool deviceOnlyRememberedOnUserPrompt;

  /// Creates a new [GetUserPoolDeviceConfiguration].
  /// [challengeRequiredOnNewDevice] - Whether a challenge is required on new devices.
  /// [deviceOnlyRememberedOnUserPrompt] - Whether devices are only remembered if the user prompts it.
  GetUserPoolDeviceConfiguration({
    required this.challengeRequiredOnNewDevice,
    required this.deviceOnlyRememberedOnUserPrompt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['challengeRequiredOnNewDevice'] = challengeRequiredOnNewDevice;
    map['deviceOnlyRememberedOnUserPrompt'] = deviceOnlyRememberedOnUserPrompt;
    return map;
  }

  factory GetUserPoolDeviceConfiguration.fromMap(Map<String, dynamic> map) {
    return GetUserPoolDeviceConfiguration(
      challengeRequiredOnNewDevice: map['challengeRequiredOnNewDevice'] as bool,
      deviceOnlyRememberedOnUserPrompt:
          map['deviceOnlyRememberedOnUserPrompt'] as bool,
    );
  }
}
