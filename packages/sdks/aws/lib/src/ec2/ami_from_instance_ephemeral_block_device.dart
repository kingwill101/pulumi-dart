// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AmiFromInstanceEphemeralBlockDevice {
  /// Path at which the device is exposed to created instances.
  final pulumi.Input<String>? deviceName;
  /// Name for the ephemeral device, of the form "ephemeralN" where
  /// *N* is a volume number starting from zero.
  final pulumi.Input<String>? virtualName;

  /// Creates a new [AmiFromInstanceEphemeralBlockDevice].
  /// [deviceName] Path at which the device is exposed to created instances.
  /// [virtualName] Name for the ephemeral device, of the form "ephemeralN" where
  AmiFromInstanceEphemeralBlockDevice({
    this.deviceName,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'virtualName': ?virtualName,
    };
  }

  factory AmiFromInstanceEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return AmiFromInstanceEphemeralBlockDevice(
      deviceName: map['deviceName'] == null ? null : (map['deviceName'] as String).input(),
      virtualName: map['virtualName'] == null ? null : (map['virtualName'] as String).input(),
    );
  }
}

