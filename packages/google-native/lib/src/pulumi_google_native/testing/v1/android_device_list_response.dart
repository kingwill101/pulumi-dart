// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_device_response.dart';

/// A list of Android device configurations in which the test is to be executed.
class AndroidDeviceListResponse {
  /// A list of Android devices.
  final List<AndroidDeviceResponse> androidDevices;

  AndroidDeviceListResponse({
    required this.androidDevices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['androidDevices'] =
        pulumi.Input.encodeList<AndroidDeviceResponse, Map<String, dynamic>>(
            androidDevices, (value) => value.toMap());
    return map;
  }

  factory AndroidDeviceListResponse.fromMap(Map<String, dynamic> map) {
    return AndroidDeviceListResponse(
      androidDevices: pulumi.Input.decodeList<AndroidDeviceResponse>(
          map['androidDevices'],
          (value) => AndroidDeviceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
