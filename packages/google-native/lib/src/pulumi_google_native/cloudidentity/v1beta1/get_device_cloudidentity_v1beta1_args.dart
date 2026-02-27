// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDevice.
class GetDeviceCloudidentityV1beta1Args {
  final pulumi.Input<String>? customer;
  final pulumi.Input<String> deviceId;

  GetDeviceCloudidentityV1beta1Args({
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

  factory GetDeviceCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDeviceCloudidentityV1beta1Args(
      customer: pulumi.Input.asOptionalInput<String>(map['customer']),
      deviceId: pulumi.Input.asInput<String>(map['deviceId']),
    );
  }
}
