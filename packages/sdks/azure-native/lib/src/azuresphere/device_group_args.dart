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
    pulumi.Output<String>? allowCrashDumpsCollection,
    required pulumi.Output<String> catalogName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? deviceGroupName,
    pulumi.Output<String>? osFeedType,
    required pulumi.Output<String> productName,
    pulumi.Output<String>? regionalDataBoundary,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? updatePolicy,
  }) :
      allowCrashDumpsCollection = pulumi.Input.asOptionalInput<String>(allowCrashDumpsCollection),
      catalogName = pulumi.Input.asInput<String>(catalogName),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceGroupName = pulumi.Input.asOptionalInput<String>(deviceGroupName),
      osFeedType = pulumi.Input.asOptionalInput<String>(osFeedType),
      productName = pulumi.Input.asInput<String>(productName),
      regionalDataBoundary = pulumi.Input.asOptionalInput<String>(regionalDataBoundary),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      updatePolicy = pulumi.Input.asOptionalInput<String>(updatePolicy);

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
      allowCrashDumpsCollection: map['allowCrashDumpsCollection'] == null ? null : pulumi.Output.create<String>(map['allowCrashDumpsCollection'] as String),
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      deviceGroupName: map['deviceGroupName'] == null ? null : pulumi.Output.create<String>(map['deviceGroupName'] as String),
      osFeedType: map['osFeedType'] == null ? null : pulumi.Output.create<String>(map['osFeedType'] as String),
      productName: pulumi.Output.create<String>(map['productName'] as String),
      regionalDataBoundary: map['regionalDataBoundary'] == null ? null : pulumi.Output.create<String>(map['regionalDataBoundary'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      updatePolicy: map['updatePolicy'] == null ? null : pulumi.Output.create<String>(map['updatePolicy'] as String),
    );
  }
}

