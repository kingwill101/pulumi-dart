// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsImagePipelinePipeline {
  /// The IDs of Alibaba Cloud accounts to which the image was shared.
  final pulumi.Input<List<String>> addAccounts;
  /// The source image.
  final pulumi.Input<String> baseImage;
  /// The type of the source image.
  final pulumi.Input<String> baseImageType;
  /// The content of the image template.
  final pulumi.Input<String> buildContent;
  /// The time when the image template was created.
  final pulumi.Input<String> creationTime;
  /// Indicates whether the intermediate instance was released when the image failed to be created.
  final pulumi.Input<bool> deleteInstanceOnFailure;
  /// The description of the image template.
  final pulumi.Input<String> description;
  /// The ID of the Image Pipeline.
  final pulumi.Input<String> id;
  /// The name prefix of the created image.
  final pulumi.Input<String> imageName;
  /// The ID of the image template.
  final pulumi.Input<String> imagePipelineId;
  /// The instance type of the intermediate instance.
  final pulumi.Input<String> instanceType;
  /// The size of the outbound public bandwidth for the intermediate instance. Unit: `Mbit/s`.
  final pulumi.Input<int> internetMaxBandwidthOut;
  /// The name of the image template.
  final pulumi.Input<String> name;
  /// The ID of the resource group to which the image template belongs.
  final pulumi.Input<String> resourceGroupId;
  /// The system disk size of the intermediate instance. Unit: `GiB`.
  final pulumi.Input<int> systemDiskSize;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The IDs of regions to which to distribute the created image.
  final pulumi.Input<List<String>> toRegionIds;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetEcsImagePipelinePipeline].
  /// [addAccounts] The IDs of Alibaba Cloud accounts to which the image was shared.
  /// [baseImage] The source image.
  /// [baseImageType] The type of the source image.
  /// [buildContent] The content of the image template.
  /// [creationTime] The time when the image template was created.
  /// [deleteInstanceOnFailure] Indicates whether the intermediate instance was released when the image failed to be created.
  /// [description] The description of the image template.
  /// [id] The ID of the Image Pipeline.
  /// [imageName] The name prefix of the created image.
  /// [imagePipelineId] The ID of the image template.
  /// [instanceType] The instance type of the intermediate instance.
  /// [internetMaxBandwidthOut] The size of the outbound public bandwidth for the intermediate instance. Unit: `Mbit/s`.
  /// [name] The name of the image template.
  /// [resourceGroupId] The ID of the resource group to which the image template belongs.
  /// [systemDiskSize] The system disk size of the intermediate instance. Unit: `GiB`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [toRegionIds] The IDs of regions to which to distribute the created image.
  /// [vswitchId] The vswitch id.
  GetEcsImagePipelinePipeline({
    required this.addAccounts,
    required this.baseImage,
    required this.baseImageType,
    required this.buildContent,
    required this.creationTime,
    required this.deleteInstanceOnFailure,
    required this.description,
    required this.id,
    required this.imageName,
    required this.imagePipelineId,
    required this.instanceType,
    required this.internetMaxBandwidthOut,
    required this.name,
    required this.resourceGroupId,
    required this.systemDiskSize,
    this.tags,
    required this.toRegionIds,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addAccounts': addAccounts,
      'baseImage': baseImage,
      'baseImageType': baseImageType,
      'buildContent': buildContent,
      'creationTime': creationTime,
      'deleteInstanceOnFailure': deleteInstanceOnFailure,
      'description': description,
      'id': id,
      'imageName': imageName,
      'imagePipelineId': imagePipelineId,
      'instanceType': instanceType,
      'internetMaxBandwidthOut': internetMaxBandwidthOut,
      'name': name,
      'resourceGroupId': resourceGroupId,
      'systemDiskSize': systemDiskSize,
      'tags': ?tags,
      'toRegionIds': toRegionIds,
      'vswitchId': vswitchId,
    };
  }

  factory GetEcsImagePipelinePipeline.fromMap(Map<String, dynamic> map) {
    return GetEcsImagePipelinePipeline(
      addAccounts: ((map['addAccounts'] as List).cast<String>()).input(),
      baseImage: (map['baseImage'] as String).input(),
      baseImageType: (map['baseImageType'] as String).input(),
      buildContent: (map['buildContent'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      deleteInstanceOnFailure: (map['deleteInstanceOnFailure'] as bool).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      imageName: (map['imageName'] as String).input(),
      imagePipelineId: (map['imagePipelineId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      internetMaxBandwidthOut: (map['internetMaxBandwidthOut'] as int).input(),
      name: (map['name'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      systemDiskSize: (map['systemDiskSize'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      toRegionIds: ((map['toRegionIds'] as List).cast<String>()).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

