// ignore_for_file: unused_element, unnecessary_cast

import 'android_device_response.dart';
import 'ios_device_response.dart';

/// The environment in which the test is run.
class EnvironmentResponse {
  /// An Android device which must be used with an Android test.
  final AndroidDeviceResponse androidDevice;

  /// An iOS device which must be used with an iOS test.
  final IosDeviceResponse iosDevice;

  /// Creates a new [EnvironmentResponse].
  /// [androidDevice] An Android device which must be used with an Android test.
  /// [iosDevice] An iOS device which must be used with an iOS test.
  EnvironmentResponse({required this.androidDevice, required this.iosDevice});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidDevice': androidDevice.toMap(),
      'iosDevice': iosDevice.toMap(),
    };
  }

  factory EnvironmentResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentResponse(
      androidDevice: AndroidDeviceResponse.fromMap(
        (map['androidDevice'] as Map).cast<String, dynamic>(),
      ),
      iosDevice: IosDeviceResponse.fromMap(
        (map['iosDevice'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
