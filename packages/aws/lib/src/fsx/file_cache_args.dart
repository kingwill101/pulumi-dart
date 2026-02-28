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
  final pulumi.Input<List<FileCacheDataRepositoryAssociation>>?
      dataRepositoryAssociations;

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
    bool? copyTagsToDataRepositoryAssociations,
    List<FileCacheDataRepositoryAssociation>? dataRepositoryAssociations,
    required String fileCacheType,
    required String fileCacheTypeVersion,
    String? kmsKeyId,
    List<FileCacheLustreConfiguration>? lustreConfigurations,
    String? region,
    List<String>? securityGroupIds,
    required int storageCapacity,
    required List<String> subnetIds,
    Map<String, String>? tags,
  })  : copyTagsToDataRepositoryAssociations =
            pulumi.Input.asOptionalInput<bool>(
                copyTagsToDataRepositoryAssociations),
        dataRepositoryAssociations = pulumi.Input.asOptionalInput<
                List<FileCacheDataRepositoryAssociation>>(
            dataRepositoryAssociations),
        fileCacheType = pulumi.Input.asInput<String>(fileCacheType),
        fileCacheTypeVersion =
            pulumi.Input.asInput<String>(fileCacheTypeVersion),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        lustreConfigurations =
            pulumi.Input.asOptionalInput<List<FileCacheLustreConfiguration>>(
                lustreConfigurations),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
        storageCapacity = pulumi.Input.asInput<int>(storageCapacity),
        subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      map['dataRepositoryAssociations'] = pulumi.Input.mapOptionalInputValue<
              List<FileCacheDataRepositoryAssociation>,
              List<Map<String, dynamic>>>(
          dataRepositoryAssociationsValue,
          (value) => pulumi.Input.encodeList<FileCacheDataRepositoryAssociation,
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
      map['lustreConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<FileCacheLustreConfiguration>, List<Map<String, dynamic>>>(
          lustreConfigurationsValue,
          (value) => pulumi.Input.encodeList<FileCacheLustreConfiguration,
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
      copyTagsToDataRepositoryAssociations:
          map['copyTagsToDataRepositoryAssociations'] == null
              ? null
              : map['copyTagsToDataRepositoryAssociations'] as bool,
      dataRepositoryAssociations: map['dataRepositoryAssociations'] == null
          ? null
          : pulumi.Input.decodeList<FileCacheDataRepositoryAssociation>(
              map['dataRepositoryAssociations'],
              (value) => FileCacheDataRepositoryAssociation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fileCacheType: map['fileCacheType'] as String,
      fileCacheTypeVersion: map['fileCacheTypeVersion'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      lustreConfigurations: map['lustreConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<FileCacheLustreConfiguration>(
              map['lustreConfigurations'],
              (value) => FileCacheLustreConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      storageCapacity: map['storageCapacity'] as int,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
