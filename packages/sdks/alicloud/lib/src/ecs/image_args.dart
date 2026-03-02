// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_disk_device_mapping.dart';
import 'image_features.dart';

/// {@template pulumi_ecs_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_ecs_image_image_args_doc}
class ImageArgs {
  /// The system architecture of the system disk. If you specify a data disk snapshot to create the system disk of the custom image, you must use Architecture to specify the system architecture of the system disk. Valid values: `i386`, `x86\_64`, `arm64`. Default value: `x86\_64`.
  final pulumi.Input<String>? architecture;
  /// The new boot mode of the image. Valid values:
  ///
  /// *   BIOS: Basic Input/Output System (BIOS)
  ///
  /// *   UEFI: Unified Extensible Firmware Interface (UEFI)
  ///
  /// *   UEFI-Preferred: BIOS and UEFI
  ///
  /// > **NOTE:**   Before you change the boot mode, we recommend that you obtain the boot modes supported by the image. If you specify an unsupported boot mode for the image, ECS instances that use the image cannot start as expected. If you do not know which boot modes are supported by the image, we recommend that you use the image check feature to perform a check. For information about the image check feature, see [Overview](https://www.alibabacloud.com/help/en/doc-detail/439819.html).
  ///
  /// > **NOTE:**   For information about the UEFI-Preferred boot mode, see [Best practices for ECS instance boot modes](https://www.alibabacloud.com/help/en/doc-detail/2244655.html).
  final pulumi.Input<String>? bootMode;
  /// Not the public attribute and it used to automatically delete dependence snapshots while deleting the image.
  final pulumi.Input<bool>? deleteAutoSnapshot;
  /// The new description of the custom image. The description must be 2 to 256 characters in length It cannot start with `http://` or `https://`. This parameter is empty by default, which specifies that the original description is retained.
  final pulumi.Input<String>? description;
  /// The mode in which to check the custom image. If you do not specify this parameter, the image is not checked. Only the standard check mode is supported.
  ///
  /// > **NOTE:**   This parameter is supported for most Linux and Windows operating system versions. For information about image check items and operating system limits for image check, see [Overview of image check](https://www.alibabacloud.com/help/en/doc-detail/439819.html) and [Operating system limits for image check](https://www.alibabacloud.com/help/en/doc-detail/475800.html).
  final pulumi.Input<String>? detectionStrategy;
  /// Snapshot information for the image See `disk_device_mapping` below.
  final pulumi.Input<List<ImageDiskDeviceMapping>>? diskDeviceMappings;
  /// Features See `features` below.
  final pulumi.Input<ImageFeatures>? features;
  /// Whether to perform forced deletion. Value range:
  /// - true: forcibly deletes the custom image, ignoring whether the current image is used by other instances.
  /// - false: The custom image is deleted normally. Before deleting the custom image, check whether the current image is used by other instances.
  ///
  /// Default value: false
  final pulumi.Input<bool>? force;
  /// The name of the image family. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with acs: or aliyun. It cannot contain http:// or https://. It can contain letters, digits, periods (.), colons (:), underscores (\_), and hyphens (-). By default, this parameter is empty.
  final pulumi.Input<String>? imageFamily;
  /// The name of the custom image. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with acs: or aliyun. It cannot contain http:// or https://. It can contain letters, digits, periods (.), colons (:), underscores (\_), and hyphens (-). By default, this parameter is empty. In this case, the original name is retained.
  final pulumi.Input<String>? imageName;
  /// The image version.
  ///
  /// > **NOTE:**  If you specify an instance by configuring `InstanceId`, and the instance uses an Alibaba Cloud Marketplace image or a custom image that is created from an Alibaba Cloud Marketplace image, you must leave this parameter empty or set this parameter to the value of ImageVersion of the instance.
  final pulumi.Input<String>? imageVersion;
  /// The instance ID.
  final pulumi.Input<String>? instanceId;
  /// The type of the license that is used to activate the operating system after the image is imported. Set the value to BYOL. BYOL: The license that comes with the source operating system is used. When you use the BYOL license, make sure that your license key is supported by Alibaba Cloud.
  final pulumi.Input<String>? licenseType;
  /// . Field 'name' has been deprecated from provider version 1.227.0. New field 'image_name' instead.
  final pulumi.Input<String>? name;
  /// The operating system distribution for the system disk in the custom image. If you specify a data disk snapshot to create the system disk of the custom image, use Platform to specify the operating system distribution for the system disk. Valid values: `Aliyun`, `Anolis`, `CentOS`, `Ubuntu`, `CoreOS`, `SUSE`, `Debian`, `OpenSUSE`, `FreeBSD`, `RedHat`, `Kylin`, `UOS`, `Fedora`, `Fedora CoreOS`, `CentOS Stream`, `AlmaLinux`, `Rocky Linux`, `Gentoo`, `Customized Linux`, `Others Linux`, `Windows Server 2022`, `Windows Server 2019`, `Windows Server 2016`, `Windows Server 2012`, `Windows Server 2008`, `Windows Server 2003`. Default value: `Others Linux`.
  final pulumi.Input<String>? platform;
  /// The ID of the resource group to which to assign the custom image. If you do not specify this parameter, the image is assigned to the default resource group.
  ///
  /// > **NOTE:**   If you call the CreateImage operation as a Resource Access Management (RAM) user who does not have the permissions to manage the default resource group and do not specify `ResourceGroupId`, the `Forbbiden: User not authorized to operate on the specified resource` error message is returned. You must specify the ID of a resource group that the RAM user has the permissions to manage or grant the RAM user the permissions to manage the default resource group before you call the CreateImage operation again.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the snapshot that you want to use to create the custom image.
  final pulumi.Input<String>? snapshotId;
  /// The tag
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ImageArgs].
  /// [architecture] The system architecture of the system disk. If you specify a data disk snapshot to create the system disk of the custom image, you must use Architecture to specify the system architecture of the system disk. Valid values: `i386`, `x86\_64`, `arm64`. Default value: `x86\_64`.
  /// [bootMode] The new boot mode of the image. Valid values:
  /// [deleteAutoSnapshot] Not the public attribute and it used to automatically delete dependence snapshots while deleting the image.
  /// [description] The new description of the custom image. The description must be 2 to 256 characters in length It cannot start with `http://` or `https://`. This parameter is empty by default, which specifies that the original description is retained.
  /// [detectionStrategy] The mode in which to check the custom image. If you do not specify this parameter, the image is not checked. Only the standard check mode is supported.
  /// [diskDeviceMappings] Snapshot information for the image See `disk_device_mapping` below.
  /// [features] Features See `features` below.
  /// [force] Whether to perform forced deletion. Value range:
  /// [imageFamily] The name of the image family. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with acs: or aliyun. It cannot contain http:// or https://. It can contain letters, digits, periods (.), colons (:), underscores (\_), and hyphens (-). By default, this parameter is empty.
  /// [imageName] The name of the custom image. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with acs: or aliyun. It cannot contain http:// or https://. It can contain letters, digits, periods (.), colons (:), underscores (\_), and hyphens (-). By default, this parameter is empty. In this case, the original name is retained.
  /// [imageVersion] The image version.
  /// [instanceId] The instance ID.
  /// [licenseType] The type of the license that is used to activate the operating system after the image is imported. Set the value to BYOL. BYOL: The license that comes with the source operating system is used. When you use the BYOL license, make sure that your license key is supported by Alibaba Cloud.
  /// [name] . Field 'name' has been deprecated from provider version 1.227.0. New field 'image_name' instead.
  /// [platform] The operating system distribution for the system disk in the custom image. If you specify a data disk snapshot to create the system disk of the custom image, use Platform to specify the operating system distribution for the system disk. Valid values: `Aliyun`, `Anolis`, `CentOS`, `Ubuntu`, `CoreOS`, `SUSE`, `Debian`, `OpenSUSE`, `FreeBSD`, `RedHat`, `Kylin`, `UOS`, `Fedora`, `Fedora CoreOS`, `CentOS Stream`, `AlmaLinux`, `Rocky Linux`, `Gentoo`, `Customized Linux`, `Others Linux`, `Windows Server 2022`, `Windows Server 2019`, `Windows Server 2016`, `Windows Server 2012`, `Windows Server 2008`, `Windows Server 2003`. Default value: `Others Linux`.
  /// [resourceGroupId] The ID of the resource group to which to assign the custom image. If you do not specify this parameter, the image is assigned to the default resource group.
  /// [snapshotId] The ID of the snapshot that you want to use to create the custom image.
  /// [tags] The tag
  ImageArgs({
    this.architecture,
    this.bootMode,
    this.deleteAutoSnapshot,
    this.description,
    this.detectionStrategy,
    this.diskDeviceMappings,
    this.features,
    this.force,
    this.imageFamily,
    this.imageName,
    this.imageVersion,
    this.instanceId,
    this.licenseType,
    this.name,
    this.platform,
    this.resourceGroupId,
    this.snapshotId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'bootMode': ?bootMode,
      'deleteAutoSnapshot': ?deleteAutoSnapshot,
      'description': ?description,
      'detectionStrategy': ?detectionStrategy,
      'diskDeviceMappings': ?pulumi.Input.mapOptionalInputValue<List<ImageDiskDeviceMapping>, List<Map<String, dynamic>>>(diskDeviceMappings, (value) => pulumi.Input.encodeList<ImageDiskDeviceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'features': ?pulumi.Input.mapOptionalInputValue<ImageFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'force': ?force,
      'imageFamily': ?imageFamily,
      'imageName': ?imageName,
      'imageVersion': ?imageVersion,
      'instanceId': ?instanceId,
      'licenseType': ?licenseType,
      'name': ?name,
      'platform': ?platform,
      'resourceGroupId': ?resourceGroupId,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      architecture: map['architecture'] == null ? null : (map['architecture'] as String).input(),
      bootMode: map['bootMode'] == null ? null : (map['bootMode'] as String).input(),
      deleteAutoSnapshot: map['deleteAutoSnapshot'] == null ? null : (map['deleteAutoSnapshot'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      detectionStrategy: map['detectionStrategy'] == null ? null : (map['detectionStrategy'] as String).input(),
      diskDeviceMappings: map['diskDeviceMappings'] == null ? null : (pulumi.Input.decodeList<ImageDiskDeviceMapping>(map['diskDeviceMappings'], (value) => ImageDiskDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      features: map['features'] == null ? null : (ImageFeatures.fromMap((map['features'] as Map).cast<String, dynamic>())).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      imageFamily: map['imageFamily'] == null ? null : (map['imageFamily'] as String).input(),
      imageName: map['imageName'] == null ? null : (map['imageName'] as String).input(),
      imageVersion: map['imageVersion'] == null ? null : (map['imageVersion'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      platform: map['platform'] == null ? null : (map['platform'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

