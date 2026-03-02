// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_device_extended_information_args_doc}
/// Arguments for getDeviceExtendedInformation.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_device_extended_information_args_doc}
class GetDeviceExtendedInformationArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeviceExtendedInformationArgs].
  /// [deviceName] The device name.
  /// [resourceGroupName] The resource group name.
  GetDeviceExtendedInformationArgs({
    required this.deviceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeviceExtendedInformationArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceExtendedInformationArgs(
      deviceName: (map['deviceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

