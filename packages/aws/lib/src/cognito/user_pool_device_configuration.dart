// ignore_for_file: unused_element, unnecessary_cast

class UserPoolDeviceConfiguration {
  /// Whether a challenge is required on a new device. Only applicable to a new device.
  final bool? challengeRequiredOnNewDevice;

  /// Whether a device is only remembered on user prompt. `false` equates to "Always" remember, `true` is "User Opt In," and not using a `device_configuration` block is "No."
  final bool? deviceOnlyRememberedOnUserPrompt;

  /// Creates a new [UserPoolDeviceConfiguration].
  /// [challengeRequiredOnNewDevice] Whether a challenge is required on a new device. Only applicable to a new device.
  /// [deviceOnlyRememberedOnUserPrompt] Whether a device is only remembered on user prompt. `false` equates to "Always" remember, `true` is "User Opt In," and not using a `device_configuration` block is "No."
  UserPoolDeviceConfiguration({
    this.challengeRequiredOnNewDevice,
    this.deviceOnlyRememberedOnUserPrompt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final challengeRequiredOnNewDeviceValue = challengeRequiredOnNewDevice;
    if (challengeRequiredOnNewDeviceValue != null) {
      map['challengeRequiredOnNewDevice'] = challengeRequiredOnNewDeviceValue;
    }
    final deviceOnlyRememberedOnUserPromptValue =
        deviceOnlyRememberedOnUserPrompt;
    if (deviceOnlyRememberedOnUserPromptValue != null) {
      map['deviceOnlyRememberedOnUserPrompt'] =
          deviceOnlyRememberedOnUserPromptValue;
    }
    return map;
  }

  factory UserPoolDeviceConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolDeviceConfiguration(
      challengeRequiredOnNewDevice: map['challengeRequiredOnNewDevice'] == null
          ? null
          : map['challengeRequiredOnNewDevice'] as bool,
      deviceOnlyRememberedOnUserPrompt:
          map['deviceOnlyRememberedOnUserPrompt'] == null
              ? null
              : map['deviceOnlyRememberedOnUserPrompt'] as bool,
    );
  }
}
