// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDevice.
class GetDeviceArgs {
  final pulumi.Input<String>? customer;
  final pulumi.Input<String> deviceId;

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
      customer: pulumi.Input.asOptionalInput<String>(map['customer']),
      deviceId: pulumi.Input.asInput<String>(map['deviceId']),
    );
  }
}
