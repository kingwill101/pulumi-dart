// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDevice.
class GetDeviceArgs2 {
  final Input<String>? customer;
  final Input<String> deviceId;

  GetDeviceArgs2({
    this.customer,
    required this.deviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerValue = customer;
    if (customerValue != null) {
      map['customer'] = customerValue;
    }
    map['deviceId'] = deviceId;
    return map;
  }

  factory GetDeviceArgs2.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs2(
      customer: Input.asOptionalInput<String>(map['customer']),
      deviceId: Input.asInput<String>(map['deviceId']),
    );
  }
}
