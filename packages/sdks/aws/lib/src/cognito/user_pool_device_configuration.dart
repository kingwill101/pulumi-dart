// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolDeviceConfiguration {
  /// Whether a challenge is required on a new device. Only applicable to a new device.
  final pulumi.Input<bool?>? challengeRequiredOnNewDevice;
  /// Whether a device is only remembered on user prompt. `false` equates to "Always" remember, `true` is "User Opt In," and not using a `deviceConfiguration` block is "No."
  final pulumi.Input<bool?>? deviceOnlyRememberedOnUserPrompt;

  /// Creates a new [UserPoolDeviceConfiguration].
  /// [challengeRequiredOnNewDevice] Whether a challenge is required on a new device. Only applicable to a new device.
  /// [deviceOnlyRememberedOnUserPrompt] Whether a device is only remembered on user prompt. `false` equates to "Always" remember, `true` is "User Opt In," and not using a `deviceConfiguration` block is "No."
  const UserPoolDeviceConfiguration({
    this.challengeRequiredOnNewDevice,
    this.deviceOnlyRememberedOnUserPrompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'challengeRequiredOnNewDevice': ?challengeRequiredOnNewDevice,
      'deviceOnlyRememberedOnUserPrompt': ?deviceOnlyRememberedOnUserPrompt,
    };
  }

  factory UserPoolDeviceConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolDeviceConfiguration(
      challengeRequiredOnNewDevice: (() { final guardedValue = map['challengeRequiredOnNewDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deviceOnlyRememberedOnUserPrompt: (() { final guardedValue = map['deviceOnlyRememberedOnUserPrompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
