// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1beta1_get_device_cloudidentity_v1beta1_args_doc}
/// Arguments for getDevice.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1beta1_get_device_cloudidentity_v1beta1_args_doc}
class GetDeviceCloudidentityV1beta1Args {
  final pulumi.Input<String>? customer;
  final pulumi.Input<String> deviceId;

  /// Creates a new [GetDeviceCloudidentityV1beta1Args].
  /// [customer] Optional.
  /// [deviceId] Required.
  GetDeviceCloudidentityV1beta1Args({
    String? customer,
    required String deviceId,
  })  : customer = pulumi.Input.asOptionalInput<String>(customer),
        deviceId = pulumi.Input.asInput<String>(deviceId);

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
      customer: map['customer'] == null ? null : map['customer'] as String,
      deviceId: map['deviceId'] as String,
    );
  }
}
