// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_images_get_images_args_doc}
class GetImagesArgs {
  /// The scenario in which the image will be used. Default value: `CreateEcs`. Valid values:
  /// - `CreateEcs`: instance creation.
  /// - `ChangeOS`: replacement of the system disk or operating system.
  final pulumi.Input<String>? actionType;
  /// The image architecture. Valid values: `i386`, `x86_64`, `arm64`.
  final pulumi.Input<String>? architecture;
  /// Specifies whether the image is running on an ECS instance. Default value: `false`. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The name of the image family. You can set this parameter to query images of the specified image family. This parameter is empty by default.
  final pulumi.Input<String>? imageFamily;
  /// The ID of the image.
  final pulumi.Input<String>? imageId;
  /// The name of the image.
  final pulumi.Input<String>? imageName;
  /// The ID of the Alibaba Cloud account to which the image belongs. This parameter takes effect only when you query shared images or community images.
  final pulumi.Input<String>? imageOwnerId;
  /// The instance type for which the image can be used.
  final pulumi.Input<String>? instanceType;
  /// Specifies whether the image supports cloud-init.
  final pulumi.Input<bool>? isSupportCloudInit;
  /// Specifies whether the image can be used on I/O optimized instances.
  final pulumi.Input<bool>? isSupportIoOptimized;
  /// If more than one result are returned, select the most recent one.
  final pulumi.Input<bool>? mostRecent;
  /// A regex string to filter resulting images by name.
  final pulumi.Input<String>? nameRegex;
  /// The operating system type of the image. Valid values: `windows` and `linux`.
  final pulumi.Input<String>? osType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Filter results by a specific image owner. Valid items are `system`, `self`, `others`, `marketplace`.
  final pulumi.Input<String>? owners;
  /// The ID of the resource group to which the custom image belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the snapshot used to create the custom image.
  final pulumi.Input<String>? snapshotId;
  /// The status of the image. The following values are available, Separate multiple parameter values by using commas (,). Default value: `Available`. Valid values:
  /// - `Creating`: The image is being created.
  /// - `Waiting`: The image is waiting to be processed.
  /// - `Available`: The image is available.
  /// - `UnAvailable`: The image is unavailable.
  /// - `CreateFailed`: The image failed to be created.
  /// - `Deprecated`: The image is discontinued.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies whether to check the validity of the request without actually making the request. Valid values:
  final pulumi.Input<String>? usage;

  /// Creates a new [GetImagesArgs].
  /// [actionType] The scenario in which the image will be used. Default value: `CreateEcs`. Valid values:
  /// [architecture] The image architecture. Valid values: `i386`, `x86_64`, `arm64`.
  /// [dryRun] Specifies whether the image is running on an ECS instance. Default value: `false`. Valid values:
  /// [imageFamily] The name of the image family. You can set this parameter to query images of the specified image family. This parameter is empty by default.
  /// [imageId] The ID of the image.
  /// [imageName] The name of the image.
  /// [imageOwnerId] The ID of the Alibaba Cloud account to which the image belongs. This parameter takes effect only when you query shared images or community images.
  /// [instanceType] The instance type for which the image can be used.
  /// [isSupportCloudInit] Specifies whether the image supports cloud-init.
  /// [isSupportIoOptimized] Specifies whether the image can be used on I/O optimized instances.
  /// [mostRecent] If more than one result are returned, select the most recent one.
  /// [nameRegex] A regex string to filter resulting images by name.
  /// [osType] The operating system type of the image. Valid values: `windows` and `linux`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [owners] Filter results by a specific image owner. Valid items are `system`, `self`, `others`, `marketplace`.
  /// [resourceGroupId] The ID of the resource group to which the custom image belongs.
  /// [snapshotId] The ID of the snapshot used to create the custom image.
  /// [status] The status of the image. The following values are available, Separate multiple parameter values by using commas (,). Default value: `Available`. Valid values:
  /// [tags] A mapping of tags to assign to the resource.
  /// [usage] Specifies whether to check the validity of the request without actually making the request. Valid values:
  const GetImagesArgs({
    this.actionType,
    this.architecture,
    this.dryRun,
    this.imageFamily,
    this.imageId,
    this.imageName,
    this.imageOwnerId,
    this.instanceType,
    this.isSupportCloudInit,
    this.isSupportIoOptimized,
    this.mostRecent,
    this.nameRegex,
    this.osType,
    this.outputFile,
    this.owners,
    this.resourceGroupId,
    this.snapshotId,
    this.status,
    this.tags,
    this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': ?actionType,
      'architecture': ?architecture,
      'dryRun': ?dryRun,
      'imageFamily': ?imageFamily,
      'imageId': ?imageId,
      'imageName': ?imageName,
      'imageOwnerId': ?imageOwnerId,
      'instanceType': ?instanceType,
      'isSupportCloudInit': ?isSupportCloudInit,
      'isSupportIoOptimized': ?isSupportIoOptimized,
      'mostRecent': ?mostRecent,
      'nameRegex': ?nameRegex,
      'osType': ?osType,
      'outputFile': ?outputFile,
      'owners': ?owners,
      'resourceGroupId': ?resourceGroupId,
      'snapshotId': ?snapshotId,
      'status': ?status,
      'tags': ?tags,
      'usage': ?usage,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      actionType: (() { final guardedValue = map['actionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageFamily: (() { final guardedValue = map['imageFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageOwnerId: (() { final guardedValue = map['imageOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSupportCloudInit: (() { final guardedValue = map['isSupportCloudInit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSupportIoOptimized: (() { final guardedValue = map['isSupportIoOptimized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      usage: (() { final guardedValue = map['usage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

