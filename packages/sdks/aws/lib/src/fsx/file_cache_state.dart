// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_cache_data_repository_association.dart';
import 'file_cache_lustre_configuration.dart';

/// Input properties used for looking up and filtering FileCache resources.
class FileCacheState {
  /// The Amazon Resource Name (ARN) for the resource.
  final pulumi.Input<String>? arn;
  /// A boolean flag indicating whether tags for the cache should be copied to data repository associations. This value defaults to false.
  final pulumi.Input<bool>? copyTagsToDataRepositoryAssociations;
  /// A list of IDs of data repository associations that are associated with this cache.
  final pulumi.Input<List<String>>? dataRepositoryAssociationIds;
  /// See the `data_repository_association` configuration block. Max of 8.
  /// A list of up to 8 configurations for data repository associations (DRAs) to be created during the cache creation. The DRAs link the cache to either an Amazon S3 data repository or a Network File System (NFS) data repository that supports the NFSv3 protocol. The DRA configurations must meet the following requirements: 1) All configurations on the list must be of the same data repository type, either all S3 or all NFS. A cache can't link to different data repository types at the same time. 2) An NFS DRA must link to an NFS file system that supports the NFSv3 protocol. DRA automatic import and automatic export is not supported.
  final pulumi.Input<List<FileCacheDataRepositoryAssociation>>? dataRepositoryAssociations;
  /// The Domain Name System (DNS) name for the cache.
  final pulumi.Input<String>? dnsName;
  /// The system-generated, unique ID of the cache.
  final pulumi.Input<String>? fileCacheId;
  /// The type of cache that you're creating. The only supported value is `LUSTRE`.
  final pulumi.Input<String>? fileCacheType;
  /// The version for the type of cache that you're creating. The only supported value is `2.12`.
  final pulumi.Input<String>? fileCacheTypeVersion;
  /// Specifies the ID of the AWS Key Management Service (AWS KMS) key to use for encrypting data on an Amazon File Cache. If a KmsKeyId isn't specified, the Amazon FSx-managed AWS KMS key for your account is used.
  final pulumi.Input<String>? kmsKeyId;
  /// See the `lustre_configuration` block. Required when `file_cache_type` is `LUSTRE`.
  final pulumi.Input<List<FileCacheLustreConfiguration>>? lustreConfigurations;
  /// A list of network interface IDs.
  final pulumi.Input<List<String>>? networkInterfaceIds;
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of IDs specifying the security groups to apply to all network interfaces created for Amazon File Cache access.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The storage capacity of the cache in gibibytes (GiB). Valid values are `1200` GiB, `2400` GiB, and increments of `2400` GiB.
  final pulumi.Input<int>? storageCapacity;
  /// A list of subnet IDs that the cache will be accessible from. You can specify only one subnet ID.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags to assign to the file cache. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of your virtual private cloud (VPC).
  final pulumi.Input<String>? vpcId;

  /// Creates a new [FileCacheState].
  /// [arn] The Amazon Resource Name (ARN) for the resource.
  /// [copyTagsToDataRepositoryAssociations] A boolean flag indicating whether tags for the cache should be copied to data repository associations. This value defaults to false.
  /// [dataRepositoryAssociationIds] A list of IDs of data repository associations that are associated with this cache.
  /// [dataRepositoryAssociations] See the `data_repository_association` configuration block. Max of 8.
  /// [dnsName] The Domain Name System (DNS) name for the cache.
  /// [fileCacheId] The system-generated, unique ID of the cache.
  /// [fileCacheType] The type of cache that you're creating. The only supported value is `LUSTRE`.
  /// [fileCacheTypeVersion] The version for the type of cache that you're creating. The only supported value is `2.12`.
  /// [kmsKeyId] Specifies the ID of the AWS Key Management Service (AWS KMS) key to use for encrypting data on an Amazon File Cache. If a KmsKeyId isn't specified, the Amazon FSx-managed AWS KMS key for your account is used.
  /// [lustreConfigurations] See the `lustre_configuration` block. Required when `file_cache_type` is `LUSTRE`.
  /// [networkInterfaceIds] A list of network interface IDs.
  /// [ownerId] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] A list of IDs specifying the security groups to apply to all network interfaces created for Amazon File Cache access.
  /// [storageCapacity] The storage capacity of the cache in gibibytes (GiB). Valid values are `1200` GiB, `2400` GiB, and increments of `2400` GiB.
  /// [subnetIds] A list of subnet IDs that the cache will be accessible from. You can specify only one subnet ID.
  /// [tags] A map of tags to assign to the file cache. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [vpcId] The ID of your virtual private cloud (VPC).
  FileCacheState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? copyTagsToDataRepositoryAssociations,
    pulumi.Output<List<String>>? dataRepositoryAssociationIds,
    pulumi.Output<List<FileCacheDataRepositoryAssociation>>? dataRepositoryAssociations,
    pulumi.Output<String>? dnsName,
    pulumi.Output<String>? fileCacheId,
    pulumi.Output<String>? fileCacheType,
    pulumi.Output<String>? fileCacheTypeVersion,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<List<FileCacheLustreConfiguration>>? lustreConfigurations,
    pulumi.Output<List<String>>? networkInterfaceIds,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<int>? storageCapacity,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      copyTagsToDataRepositoryAssociations = pulumi.Input.asOptionalInput<bool>(copyTagsToDataRepositoryAssociations),
      dataRepositoryAssociationIds = pulumi.Input.asOptionalInput<List<String>>(dataRepositoryAssociationIds),
      dataRepositoryAssociations = pulumi.Input.asOptionalInput<List<FileCacheDataRepositoryAssociation>>(dataRepositoryAssociations),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      fileCacheId = pulumi.Input.asOptionalInput<String>(fileCacheId),
      fileCacheType = pulumi.Input.asOptionalInput<String>(fileCacheType),
      fileCacheTypeVersion = pulumi.Input.asOptionalInput<String>(fileCacheTypeVersion),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      lustreConfigurations = pulumi.Input.asOptionalInput<List<FileCacheLustreConfiguration>>(lustreConfigurations),
      networkInterfaceIds = pulumi.Input.asOptionalInput<List<String>>(networkInterfaceIds),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      storageCapacity = pulumi.Input.asOptionalInput<int>(storageCapacity),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      copyTagsToDataRepositoryAssociations: map['copyTagsToDataRepositoryAssociations'] == null ? null : pulumi.Output.create<bool>(map['copyTagsToDataRepositoryAssociations'] as bool),
      dataRepositoryAssociationIds: map['dataRepositoryAssociationIds'] == null ? null : pulumi.Output.create<List<String>>((map['dataRepositoryAssociationIds'] as List).cast<String>()),
      dataRepositoryAssociations: map['dataRepositoryAssociations'] == null ? null : pulumi.Output.create<List<FileCacheDataRepositoryAssociation>>(pulumi.Input.decodeList<FileCacheDataRepositoryAssociation>(map['dataRepositoryAssociations'], (value) => FileCacheDataRepositoryAssociation.fromMap((value as Map).cast<String, dynamic>()))),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      fileCacheId: map['fileCacheId'] == null ? null : pulumi.Output.create<String>(map['fileCacheId'] as String),
      fileCacheType: map['fileCacheType'] == null ? null : pulumi.Output.create<String>(map['fileCacheType'] as String),
      fileCacheTypeVersion: map['fileCacheTypeVersion'] == null ? null : pulumi.Output.create<String>(map['fileCacheTypeVersion'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      lustreConfigurations: map['lustreConfigurations'] == null ? null : pulumi.Output.create<List<FileCacheLustreConfiguration>>(pulumi.Input.decodeList<FileCacheLustreConfiguration>(map['lustreConfigurations'], (value) => FileCacheLustreConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      networkInterfaceIds: map['networkInterfaceIds'] == null ? null : pulumi.Output.create<List<String>>((map['networkInterfaceIds'] as List).cast<String>()),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      storageCapacity: map['storageCapacity'] == null ? null : pulumi.Output.create<int>(map['storageCapacity'] as int),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

