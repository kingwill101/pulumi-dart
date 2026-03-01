// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_network_config.dart';

/// Describes the virtual machines used to build and validate images
class ImageTemplateVmProfile {
  /// Size of the OS disk in GB. Omit or specify 0 to use Azure's default OS disk size.
  final int? osDiskSizeGB;
  /// Optional array of resource IDs of user assigned managed identities to be configured on the build VM and validation VM. This may include the identity of the image template.
  final List<String>? userAssignedIdentities;
  /// Size of the virtual machine used to build, customize and capture images. Omit or specify empty string to use the default (Standard_D1_v2 for Gen1 images and Standard_D2ds_v4 for Gen2 images).
  final String? vmSize;
  /// Optional configuration of the virtual network to use to deploy the build VM and validation VM in. Omit if no specific virtual network needs to be used.
  final VirtualNetworkConfig? vnetConfig;

  /// Creates a new [ImageTemplateVmProfile].
  /// [osDiskSizeGB] Size of the OS disk in GB. Omit or specify 0 to use Azure's default OS disk size.
  /// [userAssignedIdentities] Optional array of resource IDs of user assigned managed identities to be configured on the build VM and validation VM. This may include the identity of the image template.
  /// [vmSize] Size of the virtual machine used to build, customize and capture images. Omit or specify empty string to use the default (Standard_D1_v2 for Gen1 images and Standard_D2ds_v4 for Gen2 images).
  /// [vnetConfig] Optional configuration of the virtual network to use to deploy the build VM and validation VM in. Omit if no specific virtual network needs to be used.
  ImageTemplateVmProfile({
    this.osDiskSizeGB,
    this.userAssignedIdentities,
    this.vmSize,
    this.vnetConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osDiskSizeGB': ?osDiskSizeGB,
      'userAssignedIdentities': ?userAssignedIdentities,
      'vmSize': ?vmSize,
      'vnetConfig': ?vnetConfig == null ? null : vnetConfig!.toMap(),
    };
  }

  factory ImageTemplateVmProfile.fromMap(Map<String, dynamic> map) {
    return ImageTemplateVmProfile(
      osDiskSizeGB: map['osDiskSizeGB'] == null ? null : map['osDiskSizeGB'] as int,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
      vnetConfig: map['vnetConfig'] == null ? null : VirtualNetworkConfig.fromMap((map['vnetConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

