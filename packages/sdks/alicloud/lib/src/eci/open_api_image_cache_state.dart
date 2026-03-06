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
  const OpenApiImageCacheState({
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
      containerGroupId: (() { final guardedValue = map['containerGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eipInstanceId: (() { final guardedValue = map['eipInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageCacheName: (() { final guardedValue = map['imageCacheName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageCacheSize: (() { final guardedValue = map['imageCacheSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      imageRegistryCredentials: (() { final guardedValue = map['imageRegistryCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenApiImageCacheImageRegistryCredential>(guardedValue, (value) => OpenApiImageCacheImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
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

