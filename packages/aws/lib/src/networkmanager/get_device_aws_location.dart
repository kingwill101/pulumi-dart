// ignore_for_file: unused_element, unnecessary_cast

class GetDeviceAwsLocation {
  /// ARN of the subnet that the device is located in.
  final String subnetArn;

  /// Zone that the device is located in.
  final String zone;

  /// Creates a new [GetDeviceAwsLocation].
  /// [subnetArn] ARN of the subnet that the device is located in.
  /// [zone] Zone that the device is located in.
  GetDeviceAwsLocation({
    required this.subnetArn,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subnetArn'] = subnetArn;
    map['zone'] = zone;
    return map;
  }

  factory GetDeviceAwsLocation.fromMap(Map<String, dynamic> map) {
    return GetDeviceAwsLocation(
      subnetArn: map['subnetArn'] as String,
      zone: map['zone'] as String,
    );
  }
}
