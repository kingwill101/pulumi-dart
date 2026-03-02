// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_api_image_cache_image_registry_credential.dart';

/// Input properties used for looking up and filtering OpenApiImageCache resources.
class OpenApiImageCacheState {
  final pulumi.Input<String>? containerGroupId;
  final pulumi.Input<String>? eipInstanceId;
  final pulumi.Input<String>? imageCacheName;
  final pulumi.Input<int>? imageCacheSize;
  final pulumi.Input<List<OpenApiImageCacheImageRegistryCredential>>? imageRegistryCredentials;
  final pulumi.Input<List<String>>? images;
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<int>? retentionDays;
  final pulumi.Input<String>? securityGroupId;
  final pulumi.Input<String>? status;
  final pulumi.Input<String>? vswitchId;
  final pulumi.Input<String>? zoneId;

  /// Creates a new [OpenApiImageCacheState].
  /// [containerGroupId] Optional.
  /// [eipInstanceId] Optional.
  /// [imageCacheName] Optional.
  /// [imageCacheSize] Optional.
  /// [imageRegistryCredentials] Optional.
  /// [images] Optional.
  /// [resourceGroupId] Optional.
  /// [retentionDays] Optional.
  /// [securityGroupId] Optional.
  /// [status] Optional.
  /// [vswitchId] Optional.
  /// [zoneId] Optional.
  OpenApiImageCacheState({
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
      'imageRegistryCredentials': ?pulumi.Input.mapOptionalInputValue<List<OpenApiImageCacheImageRegistryCredential>, List<Map<String, dynamic>>>(imageRegistryCredentials, (value) => pulumi.Input.encodeList<OpenApiImageCacheImageRegistryCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'images': ?images,
      'resourceGroupId': ?resourceGroupId,
      'retentionDays': ?retentionDays,
      'securityGroupId': ?securityGroupId,
      'status': ?status,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory OpenApiImageCacheState.fromMap(Map<String, dynamic> map) {
    return OpenApiImageCacheState(
      containerGroupId: map['containerGroupId'] == null ? null : (map['containerGroupId'] as String).input(),
      eipInstanceId: map['eipInstanceId'] == null ? null : (map['eipInstanceId'] as String).input(),
      imageCacheName: map['imageCacheName'] == null ? null : (map['imageCacheName'] as String).input(),
      imageCacheSize: map['imageCacheSize'] == null ? null : (map['imageCacheSize'] as int).input(),
      imageRegistryCredentials: map['imageRegistryCredentials'] == null ? null : (pulumi.Input.decodeList<OpenApiImageCacheImageRegistryCredential>(map['imageRegistryCredentials'], (value) => OpenApiImageCacheImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))).input(),
      images: map['images'] == null ? null : ((map['images'] as List).cast<String>()).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays'] as int).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

