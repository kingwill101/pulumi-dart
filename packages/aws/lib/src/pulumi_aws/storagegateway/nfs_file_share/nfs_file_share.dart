import 'package:pulumi/pulumi.dart' as pulumi;
import '../nfs_file_share_cache_attributes/nfs_file_share_cache_attributes.dart';
import '../nfs_file_share_nfs_file_share_defaults/nfs_file_share_nfs_file_share_defaults.dart';
import 'nfs_file_share_args.dart';

/// Manages an AWS Storage Gateway NFS File Share.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.NfsFileShare` using the NFS File Share Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/nfsFileShare:NfsFileShare example arn:aws:storagegateway:us-east-1:123456789012:share/share-12345678
/// ```
class NfsFileShare extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the NFS File Share.
  late final pulumi.Output<String> arn;

  /// The Amazon Resource Name (ARN) of the storage used for audit logs.
  late final pulumi.Output<String?> auditDestinationArn;

  /// The region of the S3 bucket used by the file share. Required when specifying `vpc_endpoint_dns_name`.
  late final pulumi.Output<String?> bucketRegion;

  /// Refresh cache information. see Cache Attributes for more details.
  late final pulumi.Output<NfsFileShareCacheAttributes?> cacheAttributes;

  /// The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. Set to `["0.0.0.0/0"]` to not limit access. Minimum 1 item. Maximum 100 items.
  late final pulumi.Output<List<String>> clientLists;

  /// The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  late final pulumi.Output<String?> defaultStorageClass;

  /// The name of the file share. Must be set if an S3 prefix name is set in `location_arn`.
  late final pulumi.Output<String> fileShareName;

  /// ID of the NFS File Share.
  late final pulumi.Output<String> fileshareId;

  /// Amazon Resource Name (ARN) of the file gateway.
  late final pulumi.Output<String> gatewayArn;

  /// Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to `true`.
  late final pulumi.Output<bool?> guessMimeTypeEnabled;

  /// Boolean value if `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Defaults to `false`.
  late final pulumi.Output<bool?> kmsEncrypted;

  /// Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is true.
  late final pulumi.Output<String?> kmsKeyArn;

  /// The ARN of the backed storage used for storing file data.
  late final pulumi.Output<String> locationArn;

  /// Nested argument with file share default values. More information below. see NFS File Share Defaults for more details.
  late final pulumi.Output<NfsFileShareNfsFileShareDefaults?>
      nfsFileShareDefaults;

  /// The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  late final pulumi.Output<String?> notificationPolicy;

  /// Access Control List permission for S3 objects. Defaults to `private`.
  late final pulumi.Output<String?> objectAcl;

  /// File share path used by the NFS client to identify the mount point.
  late final pulumi.Output<String> path;

  /// Boolean to indicate write status of file share. File share does not accept writes if `true`. Defaults to `false`.
  late final pulumi.Output<bool?> readOnly;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to `true` if you want the requester to pay instead of the bucket owner. Defaults to `false`.
  late final pulumi.Output<bool?> requesterPays;

  /// The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
  late final pulumi.Output<String> roleArn;

  /// Maps a user to anonymous user. Defaults to `RootSquash`. Valid values: `RootSquash` (only root is mapped to anonymous user), `NoSquash` (no one is mapped to anonymous user), `AllSquash` (everyone is mapped to anonymous user)
  late final pulumi.Output<String?> squash;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The DNS name of the VPC endpoint for S3 PrivateLink.
  late final pulumi.Output<String?> vpcEndpointDnsName;

  NfsFileShare(
    String name, {
    NfsFileShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/nfsFileShare:NfsFileShare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.auditDestinationArn = registerOutput<String?>('auditDestinationArn');
    this.bucketRegion = registerOutput<String?>('bucketRegion');
    this.cacheAttributes =
        registerOutput<NfsFileShareCacheAttributes?>('cacheAttributes');
    this.clientLists = registerOutput<List<String>>('clientLists');
    this.defaultStorageClass = registerOutput<String?>('defaultStorageClass');
    this.fileShareName = registerOutput<String>('fileShareName');
    this.fileshareId = registerOutput<String>('fileshareId');
    this.gatewayArn = registerOutput<String>('gatewayArn');
    this.guessMimeTypeEnabled = registerOutput<bool?>('guessMimeTypeEnabled');
    this.kmsEncrypted = registerOutput<bool?>('kmsEncrypted');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.locationArn = registerOutput<String>('locationArn');
    this.nfsFileShareDefaults =
        registerOutput<NfsFileShareNfsFileShareDefaults?>(
            'nfsFileShareDefaults');
    this.notificationPolicy = registerOutput<String?>('notificationPolicy');
    this.objectAcl = registerOutput<String?>('objectAcl');
    this.path = registerOutput<String>('path');
    this.readOnly = registerOutput<bool?>('readOnly');
    this.region = registerOutput<String>('region');
    this.requesterPays = registerOutput<bool?>('requesterPays');
    this.roleArn = registerOutput<String>('roleArn');
    this.squash = registerOutput<String?>('squash');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcEndpointDnsName = registerOutput<String?>('vpcEndpointDnsName');
  }
}
