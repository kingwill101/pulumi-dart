// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_cache_image_registry_credential.dart';

/// Input properties used for looking up and filtering ImageCache resources.
class ImageCacheState {
  /// The ID of the container group job that is used to create the image cache.
  final pulumi.Input<String>? containerGroupId;
  /// The instance ID of the Elastic IP Address (EIP). If you want to pull images from the Internet, you must specify an EIP to make sure that the container group can access the Internet. You can also configure the network address translation (NAT) gateway. We recommend that you configure the NAT gateway for the Internet access. Refer to [Public Network Access Method](https://help.aliyun.com/document_detail/99146.html)
  final pulumi.Input<String>? eipInstanceId;
  /// The name of the image cache.
  final pulumi.Input<String>? imageCacheName;
  /// The size of the image cache. Default to `20`. Unit: GiB.
  final pulumi.Input<int>? imageCacheSize;
  /// The Image Registry parameters about the image to be cached. See `image_registry_credential` below.
  final pulumi.Input<List<ImageCacheImageRegistryCredential>>? imageRegistryCredentials;
  /// The images to be cached. The image name must be versioned.
  final pulumi.Input<List<String>>? images;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The retention days of the image cache. Once the image cache expires, it will be cleared. By default, the image cache never expires. Note: The image cache that fails to be created is retained for only one day.
  final pulumi.Input<int>? retentionDays;
  /// The ID of the security group. You do not need to specify the same security group as the container group.
  final pulumi.Input<String>? securityGroupId;
  /// The status of the image cache.
  final pulumi.Input<String>? status;
  /// The ID of the VSwitch. You do not need to specify the same VSwitch as the container group.
  final pulumi.Input<String>? vswitchId;
  /// The zone id to cache image.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ImageCacheState].
  /// [containerGroupId] The ID of the container group job that is used to create the image cache.
  /// [eipInstanceId] The instance ID of the Elastic IP Address (EIP). If you want to pull images from the Internet, you must specify an EIP to make sure that the container group can access the Internet. You can also configure the network address translation (NAT) gateway. We recommend that you configure the NAT gateway for the Internet access. Refer to [Public Network Access Method](https://help.aliyun.com/document_detail/99146.html)
  /// [imageCacheName] The name of the image cache.
  /// [imageCacheSize] The size of the image cache. Default to `20`. Unit: GiB.
  /// [imageRegistryCredentials] The Image Registry parameters about the image to be cached. See `image_registry_credential` below.
  /// [images] The images to be cached. The image name must be versioned.
  /// [resourceGroupId] The ID of the resource group.
  /// [retentionDays] The retention days of the image cache. Once the image cache expires, it will be cleared. By default, the image cache never expires. Note: The image cache that fails to be created is retained for only one day.
  /// [securityGroupId] The ID of the security group. You do not need to specify the same security group as the container group.
  /// [status] The status of the image cache.
  /// [vswitchId] The ID of the VSwitch. You do not need to specify the same VSwitch as the container group.
  /// [zoneId] The zone id to cache image.
  ImageCacheState({
    pulumi.Output<String>? containerGroupId,
    pulumi.Output<String>? eipInstanceId,
    pulumi.Output<String>? imageCacheName,
    pulumi.Output<int>? imageCacheSize,
    pulumi.Output<List<ImageCacheImageRegistryCredential>>? imageRegistryCredentials,
    pulumi.Output<List<String>>? images,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? retentionDays,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      containerGroupId = pulumi.Input.asOptionalInput<String>(containerGroupId),
      eipInstanceId = pulumi.Input.asOptionalInput<String>(eipInstanceId),
      imageCacheName = pulumi.Input.asOptionalInput<String>(imageCacheName),
      imageCacheSize = pulumi.Input.asOptionalInput<int>(imageCacheSize),
      imageRegistryCredentials = pulumi.Input.asOptionalInput<List<ImageCacheImageRegistryCredential>>(imageRegistryCredentials),
      images = pulumi.Input.asOptionalInput<List<String>>(images),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupId': ?containerGroupId,
      'eipInstanceId': ?eipInstanceId,
      'imageCacheName': ?imageCacheName,
      'imageCacheSize': ?imageCacheSize,
      'imageRegistryCredentials': ?pulumi.Input.mapOptionalInputValue<List<ImageCacheImageRegistryCredential>, List<Map<String, dynamic>>>(imageRegistryCredentials, (value) => pulumi.Input.encodeList<ImageCacheImageRegistryCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'images': ?images,
      'resourceGroupId': ?resourceGroupId,
      'retentionDays': ?retentionDays,
      'securityGroupId': ?securityGroupId,
      'status': ?status,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ImageCacheState.fromMap(Map<String, dynamic> map) {
    return ImageCacheState(
      containerGroupId: map['containerGroupId'] == null ? null : pulumi.Output.create<String>(map['containerGroupId'] as String),
      eipInstanceId: map['eipInstanceId'] == null ? null : pulumi.Output.create<String>(map['eipInstanceId'] as String),
      imageCacheName: map['imageCacheName'] == null ? null : pulumi.Output.create<String>(map['imageCacheName'] as String),
      imageCacheSize: map['imageCacheSize'] == null ? null : pulumi.Output.create<int>(map['imageCacheSize'] as int),
      imageRegistryCredentials: map['imageRegistryCredentials'] == null ? null : pulumi.Output.create<List<ImageCacheImageRegistryCredential>>(pulumi.Input.decodeList<ImageCacheImageRegistryCredential>(map['imageRegistryCredentials'], (value) => ImageCacheImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))),
      images: map['images'] == null ? null : pulumi.Output.create<List<String>>((map['images'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

