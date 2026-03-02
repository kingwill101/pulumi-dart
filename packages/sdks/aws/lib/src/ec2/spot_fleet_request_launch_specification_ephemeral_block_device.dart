// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotFleetRequestLaunchSpecificationEphemeralBlockDevice {
  final pulumi.Input<String> deviceName;
  final pulumi.Input<String> virtualName;

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

  factory SpotFleetRequestLaunchSpecificationEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchSpecificationEphemeralBlockDevice(
      deviceName: (map['deviceName'] as String).input(),
      virtualName: (map['virtualName'] as String).input(),
    );
  }
}

