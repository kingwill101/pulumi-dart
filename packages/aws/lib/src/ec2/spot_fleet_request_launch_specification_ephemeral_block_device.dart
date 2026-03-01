// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestLaunchSpecificationEphemeralBlockDevice {
  final String deviceName;
  final String virtualName;

  /// Creates a new [SpotFleetRequestLaunchSpecificationEphemeralBlockDevice].
  /// [deviceName] Required.
  /// [virtualName] Required.
  SpotFleetRequestLaunchSpecificationEphemeralBlockDevice({
    required this.deviceName,
    required this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'virtualName': virtualName,
    };
  }

  factory SpotFleetRequestLaunchSpecificationEphemeralBlockDevice.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpotFleetRequestLaunchSpecificationEphemeralBlockDevice(
      deviceName: map['deviceName'] as String,
      virtualName: map['virtualName'] as String,
    );
  }
}
