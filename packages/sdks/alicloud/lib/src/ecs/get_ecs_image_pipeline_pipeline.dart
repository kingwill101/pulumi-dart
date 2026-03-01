// ignore_for_file: unused_element, unnecessary_cast


class GetEcsImagePipelinePipeline {
  /// The IDs of Alibaba Cloud accounts to which the image was shared.
  final List<String> addAccounts;
  /// The source image.
  final String baseImage;
  /// The type of the source image.
  final String baseImageType;
  /// The content of the image template.
  final String buildContent;
  /// The time when the image template was created.
  final String creationTime;
  /// Indicates whether the intermediate instance was released when the image failed to be created.
  final bool deleteInstanceOnFailure;
  /// The description of the image template.
  final String description;
  /// The ID of the Image Pipeline.
  final String id;
  /// The name prefix of the created image.
  final String imageName;
  /// The ID of the image template.
  final String imagePipelineId;
  /// The instance type of the intermediate instance.
  final String instanceType;
  /// The size of the outbound public bandwidth for the intermediate instance. Unit: `Mbit/s`.
  final int internetMaxBandwidthOut;
  /// The name of the image template.
  final String name;
  /// The ID of the resource group to which the image template belongs.
  final String resourceGroupId;
  /// The system disk size of the intermediate instance. Unit: `GiB`.
  final int systemDiskSize;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// The IDs of regions to which to distribute the created image.
  final List<String> toRegionIds;
  /// The vswitch id.
  final String vswitchId;

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
      addAccounts: (map['addAccounts'] as List).cast<String>(),
      baseImage: map['baseImage'] as String,
      baseImageType: map['baseImageType'] as String,
      buildContent: map['buildContent'] as String,
      creationTime: map['creationTime'] as String,
      deleteInstanceOnFailure: map['deleteInstanceOnFailure'] as bool,
      description: map['description'] as String,
      id: map['id'] as String,
      imageName: map['imageName'] as String,
      imagePipelineId: map['imagePipelineId'] as String,
      instanceType: map['instanceType'] as String,
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] as int,
      name: map['name'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      systemDiskSize: map['systemDiskSize'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      toRegionIds: (map['toRegionIds'] as List).cast<String>(),
      vswitchId: map['vswitchId'] as String,
    );
  }
}

