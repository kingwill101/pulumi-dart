// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsImagePipeline resources.
class EcsImagePipelineState {
  /// The ID of Alibaba Cloud account to which to share the created image.
  final pulumi.Input<List<String>>? addAccounts;
  /// The source image. When you set `base_image_type` to `IMAGE`, set `base_image` to the ID of a custom image. When you set `base_image_type` to `IMAGE_FAMILY`, set `base_image` to the name of an image family.
  final pulumi.Input<String>? baseImage;
  /// The type of the source image. Valid values: `IMAGE`, `IMAGE_FAMILY`.
  /// - IMAGE: custom image.
  /// - IMAGE_FAMILY: image family.
  final pulumi.Input<String>? baseImageType;
  /// The content of the image template. The content cannot be greater than 16 KB in size, and can contain up to 127 commands.
  final pulumi.Input<String>? buildContent;
  /// Specifies whether to release the intermediate instance if the image cannot be created.
  final pulumi.Input<bool>? deleteInstanceOnFailure;
  /// The description of the image template. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`. **Note:** If the intermediate instance cannot be started, the instance is released by default.
  final pulumi.Input<String>? description;
  /// The name prefix of the image to be created. The prefix must be `2` to `64` characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-).
  final pulumi.Input<String>? imageName;
  /// The instance type of the instance. You can call the DescribeInstanceTypes operation to query instance types. If you do not specify this parameter, an instance type that provides the fewest vCPUs and memory resources is automatically selected. This configuration is subject to resource availability of instance types. For example, the `ecs.g6.large` instance type is selected by default. If available `ecs.g6.large` resources are insufficient, the `ecs.g6.xlarge` instance type is selected.
  final pulumi.Input<String>? instanceType;
  /// The size of the outbound public bandwidth for the intermediate instance. Unit: `Mbit/s`. Valid values: `0` to `100`. Default value: `0`.
  final pulumi.Input<int>? internetMaxBandwidthOut;
  /// The name of the image template. The name must be `2` to `128` characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-).
  final pulumi.Input<String>? name;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The size of the system disk of the intermediate instance. Unit: GiB. Valid values: `20` to `500`. Default value: `40`.
  final pulumi.Input<int>? systemDiskSize;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of region to which to distribute the created image.
  final pulumi.Input<List<String>>? toRegionIds;
  /// The ID of the vSwitch. If you do not specify this parameter, a virtual private cloud (VPC) and a vSwitch are created by default.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [EcsImagePipelineState].
  /// [addAccounts] The ID of Alibaba Cloud account to which to share the created image.
  /// [baseImage] The source image. When you set `base_image_type` to `IMAGE`, set `base_image` to the ID of a custom image. When you set `base_image_type` to `IMAGE_FAMILY`, set `base_image` to the name of an image family.
  /// [baseImageType] The type of the source image. Valid values: `IMAGE`, `IMAGE_FAMILY`.
  /// [buildContent] The content of the image template. The content cannot be greater than 16 KB in size, and can contain up to 127 commands.
  /// [deleteInstanceOnFailure] Specifies whether to release the intermediate instance if the image cannot be created.
  /// [description] The description of the image template. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`. **Note:** If the intermediate instance cannot be started, the instance is released by default.
  /// [imageName] The name prefix of the image to be created. The prefix must be `2` to `64` characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-).
  /// [instanceType] The instance type of the instance. You can call the DescribeInstanceTypes operation to query instance types. If you do not specify this parameter, an instance type that provides the fewest vCPUs and memory resources is automatically selected. This configuration is subject to resource availability of instance types. For example, the `ecs.g6.large` instance type is selected by default. If available `ecs.g6.large` resources are insufficient, the `ecs.g6.xlarge` instance type is selected.
  /// [internetMaxBandwidthOut] The size of the outbound public bandwidth for the intermediate instance. Unit: `Mbit/s`. Valid values: `0` to `100`. Default value: `0`.
  /// [name] The name of the image template. The name must be `2` to `128` characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-).
  /// [resourceGroupId] The ID of the resource group.
  /// [systemDiskSize] The size of the system disk of the intermediate instance. Unit: GiB. Valid values: `20` to `500`. Default value: `40`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [toRegionIds] The ID of region to which to distribute the created image.
  /// [vswitchId] The ID of the vSwitch. If you do not specify this parameter, a virtual private cloud (VPC) and a vSwitch are created by default.
  EcsImagePipelineState({
    pulumi.Output<List<String>>? addAccounts,
    pulumi.Output<String>? baseImage,
    pulumi.Output<String>? baseImageType,
    pulumi.Output<String>? buildContent,
    pulumi.Output<bool>? deleteInstanceOnFailure,
    pulumi.Output<String>? description,
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? instanceType,
    pulumi.Output<int>? internetMaxBandwidthOut,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? systemDiskSize,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? toRegionIds,
    pulumi.Output<String>? vswitchId,
  }) :
      addAccounts = pulumi.Input.asOptionalInput<List<String>>(addAccounts),
      baseImage = pulumi.Input.asOptionalInput<String>(baseImage),
      baseImageType = pulumi.Input.asOptionalInput<String>(baseImageType),
      buildContent = pulumi.Input.asOptionalInput<String>(buildContent),
      deleteInstanceOnFailure = pulumi.Input.asOptionalInput<bool>(deleteInstanceOnFailure),
      description = pulumi.Input.asOptionalInput<String>(description),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      internetMaxBandwidthOut = pulumi.Input.asOptionalInput<int>(internetMaxBandwidthOut),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      systemDiskSize = pulumi.Input.asOptionalInput<int>(systemDiskSize),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      toRegionIds = pulumi.Input.asOptionalInput<List<String>>(toRegionIds),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addAccounts': ?addAccounts,
      'baseImage': ?baseImage,
      'baseImageType': ?baseImageType,
      'buildContent': ?buildContent,
      'deleteInstanceOnFailure': ?deleteInstanceOnFailure,
      'description': ?description,
      'imageName': ?imageName,
      'instanceType': ?instanceType,
      'internetMaxBandwidthOut': ?internetMaxBandwidthOut,
      'name': ?name,
      'resourceGroupId': ?resourceGroupId,
      'systemDiskSize': ?systemDiskSize,
      'tags': ?tags,
      'toRegionIds': ?toRegionIds,
      'vswitchId': ?vswitchId,
    };
  }

  factory EcsImagePipelineState.fromMap(Map<String, dynamic> map) {
    return EcsImagePipelineState(
      addAccounts: map['addAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['addAccounts'] as List).cast<String>()),
      baseImage: map['baseImage'] == null ? null : pulumi.Output.create<String>(map['baseImage'] as String),
      baseImageType: map['baseImageType'] == null ? null : pulumi.Output.create<String>(map['baseImageType'] as String),
      buildContent: map['buildContent'] == null ? null : pulumi.Output.create<String>(map['buildContent'] as String),
      deleteInstanceOnFailure: map['deleteInstanceOnFailure'] == null ? null : pulumi.Output.create<bool>(map['deleteInstanceOnFailure'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : pulumi.Output.create<int>(map['internetMaxBandwidthOut'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      systemDiskSize: map['systemDiskSize'] == null ? null : pulumi.Output.create<int>(map['systemDiskSize'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      toRegionIds: map['toRegionIds'] == null ? null : pulumi.Output.create<List<String>>((map['toRegionIds'] as List).cast<String>()),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

