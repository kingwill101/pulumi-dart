// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../file_cache_data_repository_association/file_cache_data_repository_association.dart';
import '../file_cache_lustre_configuration/file_cache_lustre_configuration.dart';

/// The set of arguments for FileCache.
class FileCacheArgs {
  /// A boolean flag indicating whether tags for the cache should be copied to data repository associations. This value defaults to false.
  final Input<bool>? copyTagsToDataRepositoryAssociations;

  /// See the <span pulumi-lang-nodejs="`dataRepositoryAssociation`" pulumi-lang-dotnet="`DataRepositoryAssociation`" pulumi-lang-go="`dataRepositoryAssociation`" pulumi-lang-python="`data_repository_association`" pulumi-lang-yaml="`dataRepositoryAssociation`" pulumi-lang-java="`dataRepositoryAssociation`">`data_repository_association`</span> configuration block. Max of 8.
  /// A list of up to 8 configurations for data repository associations (DRAs) to be created during the cache creation. The DRAs link the cache to either an Amazon S3 data repository or a Network File System (NFS) data repository that supports the NFSv3 protocol. The DRA configurations must meet the following requirements: 1) All configurations on the list must be of the same data repository type, either all S3 or all NFS. A cache can't link to different data repository types at the same time. 2) An NFS DRA must link to an NFS file system that supports the NFSv3 protocol. DRA automatic import and automatic export is not supported.
  final Input<List<FileCacheDataRepositoryAssociation>>?
      dataRepositoryAssociations;

  /// The type of cache that you're creating. The only supported value is `LUSTRE`.
  final Input<String> fileCacheType;

  /// The version for the type of cache that you're creating. The only supported value is `2.12`.
  final Input<String> fileCacheTypeVersion;

  /// Specifies the ID of the AWS Key Management Service (AWS KMS) key to use for encrypting data on an Amazon File Cache. If a KmsKeyId isn't specified, the Amazon FSx-managed AWS KMS key for your account is used.
  final Input<String>? kmsKeyId;

  /// See the <span pulumi-lang-nodejs="`lustreConfiguration`" pulumi-lang-dotnet="`LustreConfiguration`" pulumi-lang-go="`lustreConfiguration`" pulumi-lang-python="`lustre_configuration`" pulumi-lang-yaml="`lustreConfiguration`" pulumi-lang-java="`lustreConfiguration`">`lustre_configuration`</span> block. Required when <span pulumi-lang-nodejs="`fileCacheType`" pulumi-lang-dotnet="`FileCacheType`" pulumi-lang-go="`fileCacheType`" pulumi-lang-python="`file_cache_type`" pulumi-lang-yaml="`fileCacheType`" pulumi-lang-java="`fileCacheType`">`file_cache_type`</span> is `LUSTRE`.
  final Input<List<FileCacheLustreConfiguration>>? lustreConfigurations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A list of IDs specifying the security groups to apply to all network interfaces created for Amazon File Cache access.
  final Input<List<String>>? securityGroupIds;

  /// The storage capacity of the cache in gibibytes (GiB). Valid values are <span pulumi-lang-nodejs="`1200`" pulumi-lang-dotnet="`1200`" pulumi-lang-go="`1200`" pulumi-lang-python="`1200`" pulumi-lang-yaml="`1200`" pulumi-lang-java="`1200`">`1200`</span> GiB, <span pulumi-lang-nodejs="`2400`" pulumi-lang-dotnet="`2400`" pulumi-lang-go="`2400`" pulumi-lang-python="`2400`" pulumi-lang-yaml="`2400`" pulumi-lang-java="`2400`">`2400`</span> GiB, and increments of <span pulumi-lang-nodejs="`2400`" pulumi-lang-dotnet="`2400`" pulumi-lang-go="`2400`" pulumi-lang-python="`2400`" pulumi-lang-yaml="`2400`" pulumi-lang-java="`2400`">`2400`</span> GiB.
  final Input<int> storageCapacity;

  /// A list of subnet IDs that the cache will be accessible from. You can specify only one subnet ID.
  ///
  /// The following arguments are optional:
  final Input<List<String>> subnetIds;

  /// A map of tags to assign to the file cache. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
