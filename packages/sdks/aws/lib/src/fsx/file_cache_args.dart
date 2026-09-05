// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_cache_data_repository_association.dart';
import 'file_cache_lustre_configuration.dart';

/// {@template pulumi_fsx_file_cache_file_cache_args_doc}
/// The set of arguments for FileCache.
/// {@endtemplate}
/// {@macro pulumi_fsx_file_cache_file_cache_args_doc}
class FileCacheArgs {
  /// Whether to copy tags for the cache to data repository associations. Defaults to `false`.
  final pulumi.Input<bool?>? copyTagsToDataRepositoryAssociations;
  /// Configurations for up to 8 data repository associations (DRAs) to create during cache creation. All configurations must be of the same data repository type, either all S3 or all NFS. Maximum of 8. See `dataRepositoryAssociation` Block below.
  final pulumi.Input<List<FileCacheDataRepositoryAssociation>?>? dataRepositoryAssociations;
  /// Type of cache to create. The only supported value is `LUSTRE`.
  final pulumi.Input<String> fileCacheType;
  /// Version for the type of cache to create. The only supported value is `2.12`.
  final pulumi.Input<String> fileCacheTypeVersion;
  /// ID of the KMS key to use for encrypting data on the cache. Defaults to the Amazon FSx-managed KMS key for your account.
  final pulumi.Input<String?>? kmsKeyId;
  /// Configuration for the Lustre cache. Required when `fileCacheType` is `LUSTRE`. See `lustreConfiguration` Block below.
  final pulumi.Input<List<FileCacheLustreConfiguration>?>? lustreConfigurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// IDs of the security groups to apply to all network interfaces created for cache access.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// Storage capacity of the cache in gibibytes (GiB). Valid values are `1200` GiB, `2400` GiB, and increments of `2400` GiB.
  final pulumi.Input<int> storageCapacity;
  /// Subnet IDs that the cache is accessible from. You can specify only one subnet ID.
  final pulumi.Input<List<String>> subnetIds;
  /// Map of tags to assign to the file cache. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FileCacheArgs].
  /// [copyTagsToDataRepositoryAssociations] Whether to copy tags for the cache to data repository associations. Defaults to `false`.
  /// [dataRepositoryAssociations] Configurations for up to 8 data repository associations (DRAs) to create during cache creation. All configurations must be of the same data repository type, either all S3 or all NFS. Maximum of 8. See `dataRepositoryAssociation` Block below.
  /// [fileCacheType] Type of cache to create. The only supported value is `LUSTRE`.
  /// [fileCacheTypeVersion] Version for the type of cache to create. The only supported value is `2.12`.
  /// [kmsKeyId] ID of the KMS key to use for encrypting data on the cache. Defaults to the Amazon FSx-managed KMS key for your account.
  /// [lustreConfigurations] Configuration for the Lustre cache. Required when `fileCacheType` is `LUSTRE`. See `lustreConfiguration` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] IDs of the security groups to apply to all network interfaces created for cache access.
  /// [storageCapacity] Storage capacity of the cache in gibibytes (GiB). Valid values are `1200` GiB, `2400` GiB, and increments of `2400` GiB.
  /// [subnetIds] Subnet IDs that the cache is accessible from. You can specify only one subnet ID.
  /// [tags] Map of tags to assign to the file cache. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const FileCacheArgs({
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
      copyTagsToDataRepositoryAssociations: (() { final guardedValue = map['copyTagsToDataRepositoryAssociations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataRepositoryAssociations: (() { final guardedValue = map['dataRepositoryAssociations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileCacheDataRepositoryAssociation>(guardedValue, (value) => FileCacheDataRepositoryAssociation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fileCacheType: pulumi.Input.fromValue(map['fileCacheType'] as String),
      fileCacheTypeVersion: pulumi.Input.fromValue(map['fileCacheTypeVersion'] as String),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lustreConfigurations: (() { final guardedValue = map['lustreConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileCacheLustreConfiguration>(guardedValue, (value) => FileCacheLustreConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      storageCapacity: pulumi.Input.fromValue((map['storageCapacity'] as num).toInt()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
