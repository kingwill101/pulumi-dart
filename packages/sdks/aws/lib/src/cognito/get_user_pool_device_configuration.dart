// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserPoolDeviceConfiguration {
  /// - Whether a challenge is required on new devices.
  final pulumi.Input<bool> challengeRequiredOnNewDevice;
  /// - Whether devices are only remembered if the user prompts it.
  final pulumi.Input<bool> deviceOnlyRememberedOnUserPrompt;

  /// Creates a new [GetUserPoolDeviceConfiguration].
  /// [challengeRequiredOnNewDevice] - Whether a challenge is required on new devices.
  /// [deviceOnlyRememberedOnUserPrompt] - Whether devices are only remembered if the user prompts it.
  const GetUserPoolDeviceConfiguration({
    required this.challengeRequiredOnNewDevice,
    required this.deviceOnlyRememberedOnUserPrompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'challengeRequiredOnNewDevice': challengeRequiredOnNewDevice,
      'deviceOnlyRememberedOnUserPrompt': deviceOnlyRememberedOnUserPrompt,
    };
  }

  factory GetUserPoolDeviceConfiguration.fromMap(Map<String, dynamic> map) {
    return GetUserPoolDeviceConfiguration(
      challengeRequiredOnNewDevice: pulumi.Input.fromValue(map['challengeRequiredOnNewDevice'] as bool),
      deviceOnlyRememberedOnUserPrompt: pulumi.Input.fromValue(map['deviceOnlyRememberedOnUserPrompt'] as bool),
    );
  }
}

