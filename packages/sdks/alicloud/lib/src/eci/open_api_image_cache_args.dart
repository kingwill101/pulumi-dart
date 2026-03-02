// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_api_image_cache_image_registry_credential.dart';

/// {@template pulumi_eci_open_api_image_cache_open_api_image_cache_args_doc}
/// The set of arguments for OpenApiImageCache.
/// {@endtemplate}
/// {@macro pulumi_eci_open_api_image_cache_open_api_image_cache_args_doc}
class OpenApiImageCacheArgs {
  final pulumi.Input<String>? eipInstanceId;
  final pulumi.Input<String> imageCacheName;
  final pulumi.Input<int>? imageCacheSize;
  final pulumi.Input<List<OpenApiImageCacheImageRegistryCredential>>? imageRegistryCredentials;
  final pulumi.Input<List<String>> images;
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<int>? retentionDays;
  final pulumi.Input<String> securityGroupId;
  final pulumi.Input<String> vswitchId;
  final pulumi.Input<String>? zoneId;

  /// Creates a new [OpenApiImageCacheArgs].
  /// [eipInstanceId] Optional.
  /// [imageCacheName] Required.
  /// [imageCacheSize] Optional.
  /// [imageRegistryCredentials] Optional.
  /// [images] Required.
  /// [resourceGroupId] Optional.
  /// [retentionDays] Optional.
  /// [securityGroupId] Required.
  /// [vswitchId] Required.
  /// [zoneId] Optional.
  OpenApiImageCacheArgs({
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
      'imageRegistryCredentials': ?pulumi.Input.mapOptionalInputValue<List<OpenApiImageCacheImageRegistryCredential>, List<Map<String, dynamic>>>(imageRegistryCredentials, (value) => pulumi.Input.encodeList<OpenApiImageCacheImageRegistryCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'images': images,
      'resourceGroupId': ?resourceGroupId,
      'retentionDays': ?retentionDays,
      'securityGroupId': securityGroupId,
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory OpenApiImageCacheArgs.fromMap(Map<String, dynamic> map) {
    return OpenApiImageCacheArgs(
      eipInstanceId: map['eipInstanceId'] == null ? null : (map['eipInstanceId']! as String).input(),
      imageCacheName: (map['imageCacheName'] as String).input(),
      imageCacheSize: map['imageCacheSize'] == null ? null : (map['imageCacheSize']! as int).input(),
      imageRegistryCredentials: map['imageRegistryCredentials'] == null ? null : (pulumi.Input.decodeList<OpenApiImageCacheImageRegistryCredential>(map['imageRegistryCredentials']!, (value) => OpenApiImageCacheImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))).input(),
      images: ((map['images'] as List).cast<String>()).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays']! as int).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

