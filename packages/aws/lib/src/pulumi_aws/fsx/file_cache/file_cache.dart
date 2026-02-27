import 'package:pulumi/pulumi.dart' as pulumi;
import '../file_cache_data_repository_association/file_cache_data_repository_association.dart';
import '../file_cache_lustre_configuration/file_cache_lustre_configuration.dart';
import 'file_cache_args.dart';

/// Resource for managing an Amazon File Cache cache.
/// See the [Create File Cache](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileCache.html) for more information.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon File Cache cache using the resource `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/fileCache:FileCache example fc-8012925589
/// ```
class FileCache extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) for the resource.
  late final pulumi.Output<String> arn;

  /// A boolean flag indicating whether tags for the cache should be copied to data repository associations. This value defaults to false.
  late final pulumi.Output<bool?> copyTagsToDataRepositoryAssociations;

  /// A list of IDs of data repository associations that are associated with this cache.
  late final pulumi.Output<List<String>> dataRepositoryAssociationIds;

  /// See the `data_repository_association` configuration block. Max of 8.
  /// A list of up to 8 configurations for data repository associations (DRAs) to be created during the cache creation. The DRAs link the cache to either an Amazon S3 data repository or a Network File System (NFS) data repository that supports the NFSv3 protocol. The DRA configurations must meet the following requirements: 1) All configurations on the list must be of the same data repository type, either all S3 or all NFS. A cache can't link to different data repository types at the same time. 2) An NFS DRA must link to an NFS file system that supports the NFSv3 protocol. DRA automatic import and automatic export is not supported.
  late final pulumi.Output<List<FileCacheDataRepositoryAssociation>?>
      dataRepositoryAssociations;

  /// The Domain Name System (DNS) name for the cache.
  late final pulumi.Output<String> dnsName;

  /// The system-generated, unique ID of the cache.
  late final pulumi.Output<String> fileCacheId;

  /// The type of cache that you're creating. The only supported value is `LUSTRE`.
  late final pulumi.Output<String> fileCacheType;

  /// The version for the type of cache that you're creating. The only supported value is `2.12`.
  late final pulumi.Output<String> fileCacheTypeVersion;

  /// Specifies the ID of the AWS Key Management Service (AWS KMS) key to use for encrypting data on an Amazon File Cache. If a KmsKeyId isn't specified, the Amazon FSx-managed AWS KMS key for your account is used.
  late final pulumi.Output<String> kmsKeyId;

  /// See the `lustre_configuration` block. Required when `file_cache_type` is `LUSTRE`.
  late final pulumi.Output<List<FileCacheLustreConfiguration>?>
      lustreConfigurations;

  /// A list of network interface IDs.
  late final pulumi.Output<List<String>> networkInterfaceIds;
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list of IDs specifying the security groups to apply to all network interfaces created for Amazon File Cache access.
  late final pulumi.Output<List<String>?> securityGroupIds;

  /// The storage capacity of the cache in gibibytes (GiB). Valid values are `1200` GiB, `2400` GiB, and increments of `2400` GiB.
  late final pulumi.Output<int> storageCapacity;

  /// A list of subnet IDs that the cache will be accessible from. You can specify only one subnet ID.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> subnetIds;

  /// A map of tags to assign to the file cache. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of your virtual private cloud (VPC).
  late final pulumi.Output<String> vpcId;

  FileCache(
    String name, {
    FileCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/fileCache:FileCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.copyTagsToDataRepositoryAssociations =
        registerOutput<bool?>('copyTagsToDataRepositoryAssociations');
    this.dataRepositoryAssociationIds =
        registerOutput<List<String>>('dataRepositoryAssociationIds');
    this.dataRepositoryAssociations =
        registerOutput<List<FileCacheDataRepositoryAssociation>?>(
            'dataRepositoryAssociations');
    this.dnsName = registerOutput<String>('dnsName');
    this.fileCacheId = registerOutput<String>('fileCacheId');
    this.fileCacheType = registerOutput<String>('fileCacheType');
    this.fileCacheTypeVersion = registerOutput<String>('fileCacheTypeVersion');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.lustreConfigurations =
        registerOutput<List<FileCacheLustreConfiguration>?>(
            'lustreConfigurations');
    this.networkInterfaceIds =
        registerOutput<List<String>>('networkInterfaceIds');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.storageCapacity = registerOutput<int>('storageCapacity');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
