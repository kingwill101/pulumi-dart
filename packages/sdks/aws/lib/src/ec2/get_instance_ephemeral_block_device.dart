// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceEphemeralBlockDevice {
  /// Physical name of the device.
  final pulumi.Input<String> deviceName;
  /// Whether the specified device included in the device mapping was suppressed or not (Boolean).
  final pulumi.Input<bool>? noDevice;
  /// Virtual device name.
  final pulumi.Input<String>? virtualName;

  /// Creates a new [GetInstanceEphemeralBlockDevice].
  /// [deviceName] Physical name of the device.
  /// [noDevice] Whether the specified device included in the device mapping was suppressed or not (Boolean).
  /// [virtualName] Virtual device name.
  GetInstanceEphemeralBlockDevice({
    required this.deviceName,
    this.noDevice,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'noDevice': ?noDevice,
      'virtualName': ?virtualName,
    };
  }

  factory GetInstanceEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return GetInstanceEphemeralBlockDevice(
      deviceName: (map['deviceName'] as String).input(),
      noDevice: map['noDevice'] == null ? null : (map['noDevice'] as bool).input(),
      virtualName: map['virtualName'] == null ? null : (map['virtualName'] as String).input(),
    );
  }
}

