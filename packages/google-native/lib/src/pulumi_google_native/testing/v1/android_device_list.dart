// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'android_device.dart';

/// A list of Android device configurations in which the test is to be executed.
class AndroidDeviceList {
  /// A list of Android devices.
  final List<AndroidDevice> androidDevices;

  AndroidDeviceList({
    required this.androidDevices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['androidDevices'] =
        Input.encodeList<AndroidDevice, Map<String, dynamic>>(
            androidDevices, (value) => value.toMap());
    return map;
  }

  factory AndroidDeviceList.fromMap(Map<String, dynamic> map) {
    return AndroidDeviceList(
      androidDevices: Input.decodeList<AndroidDevice>(
          map['androidDevices'],
          (value) =>
              AndroidDevice.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
