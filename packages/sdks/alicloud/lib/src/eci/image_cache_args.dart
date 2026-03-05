// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_cache_image_registry_credential.dart';

/// {@template pulumi_eci_image_cache_image_cache_args_doc}
/// The set of arguments for ImageCache.
/// {@endtemplate}
/// {@macro pulumi_eci_image_cache_image_cache_args_doc}
class ImageCacheArgs {
  /// The instance ID of the Elastic IP Address (EIP). If you want to pull images from the Internet, you must specify an EIP to make sure that the container group can access the Internet. You can also configure the network address translation (NAT) gateway. We recommend that you configure the NAT gateway for the Internet access. Refer to [Public Network Access Method](https://help.aliyun.com/document_detail/99146.html)
  final pulumi.Input<String>? eipInstanceId;
  /// The name of the image cache.
  final pulumi.Input<String> imageCacheName;
  /// The size of the image cache. Default to `20`. Unit: GiB.
  final pulumi.Input<int>? imageCacheSize;
  /// The Image Registry parameters about the image to be cached. See `image_registry_credential` below.
  final pulumi.Input<List<ImageCacheImageRegistryCredential>>? imageRegistryCredentials;
  /// The images to be cached. The image name must be versioned.
  final pulumi.Input<List<String>> images;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The retention days of the image cache. Once the image cache expires, it will be cleared. By default, the image cache never expires. Note: The image cache that fails to be created is retained for only one day.
  final pulumi.Input<int>? retentionDays;
  /// The ID of the security group. You do not need to specify the same security group as the container group.
  final pulumi.Input<String> securityGroupId;
  /// The ID of the VSwitch. You do not need to specify the same VSwitch as the container group.
  final pulumi.Input<String> vswitchId;
  /// The zone id to cache image.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ImageCacheArgs].
  /// [eipInstanceId] The instance ID of the Elastic IP Address (EIP). If you want to pull images from the Internet, you must specify an EIP to make sure that the container group can access the Internet. You can also configure the network address translation (NAT) gateway. We recommend that you configure the NAT gateway for the Internet access. Refer to [Public Network Access Method](https://help.aliyun.com/document_detail/99146.html)
  /// [imageCacheName] The name of the image cache.
  /// [imageCacheSize] The size of the image cache. Default to `20`. Unit: GiB.
  /// [imageRegistryCredentials] The Image Registry parameters about the image to be cached. See `image_registry_credential` below.
  /// [images] The images to be cached. The image name must be versioned.
  /// [resourceGroupId] The ID of the resource group.
  /// [retentionDays] The retention days of the image cache. Once the image cache expires, it will be cleared. By default, the image cache never expires. Note: The image cache that fails to be created is retained for only one day.
  /// [securityGroupId] The ID of the security group. You do not need to specify the same security group as the container group.
  /// [vswitchId] The ID of the VSwitch. You do not need to specify the same VSwitch as the container group.
  /// [zoneId] The zone id to cache image.
  ImageCacheArgs({
    this.eipInstanceId,
    required this.imageCacheName,
    this.imageCacheSize,
    this.imageRegistryCredentials,
    required this.images,
    this.resourceGroupId,
    this.retentionDays,
    required this.securityGroupId,
    required this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eipInstanceId': ?eipInstanceId,
      'imageCacheName': imageCacheName,
      'imageCacheSize': ?imageCacheSize,
      'imageRegistryCredentials': ?pulumi.Input.mapOptionalInputValue<List<ImageCacheImageRegistryCredential>, List<Map<String, dynamic>>>(imageRegistryCredentials, (value) => pulumi.Input.encodeList<ImageCacheImageRegistryCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'images': images,
      'resourceGroupId': ?resourceGroupId,
      'retentionDays': ?retentionDays,
      'securityGroupId': securityGroupId,
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ImageCacheArgs.fromMap(Map<String, dynamic> map) {
    return ImageCacheArgs(
      eipInstanceId: (() { final guardedValue = map['eipInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageCacheName: pulumi.Input.fromValue(map['imageCacheName'] as String),
      imageCacheSize: (() { final guardedValue = map['imageCacheSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      imageRegistryCredentials: (() { final guardedValue = map['imageRegistryCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageCacheImageRegistryCredential>(guardedValue, (value) => ImageCacheImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      images: pulumi.Input.fromValue((map['images'] as List).cast<String>()),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

