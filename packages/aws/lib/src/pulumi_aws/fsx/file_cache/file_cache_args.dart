// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../file_cache_data_repository_association/file_cache_data_repository_association.dart';
import '../file_cache_lustre_configuration/file_cache_lustre_configuration.dart';

/// The set of arguments for FileCache.
class FileCacheArgs {
  /// A boolean flag indicating whether tags for the cache should be copied to data repository associations. This value defaults to false.
  final Input<bool>? copyTagsToDataRepositoryAssociations;

  /// See the `data_repository_association` configuration block. Max of 8.
  /// A list of up to 8 configurations for data repository associations (DRAs) to be created during the cache creation. The DRAs link the cache to either an Amazon S3 data repository or a Network File System (NFS) data repository that supports the NFSv3 protocol. The DRA configurations must meet the following requirements: 1) All configurations on the list must be of the same data repository type, either all S3 or all NFS. A cache can't link to different data repository types at the same time. 2) An NFS DRA must link to an NFS file system that supports the NFSv3 protocol. DRA automatic import and automatic export is not supported.
  final Input<List<FileCacheDataRepositoryAssociation>>?
      dataRepositoryAssociations;

  /// The type of cache that you're creating. The only supported value is `LUSTRE`.
  final Input<String> fileCacheType;

  /// The version for the type of cache that you're creating. The only supported value is `2.12`.
  final Input<String> fileCacheTypeVersion;

  /// Specifies the ID of the AWS Key Management Service (AWS KMS) key to use for encrypting data on an Amazon File Cache. If a KmsKeyId isn't specified, the Amazon FSx-managed AWS KMS key for your account is used.
  final Input<String>? kmsKeyId;

  /// See the `lustre_configuration` block. Required when `file_cache_type` is `LUSTRE`.
  final Input<List<FileCacheLustreConfiguration>>? lustreConfigurations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A list of IDs specifying the security groups to apply to all network interfaces created for Amazon File Cache access.
  final Input<List<String>>? securityGroupIds;

  /// The storage capacity of the cache in gibibytes (GiB). Valid values are `1200` GiB, `2400` GiB, and increments of `2400` GiB.
  final Input<int> storageCapacity;

  /// A list of subnet IDs that the cache will be accessible from. You can specify only one subnet ID.
  ///
  /// The following arguments are optional:
  final Input<List<String>> subnetIds;

  /// A map of tags to assign to the file cache. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  FileCacheArgs({
    this.copyTagsToDataRepositoryAssociations,
    this.dataRepositoryAssociations,
    required this.fileCacheType,
    required this.fileCacheTypeVersion,
    this.kmsKeyId,
    this.lustreConfigurations,
    this.region,
    this.securityGroupIds,
    required this.storageCapacity,
    required this.subnetIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final copyTagsToDataRepositoryAssociationsValue =
        copyTagsToDataRepositoryAssociations;
    if (copyTagsToDataRepositoryAssociationsValue != null) {
      map['copyTagsToDataRepositoryAssociations'] =
          copyTagsToDataRepositoryAssociationsValue;
    }
    final dataRepositoryAssociationsValue = dataRepositoryAssociations;
    if (dataRepositoryAssociationsValue != null) {
      map['dataRepositoryAssociations'] = Input.mapOptionalInputValue<
              List<FileCacheDataRepositoryAssociation>,
              List<Map<String, dynamic>>>(
          dataRepositoryAssociationsValue,
          (value) => Input.encodeList<FileCacheDataRepositoryAssociation,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['fileCacheType'] = fileCacheType;
    map['fileCacheTypeVersion'] = fileCacheTypeVersion;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final lustreConfigurationsValue = lustreConfigurations;
    if (lustreConfigurationsValue != null) {
      map['lustreConfigurations'] = Input.mapOptionalInputValue<
              List<FileCacheLustreConfiguration>, List<Map<String, dynamic>>>(
          lustreConfigurationsValue,
          (value) => Input.encodeList<FileCacheLustreConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['storageCapacity'] = storageCapacity;
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FileCacheArgs.fromMap(Map<String, dynamic> map) {
    return FileCacheArgs(
      copyTagsToDataRepositoryAssociations: Input.asOptionalInput<bool>(
          map['copyTagsToDataRepositoryAssociations']),
      dataRepositoryAssociations:
          Input.asOptionalInput<List<FileCacheDataRepositoryAssociation>>(
              map['dataRepositoryAssociations']),
      fileCacheType: Input.asInput<String>(map['fileCacheType']),
      fileCacheTypeVersion: Input.asInput<String>(map['fileCacheTypeVersion']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      lustreConfigurations:
          Input.asOptionalInput<List<FileCacheLustreConfiguration>>(
              map['lustreConfigurations']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      storageCapacity: Input.asInput<int>(map['storageCapacity']),
      subnetIds: Input.asInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
