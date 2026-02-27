// ignore_for_file: unused_element, unnecessary_cast

import 'android_device_response.dart';
import 'ios_device_response.dart';

/// The environment in which the test is run.
class EnvironmentResponseTestingV1 {
  /// An Android device which must be used with an Android test.
  final AndroidDeviceResponse androidDevice;

  /// An iOS device which must be used with an iOS test.
  final IosDeviceResponse iosDevice;

  EnvironmentResponseTestingV1({
    required this.androidDevice,
    required this.iosDevice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['androidDevice'] = androidDevice.toMap();
    map['iosDevice'] = iosDevice.toMap();
    return map;
  }

  factory EnvironmentResponseTestingV1.fromMap(Map<String, dynamic> map) {
    return EnvironmentResponseTestingV1(
      androidDevice: AndroidDeviceResponse.fromMap(
          (map['androidDevice'] as Map).cast<String, dynamic>()),
      iosDevice: IosDeviceResponse.fromMap(
          (map['iosDevice'] as Map).cast<String, dynamic>()),
    );
  }
}
