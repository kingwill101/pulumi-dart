// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_device_group_args_doc}
/// The set of arguments for DeviceGroup.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_device_group_args_doc}
class DeviceGroupArgs {
  /// Flag to define if the user allows for crash dump collection.
  final pulumi.Input<String>? allowCrashDumpsCollection;
  /// Name of catalog
  final pulumi.Input<String> catalogName;
  /// Description of the device group.
  final pulumi.Input<String>? description;
  /// Name of device group.
  final pulumi.Input<String>? deviceGroupName;
  /// Operating system feed type of the device group.
  final pulumi.Input<String>? osFeedType;
  /// Name of product.
  final pulumi.Input<String> productName;
  /// Regional data boundary for the device group.
  final pulumi.Input<String>? regionalDataBoundary;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Update policy of the device group.
  final pulumi.Input<String>? updatePolicy;

  /// Creates a new [DeviceGroupArgs].
  /// [allowCrashDumpsCollection] Flag to define if the user allows for crash dump collection.
  /// [catalogName] Name of catalog
  /// [description] Description of the device group.
  /// [deviceGroupName] Name of device group.
  /// [osFeedType] Operating system feed type of the device group.
  /// [productName] Name of product.
  /// [regionalDataBoundary] Regional data boundary for the device group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [updatePolicy] Update policy of the device group.
  DeviceGroupArgs({
    this.allowCrashDumpsCollection,
    required this.catalogName,
    this.description,
    this.deviceGroupName,
    this.osFeedType,
    required this.productName,
    this.regionalDataBoundary,
    required this.resourceGroupName,
    this.updatePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCrashDumpsCollection': ?allowCrashDumpsCollection,
      'catalogName': catalogName,
      'description': ?description,
      'deviceGroupName': ?deviceGroupName,
      'osFeedType': ?osFeedType,
      'productName': productName,
      'regionalDataBoundary': ?regionalDataBoundary,
      'resourceGroupName': resourceGroupName,
      'updatePolicy': ?updatePolicy,
    };
  }

  factory DeviceGroupArgs.fromMap(Map<String, dynamic> map) {
    return DeviceGroupArgs(
      allowCrashDumpsCollection: map['allowCrashDumpsCollection'] == null ? null : (map['allowCrashDumpsCollection']! as String).input(),
      catalogName: (map['catalogName'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      deviceGroupName: map['deviceGroupName'] == null ? null : (map['deviceGroupName']! as String).input(),
      osFeedType: map['osFeedType'] == null ? null : (map['osFeedType']! as String).input(),
      productName: (map['productName'] as String).input(),
      regionalDataBoundary: map['regionalDataBoundary'] == null ? null : (map['regionalDataBoundary']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      updatePolicy: map['updatePolicy'] == null ? null : (map['updatePolicy']! as String).input(),
    );
  }
}

