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
    pulumi.Output<String>? eipInstanceId,
    required pulumi.Output<String> imageCacheName,
    pulumi.Output<int>? imageCacheSize,
    pulumi.Output<List<OpenApiImageCacheImageRegistryCredential>>? imageRegistryCredentials,
    required pulumi.Output<List<String>> images,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? retentionDays,
    required pulumi.Output<String> securityGroupId,
    required pulumi.Output<String> vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      eipInstanceId = pulumi.Input.asOptionalInput<String>(eipInstanceId),
      imageCacheName = pulumi.Input.asInput<String>(imageCacheName),
      imageCacheSize = pulumi.Input.asOptionalInput<int>(imageCacheSize),
      imageRegistryCredentials = pulumi.Input.asOptionalInput<List<OpenApiImageCacheImageRegistryCredential>>(imageRegistryCredentials),
      images = pulumi.Input.asInput<List<String>>(images),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      securityGroupId = pulumi.Input.asInput<String>(securityGroupId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      eipInstanceId: map['eipInstanceId'] == null ? null : pulumi.Output.create<String>(map['eipInstanceId'] as String),
      imageCacheName: pulumi.Output.create<String>(map['imageCacheName'] as String),
      imageCacheSize: map['imageCacheSize'] == null ? null : pulumi.Output.create<int>(map['imageCacheSize'] as int),
      imageRegistryCredentials: map['imageRegistryCredentials'] == null ? null : pulumi.Output.create<List<OpenApiImageCacheImageRegistryCredential>>(pulumi.Input.decodeList<OpenApiImageCacheImageRegistryCredential>(map['imageRegistryCredentials'], (value) => OpenApiImageCacheImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))),
      images: pulumi.Output.create<List<String>>((map['images'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      securityGroupId: pulumi.Output.create<String>(map['securityGroupId'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

