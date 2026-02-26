// ignore_for_file: unused_element, unnecessary_cast

class UserPoolDeviceConfiguration {
  /// Whether a challenge is required on a new device. Only applicable to a new device.
  final bool? challengeRequiredOnNewDevice;

  /// Whether a device is only remembered on user prompt. <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> equates to "Always" remember, <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> is "User Opt In," and not using a <span pulumi-lang-nodejs="`deviceConfiguration`" pulumi-lang-dotnet="`DeviceConfiguration`" pulumi-lang-go="`deviceConfiguration`" pulumi-lang-python="`device_configuration`" pulumi-lang-yaml="`deviceConfiguration`" pulumi-lang-java="`deviceConfiguration`">`device_configuration`</span> block is "No."
  final bool? deviceOnlyRememberedOnUserPrompt;

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
