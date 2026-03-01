// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1_get_device_args_doc}
/// Arguments for getDevice.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1_get_device_args_doc}
class GetDeviceArgs {
  final pulumi.Input<String>? customer;
  final pulumi.Input<String> deviceId;

  /// Creates a new [GetDeviceArgs].
  /// [customer] Optional.
  /// [deviceId] Required.
  GetDeviceArgs({String? customer, required String deviceId})
    : customer = pulumi.Input.asOptionalInput<String>(customer),
      deviceId = pulumi.Input.asInput<String>(deviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'customer': ?customer, 'deviceId': deviceId};
  }

  factory GetDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs(
      customer: map['customer'] == null ? null : map['customer'] as String,
      deviceId: map['deviceId'] as String,
    );
  }
}
