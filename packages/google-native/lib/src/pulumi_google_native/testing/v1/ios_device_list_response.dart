// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'ios_device_response.dart';

/// A list of iOS device configurations in which the test is to be executed.
class IosDeviceListResponse {
  /// A list of iOS devices.
  final List<IosDeviceResponse> iosDevices;

  IosDeviceListResponse({
    required this.iosDevices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iosDevices'] =
        Input.encodeList<IosDeviceResponse, Map<String, dynamic>>(
            iosDevices, (value) => value.toMap());
    return map;
  }

  factory IosDeviceListResponse.fromMap(Map<String, dynamic> map) {
    return IosDeviceListResponse(
      iosDevices: Input.decodeList<IosDeviceResponse>(
          map['iosDevices'],
          (value) => IosDeviceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
