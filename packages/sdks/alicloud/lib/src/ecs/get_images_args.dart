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
  GetImagesArgs({
    pulumi.Output<String>? actionType,
    pulumi.Output<String>? architecture,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? imageFamily,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? imageOwnerId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<bool>? isSupportCloudInit,
    pulumi.Output<bool>? isSupportIoOptimized,
    pulumi.Output<bool>? mostRecent,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? owners,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? usage,
  }) :
      actionType = pulumi.Input.asOptionalInput<String>(actionType),
      architecture = pulumi.Input.asOptionalInput<String>(architecture),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      imageFamily = pulumi.Input.asOptionalInput<String>(imageFamily),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      imageOwnerId = pulumi.Input.asOptionalInput<String>(imageOwnerId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      isSupportCloudInit = pulumi.Input.asOptionalInput<bool>(isSupportCloudInit),
      isSupportIoOptimized = pulumi.Input.asOptionalInput<bool>(isSupportIoOptimized),
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      owners = pulumi.Input.asOptionalInput<String>(owners),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      usage = pulumi.Input.asOptionalInput<String>(usage);

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
      actionType: map['actionType'] == null ? null : pulumi.Output.create<String>(map['actionType'] as String),
      architecture: map['architecture'] == null ? null : pulumi.Output.create<String>(map['architecture'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      imageFamily: map['imageFamily'] == null ? null : pulumi.Output.create<String>(map['imageFamily'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      imageOwnerId: map['imageOwnerId'] == null ? null : pulumi.Output.create<String>(map['imageOwnerId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      isSupportCloudInit: map['isSupportCloudInit'] == null ? null : pulumi.Output.create<bool>(map['isSupportCloudInit'] as bool),
      isSupportIoOptimized: map['isSupportIoOptimized'] == null ? null : pulumi.Output.create<bool>(map['isSupportIoOptimized'] as bool),
      mostRecent: map['mostRecent'] == null ? null : pulumi.Output.create<bool>(map['mostRecent'] as bool),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      owners: map['owners'] == null ? null : pulumi.Output.create<String>(map['owners'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      usage: map['usage'] == null ? null : pulumi.Output.create<String>(map['usage'] as String),
    );
  }
}

