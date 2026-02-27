// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ios_device.dart';

/// A list of iOS device configurations in which the test is to be executed.
class IosDeviceList {
  /// A list of iOS devices.
  final List<IosDevice> iosDevices;

  IosDeviceList({
    required this.iosDevices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iosDevices'] =
        pulumi.Input.encodeList<IosDevice, Map<String, dynamic>>(
            iosDevices, (value) => value.toMap());
    return map;
  }

  factory IosDeviceList.fromMap(Map<String, dynamic> map) {
    return IosDeviceList(
      iosDevices: pulumi.Input.decodeList<IosDevice>(map['iosDevices'],
          (value) => IosDevice.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
