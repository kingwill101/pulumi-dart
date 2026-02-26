// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestLaunchSpecificationEphemeralBlockDevice {
  final String deviceName;
  final String virtualName;

  SpotFleetRequestLaunchSpecificationEphemeralBlockDevice({
    required this.deviceName,
    required this.virtualName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceName'] = deviceName;
    map['virtualName'] = virtualName;
    return map;
  }

  factory SpotFleetRequestLaunchSpecificationEphemeralBlockDevice.fromMap(
      Map<String, dynamic> map) {
    return SpotFleetRequestLaunchSpecificationEphemeralBlockDevice(
      deviceName: map['deviceName'] as String,
      virtualName: map['virtualName'] as String,
    );
  }
}
