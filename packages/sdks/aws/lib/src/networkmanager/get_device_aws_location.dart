// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeviceAwsLocation {
  /// ARN of the subnet that the device is located in.
  final pulumi.Input<String> subnetArn;
  /// Zone that the device is located in.
  final pulumi.Input<String> zone;

  /// Creates a new [GetDeviceAwsLocation].
  /// [subnetArn] ARN of the subnet that the device is located in.
  /// [zone] Zone that the device is located in.
  GetDeviceAwsLocation({
    required this.subnetArn,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetArn': subnetArn,
      'zone': zone,
    };
  }

  factory GetDeviceAwsLocation.fromMap(Map<String, dynamic> map) {
    return GetDeviceAwsLocation(
      subnetArn: (map['subnetArn'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

