// ignore_for_file: unused_element, unnecessary_cast


class DeviceAwsLocation {
  /// ARN of the subnet that the device is located in.
  final String? subnetArn;
  /// Zone that the device is located in. Specify the ID of an Availability Zone, Local Zone, Wavelength Zone, or an Outpost.
  final String? zone;

  /// Creates a new [DeviceAwsLocation].
  /// [subnetArn] ARN of the subnet that the device is located in.
  /// [zone] Zone that the device is located in. Specify the ID of an Availability Zone, Local Zone, Wavelength Zone, or an Outpost.
  DeviceAwsLocation({
    this.subnetArn,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetArn': ?subnetArn,
      'zone': ?zone,
    };
  }

  factory DeviceAwsLocation.fromMap(Map<String, dynamic> map) {
    return DeviceAwsLocation(
      subnetArn: map['subnetArn'] == null ? null : map['subnetArn'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

