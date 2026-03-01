// ignore_for_file: unused_element, unnecessary_cast


class AmiEphemeralBlockDevice {
  /// Path at which the device is exposed to created instances.
  final String deviceName;
  /// Name for the ephemeral device, of the form "ephemeralN" where
  /// *N* is a volume number starting from zero.
  final String virtualName;

  /// Creates a new [AmiEphemeralBlockDevice].
  /// [deviceName] Path at which the device is exposed to created instances.
  /// [virtualName] Name for the ephemeral device, of the form "ephemeralN" where
  AmiEphemeralBlockDevice({
    required this.deviceName,
    required this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'virtualName': virtualName,
    };
  }

  factory AmiEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return AmiEphemeralBlockDevice(
      deviceName: map['deviceName'] as String,
      virtualName: map['virtualName'] as String,
    );
  }
}

