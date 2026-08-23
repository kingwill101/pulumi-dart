// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AmiCopyEphemeralBlockDevice {
  /// Path at which the device is exposed to created instances.
  final pulumi.Input<String>? deviceName;
  /// Name for the ephemeral device, of the form "ephemeralN" where
  /// *N* is a volume number starting from zero.
  final pulumi.Input<String>? virtualName;

  /// Creates a new [AmiCopyEphemeralBlockDevice].
  /// [deviceName] Path at which the device is exposed to created instances.
  /// [virtualName] Name for the ephemeral device, of the form "ephemeralN" where
  const AmiCopyEphemeralBlockDevice({
    this.deviceName,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'virtualName': ?virtualName,
    };
  }

  factory AmiCopyEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return AmiCopyEphemeralBlockDevice(
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualName: (() { final guardedValue = map['virtualName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
