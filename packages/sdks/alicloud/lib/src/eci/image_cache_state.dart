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
  const ImageCacheState({
    this.containerGroupId,
    this.eipInstanceId,
    this.imageCacheName,
    this.imageCacheSize,
    this.imageRegistryCredentials,
    this.images,
    this.resourceGroupId,
    this.retentionDays,
    this.securityGroupId,
    this.status,
    this.vswitchId,
    this.zoneId,
  });

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
      containerGroupId: (() { final guardedValue = map['containerGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eipInstanceId: (() { final guardedValue = map['eipInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageCacheName: (() { final guardedValue = map['imageCacheName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageCacheSize: (() { final guardedValue = map['imageCacheSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      imageRegistryCredentials: (() { final guardedValue = map['imageRegistryCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageCacheImageRegistryCredential>(guardedValue, (value) => ImageCacheImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

