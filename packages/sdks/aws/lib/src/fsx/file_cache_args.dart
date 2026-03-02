// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_cache_data_repository_association.dart';
import 'file_cache_lustre_configuration.dart';

/// {@template pulumi_fsx_file_cache_file_cache_args_doc}
/// The set of arguments for FileCache.
/// {@endtemplate}
/// {@macro pulumi_fsx_file_cache_file_cache_args_doc}
class FileCacheArgs {
  /// A boolean flag indicating whether tags for the cache should be copied to data repository associations. This value defaults to false.
  final pulumi.Input<bool>? copyTagsToDataRepositoryAssociations;
  /// See the `data_repository_association` configuration block. Max of 8.
  /// A list of up to 8 configurations for data repository associations (DRAs) to be created during the cache creation. The DRAs link the cache to either an Amazon S3 data repository or a Network File System (NFS) data repository that supports the NFSv3 protocol. The DRA configurations must meet the following requirements: 1) All configurations on the list must be of the same data repository type, either all S3 or all NFS. A cache can't link to different data repository types at the same time. 2) An NFS DRA must link to an NFS file system that supports the NFSv3 protocol. DRA automatic import and automatic export is not supported.
  final pulumi.Input<List<FileCacheDataRepositoryAssociation>>? dataRepositoryAssociations;
  /// The type of cache that you're creating. The only supported value is `LUSTRE`.
  final pulumi.Input<String> fileCacheType;
  /// The version for the type of cache that you're creating. The only supported value is `2.12`.
  final pulumi.Input<String> fileCacheTypeVersion;
  /// Specifies the ID of the AWS Key Management Service (AWS KMS) key to use for encrypting data on an Amazon File Cache. If a KmsKeyId isn't specified, the Amazon FSx-managed AWS KMS key for your account is used.
  final pulumi.Input<String>? kmsKeyId;
  /// See the `lustre_configuration` block. Required when `file_cache_type` is `LUSTRE`.
  final pulumi.Input<List<FileCacheLustreConfiguration>>? lustreConfigurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of IDs specifying the security groups to apply to all network interfaces created for Amazon File Cache access.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The storage capacity of the cache in gibibytes (GiB). Valid values are `1200` GiB, `2400` GiB, and increments of `2400` GiB.
  final pulumi.Input<int> storageCapacity;
  /// A list of subnet IDs that the cache will be accessible from. You can specify only one subnet ID.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> subnetIds;
  /// A map of tags to assign to the file cache. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FileCacheArgs].
  /// [copyTagsToDataRepositoryAssociations] A boolean flag indicating whether tags for the cache should be copied to data repository associations. This value defaults to false.
  /// [dataRepositoryAssociations] See the `data_repository_association` configuration block. Max of 8.
  /// [fileCacheType] The type of cache that you're creating. The only supported value is `LUSTRE`.
  /// [fileCacheTypeVersion] The version for the type of cache that you're creating. The only supported value is `2.12`.
  /// [kmsKeyId] Specifies the ID of the AWS Key Management Service (AWS KMS) key to use for encrypting data on an Amazon File Cache. If a KmsKeyId isn't specified, the Amazon FSx-managed AWS KMS key for your account is used.
  /// [lustreConfigurations] See the `lustre_configuration` block. Required when `file_cache_type` is `LUSTRE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] A list of IDs specifying the security groups to apply to all network interfaces created for Amazon File Cache access.
  /// [storageCapacity] The storage capacity of the cache in gibibytes (GiB). Valid values are `1200` GiB, `2400` GiB, and increments of `2400` GiB.
  /// [subnetIds] A list of subnet IDs that the cache will be accessible from. You can specify only one subnet ID.
  /// [tags] A map of tags to assign to the file cache. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
    return <String, dynamic>{
      'copyTagsToDataRepositoryAssociations': ?copyTagsToDataRepositoryAssociations,
      'dataRepositoryAssociations': ?pulumi.Input.mapOptionalInputValue<List<FileCacheDataRepositoryAssociation>, List<Map<String, dynamic>>>(dataRepositoryAssociations, (value) => pulumi.Input.encodeList<FileCacheDataRepositoryAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileCacheType': fileCacheType,
      'fileCacheTypeVersion': fileCacheTypeVersion,
      'kmsKeyId': ?kmsKeyId,
      'lustreConfigurations': ?pulumi.Input.mapOptionalInputValue<List<FileCacheLustreConfiguration>, List<Map<String, dynamic>>>(lustreConfigurations, (value) => pulumi.Input.encodeList<FileCacheLustreConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'storageCapacity': storageCapacity,
      'subnetIds': subnetIds,
      'tags': ?tags,
    };
  }

  factory FileCacheArgs.fromMap(Map<String, dynamic> map) {
    return FileCacheArgs(
      copyTagsToDataRepositoryAssociations: map['copyTagsToDataRepositoryAssociations'] == null ? null : (map['copyTagsToDataRepositoryAssociations'] as bool).input(),
      dataRepositoryAssociations: map['dataRepositoryAssociations'] == null ? null : (pulumi.Input.decodeList<FileCacheDataRepositoryAssociation>(map['dataRepositoryAssociations'], (value) => FileCacheDataRepositoryAssociation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fileCacheType: (map['fileCacheType'] as String).input(),
      fileCacheTypeVersion: (map['fileCacheTypeVersion'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      lustreConfigurations: map['lustreConfigurations'] == null ? null : (pulumi.Input.decodeList<FileCacheLustreConfiguration>(map['lustreConfigurations'], (value) => FileCacheLustreConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      storageCapacity: (map['storageCapacity'] as int).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

