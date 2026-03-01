// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_virtual_mfadevice_properties.dart';

/// {@template pulumi_awsconnector_iam_virtual_mfa_device_args_doc}
/// The set of arguments for IamVirtualMfaDevice.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_iam_virtual_mfa_device_args_doc}
class IamVirtualMfaDeviceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of IamVirtualMFADevice
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<IamVirtualMFADeviceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IamVirtualMfaDeviceArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of IamVirtualMFADevice
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  IamVirtualMfaDeviceArgs({
    String? location,
    String? name,
    IamVirtualMFADeviceProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<IamVirtualMFADeviceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<IamVirtualMFADeviceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IamVirtualMfaDeviceArgs.fromMap(Map<String, dynamic> map) {
    return IamVirtualMfaDeviceArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : IamVirtualMFADeviceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

