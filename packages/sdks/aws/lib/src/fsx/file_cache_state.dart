// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_cache_data_repository_association.dart';
import 'file_cache_lustre_configuration.dart';

/// Input properties used for looking up and filtering FileCache resources.
class FileCacheState {
  /// Amazon Resource Name (ARN) of the cache.
  final pulumi.Input<String>? arn;
  /// Whether to copy tags for the cache to data repository associations. Defaults to `false`.
  final pulumi.Input<bool>? copyTagsToDataRepositoryAssociations;
  /// IDs of data repository associations that are associated with the cache.
  final pulumi.Input<List<String>>? dataRepositoryAssociationIds;
  /// Configurations for up to 8 data repository associations (DRAs) to create during cache creation. All configurations must be of the same data repository type, either all S3 or all NFS. Maximum of 8. See `dataRepositoryAssociation` Block below.
  final pulumi.Input<List<FileCacheDataRepositoryAssociation>>? dataRepositoryAssociations;
  /// Domain Name System (DNS) name for the cache.
  final pulumi.Input<String>? dnsName;
  /// System-generated, unique ID of the cache.
  final pulumi.Input<String>? fileCacheId;
  /// Type of cache to create. The only supported value is `LUSTRE`.
  final pulumi.Input<String>? fileCacheType;
  /// Version for the type of cache to create. The only supported value is `2.12`.
  final pulumi.Input<String>? fileCacheTypeVersion;
  /// ID of the AWS Key Management Service (KMS) key to use for encrypting data on the cache. Defaults to the Amazon FSx-managed KMS key for your account.
  final pulumi.Input<String>? kmsKeyId;
  /// Configuration for the Lustre cache. Required when `fileCacheType` is `LUSTRE`. See `lustreConfiguration` Block below.
  final pulumi.Input<List<FileCacheLustreConfiguration>>? lustreConfigurations;
  /// IDs of the network interfaces.
  final pulumi.Input<List<String>>? networkInterfaceIds;
  /// AWS account that created the cache.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// IDs of the security groups to apply to all network interfaces created for cache access.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Storage capacity of the cache in gibibytes (GiB). Valid values are `1200` GiB, `2400` GiB, and increments of `2400` GiB.
  final pulumi.Input<int>? storageCapacity;
  /// Subnet IDs that the cache is accessible from. You can specify only one subnet ID.
  final pulumi.Input<List<String>>? subnetIds;
  /// Map of tags to assign to the file cache. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ID of your virtual private cloud (VPC).
  final pulumi.Input<String>? vpcId;

  /// Creates a new [FileCacheState].
  /// [arn] Amazon Resource Name (ARN) of the cache.
  /// [copyTagsToDataRepositoryAssociations] Whether to copy tags for the cache to data repository associations. Defaults to `false`.
  /// [dataRepositoryAssociationIds] IDs of data repository associations that are associated with the cache.
  /// [dataRepositoryAssociations] Configurations for up to 8 data repository associations (DRAs) to create during cache creation. All configurations must be of the same data repository type, either all S3 or all NFS. Maximum of 8. See `dataRepositoryAssociation` Block below.
  /// [dnsName] Domain Name System (DNS) name for the cache.
  /// [fileCacheId] System-generated, unique ID of the cache.
  /// [fileCacheType] Type of cache to create. The only supported value is `LUSTRE`.
  /// [fileCacheTypeVersion] Version for the type of cache to create. The only supported value is `2.12`.
  /// [kmsKeyId] ID of the AWS Key Management Service (KMS) key to use for encrypting data on the cache. Defaults to the Amazon FSx-managed KMS key for your account.
  /// [lustreConfigurations] Configuration for the Lustre cache. Required when `fileCacheType` is `LUSTRE`. See `lustreConfiguration` Block below.
  /// [networkInterfaceIds] IDs of the network interfaces.
  /// [ownerId] AWS account that created the cache.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] IDs of the security groups to apply to all network interfaces created for cache access.
  /// [storageCapacity] Storage capacity of the cache in gibibytes (GiB). Valid values are `1200` GiB, `2400` GiB, and increments of `2400` GiB.
  /// [subnetIds] Subnet IDs that the cache is accessible from. You can specify only one subnet ID.
  /// [tags] Map of tags to assign to the file cache. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [vpcId] ID of your virtual private cloud (VPC).
  const FileCacheState({
    this.arn,
    this.copyTagsToDataRepositoryAssociations,
    this.dataRepositoryAssociationIds,
    this.dataRepositoryAssociations,
    this.dnsName,
    this.fileCacheId,
    this.fileCacheType,
    this.fileCacheTypeVersion,
    this.kmsKeyId,
    this.lustreConfigurations,
    this.networkInterfaceIds,
    this.ownerId,
    this.region,
    this.securityGroupIds,
    this.storageCapacity,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'copyTagsToDataRepositoryAssociations': ?copyTagsToDataRepositoryAssociations,
      'dataRepositoryAssociationIds': ?dataRepositoryAssociationIds,
      'dataRepositoryAssociations': ?pulumi.Input.mapOptionalInputValue<List<FileCacheDataRepositoryAssociation>, List<Map<String, dynamic>>>(dataRepositoryAssociations, (value) => pulumi.Input.encodeList<FileCacheDataRepositoryAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsName': ?dnsName,
      'fileCacheId': ?fileCacheId,
      'fileCacheType': ?fileCacheType,
      'fileCacheTypeVersion': ?fileCacheTypeVersion,
      'kmsKeyId': ?kmsKeyId,
      'lustreConfigurations': ?pulumi.Input.mapOptionalInputValue<List<FileCacheLustreConfiguration>, List<Map<String, dynamic>>>(lustreConfigurations, (value) => pulumi.Input.encodeList<FileCacheLustreConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkInterfaceIds': ?networkInterfaceIds,
      'ownerId': ?ownerId,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'storageCapacity': ?storageCapacity,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory FileCacheState.fromMap(Map<String, dynamic> map) {
    return FileCacheState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyTagsToDataRepositoryAssociations: (() { final guardedValue = map['copyTagsToDataRepositoryAssociations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataRepositoryAssociationIds: (() { final guardedValue = map['dataRepositoryAssociationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataRepositoryAssociations: (() { final guardedValue = map['dataRepositoryAssociations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileCacheDataRepositoryAssociation>(guardedValue, (value) => FileCacheDataRepositoryAssociation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileCacheId: (() { final guardedValue = map['fileCacheId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileCacheType: (() { final guardedValue = map['fileCacheType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileCacheTypeVersion: (() { final guardedValue = map['fileCacheTypeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lustreConfigurations: (() { final guardedValue = map['lustreConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileCacheLustreConfiguration>(guardedValue, (value) => FileCacheLustreConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkInterfaceIds: (() { final guardedValue = map['networkInterfaceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      storageCapacity: (() { final guardedValue = map['storageCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
