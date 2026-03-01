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
    pulumi.Output<String>? containerGroupId,
    pulumi.Output<String>? eipInstanceId,
    pulumi.Output<String>? imageCacheName,
    pulumi.Output<int>? imageCacheSize,
    pulumi.Output<List<OpenApiImageCacheImageRegistryCredential>>? imageRegistryCredentials,
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
      imageRegistryCredentials = pulumi.Input.asOptionalInput<List<OpenApiImageCacheImageRegistryCredential>>(imageRegistryCredentials),
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
      containerGroupId: map['containerGroupId'] == null ? null : pulumi.Output.create<String>(map['containerGroupId'] as String),
      eipInstanceId: map['eipInstanceId'] == null ? null : pulumi.Output.create<String>(map['eipInstanceId'] as String),
      imageCacheName: map['imageCacheName'] == null ? null : pulumi.Output.create<String>(map['imageCacheName'] as String),
      imageCacheSize: map['imageCacheSize'] == null ? null : pulumi.Output.create<int>(map['imageCacheSize'] as int),
      imageRegistryCredentials: map['imageRegistryCredentials'] == null ? null : pulumi.Output.create<List<OpenApiImageCacheImageRegistryCredential>>(pulumi.Input.decodeList<OpenApiImageCacheImageRegistryCredential>(map['imageRegistryCredentials'], (value) => OpenApiImageCacheImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))),
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

