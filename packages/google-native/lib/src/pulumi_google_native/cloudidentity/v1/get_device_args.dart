// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDevice.
class GetDeviceArgs {
  final Input<String>? customer;
  final Input<String> deviceId;

  GetDeviceArgs({
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

  factory GetDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs(
      customer: Input.asOptionalInput<String>(map['customer']),
      deviceId: Input.asInput<String>(map['deviceId']),
    );
  }
}
