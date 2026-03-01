// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_file_share_cache_attributes.dart';
import 'nfs_file_share_nfs_file_share_defaults.dart';

/// Input properties used for looking up and filtering NfsFileShare resources.
class NfsFileShareState {
  /// Amazon Resource Name (ARN) of the NFS File Share.
  final pulumi.Input<String>? arn;
  /// The Amazon Resource Name (ARN) of the storage used for audit logs.
  final pulumi.Input<String>? auditDestinationArn;
  /// The region of the S3 bucket used by the file share. Required when specifying `vpc_endpoint_dns_name`.
  final pulumi.Input<String>? bucketRegion;
  /// Refresh cache information. see Cache Attributes for more details.
  final pulumi.Input<NfsFileShareCacheAttributes>? cacheAttributes;
  /// The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. Set to `["0.0.0.0/0"]` to not limit access. Minimum 1 item. Maximum 100 items.
  final pulumi.Input<List<String>>? clientLists;
  /// The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  final pulumi.Input<String>? defaultStorageClass;
  /// The name of the file share. Must be set if an S3 prefix name is set in `location_arn`.
  final pulumi.Input<String>? fileShareName;
  /// ID of the NFS File Share.
  final pulumi.Input<String>? fileshareId;
  /// Amazon Resource Name (ARN) of the file gateway.
  final pulumi.Input<String>? gatewayArn;
  /// Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to `true`.
  final pulumi.Input<bool>? guessMimeTypeEnabled;
  /// Boolean value if `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Defaults to `false`.
  final pulumi.Input<bool>? kmsEncrypted;
  /// Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is true.
  final pulumi.Input<String>? kmsKeyArn;
  /// The ARN of the backed storage used for storing file data.
  final pulumi.Input<String>? locationArn;
  /// Nested argument with file share default values. More information below. see NFS File Share Defaults for more details.
  final pulumi.Input<NfsFileShareNfsFileShareDefaults>? nfsFileShareDefaults;
  /// The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  final pulumi.Input<String>? notificationPolicy;
  /// Access Control List permission for S3 objects. Defaults to `private`.
  final pulumi.Input<String>? objectAcl;
  /// File share path used by the NFS client to identify the mount point.
  final pulumi.Input<String>? path;
  /// Boolean to indicate write status of file share. File share does not accept writes if `true`. Defaults to `false`.
  final pulumi.Input<bool>? readOnly;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to `true` if you want the requester to pay instead of the bucket owner. Defaults to `false`.
  final pulumi.Input<bool>? requesterPays;
  /// The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
  final pulumi.Input<String>? roleArn;
  /// Maps a user to anonymous user. Defaults to `RootSquash`. Valid values: `RootSquash` (only root is mapped to anonymous user), `NoSquash` (no one is mapped to anonymous user), `AllSquash` (everyone is mapped to anonymous user)
  final pulumi.Input<String>? squash;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The DNS name of the VPC endpoint for S3 PrivateLink.
  final pulumi.Input<String>? vpcEndpointDnsName;

  /// Creates a new [NfsFileShareState].
  /// [arn] Amazon Resource Name (ARN) of the NFS File Share.
  /// [auditDestinationArn] The Amazon Resource Name (ARN) of the storage used for audit logs.
  /// [bucketRegion] The region of the S3 bucket used by the file share. Required when specifying `vpc_endpoint_dns_name`.
  /// [cacheAttributes] Refresh cache information. see Cache Attributes for more details.
  /// [clientLists] The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. Set to `["0.0.0.0/0"]` to not limit access. Minimum 1 item. Maximum 100 items.
  /// [defaultStorageClass] The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  /// [fileShareName] The name of the file share. Must be set if an S3 prefix name is set in `location_arn`.
  /// [fileshareId] ID of the NFS File Share.
  /// [gatewayArn] Amazon Resource Name (ARN) of the file gateway.
  /// [guessMimeTypeEnabled] Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to `true`.
  /// [kmsEncrypted] Boolean value if `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Defaults to `false`.
  /// [kmsKeyArn] Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is true.
  /// [locationArn] The ARN of the backed storage used for storing file data.
  /// [nfsFileShareDefaults] Nested argument with file share default values. More information below. see NFS File Share Defaults for more details.
  /// [notificationPolicy] The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  /// [objectAcl] Access Control List permission for S3 objects. Defaults to `private`.
  /// [path] File share path used by the NFS client to identify the mount point.
  /// [readOnly] Boolean to indicate write status of file share. File share does not accept writes if `true`. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requesterPays] Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to `true` if you want the requester to pay instead of the bucket owner. Defaults to `false`.
  /// [roleArn] The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
  /// [squash] Maps a user to anonymous user. Defaults to `RootSquash`. Valid values: `RootSquash` (only root is mapped to anonymous user), `NoSquash` (no one is mapped to anonymous user), `AllSquash` (everyone is mapped to anonymous user)
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcEndpointDnsName] The DNS name of the VPC endpoint for S3 PrivateLink.
  NfsFileShareState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? auditDestinationArn,
    pulumi.Output<String>? bucketRegion,
    pulumi.Output<NfsFileShareCacheAttributes>? cacheAttributes,
    pulumi.Output<List<String>>? clientLists,
    pulumi.Output<String>? defaultStorageClass,
    pulumi.Output<String>? fileShareName,
    pulumi.Output<String>? fileshareId,
    pulumi.Output<String>? gatewayArn,
    pulumi.Output<bool>? guessMimeTypeEnabled,
    pulumi.Output<bool>? kmsEncrypted,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? locationArn,
    pulumi.Output<NfsFileShareNfsFileShareDefaults>? nfsFileShareDefaults,
    pulumi.Output<String>? notificationPolicy,
    pulumi.Output<String>? objectAcl,
    pulumi.Output<String>? path,
    pulumi.Output<bool>? readOnly,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? requesterPays,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? squash,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcEndpointDnsName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      auditDestinationArn = pulumi.Input.asOptionalInput<String>(auditDestinationArn),
      bucketRegion = pulumi.Input.asOptionalInput<String>(bucketRegion),
      cacheAttributes = pulumi.Input.asOptionalInput<NfsFileShareCacheAttributes>(cacheAttributes),
      clientLists = pulumi.Input.asOptionalInput<List<String>>(clientLists),
      defaultStorageClass = pulumi.Input.asOptionalInput<String>(defaultStorageClass),
      fileShareName = pulumi.Input.asOptionalInput<String>(fileShareName),
      fileshareId = pulumi.Input.asOptionalInput<String>(fileshareId),
      gatewayArn = pulumi.Input.asOptionalInput<String>(gatewayArn),
      guessMimeTypeEnabled = pulumi.Input.asOptionalInput<bool>(guessMimeTypeEnabled),
      kmsEncrypted = pulumi.Input.asOptionalInput<bool>(kmsEncrypted),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      locationArn = pulumi.Input.asOptionalInput<String>(locationArn),
      nfsFileShareDefaults = pulumi.Input.asOptionalInput<NfsFileShareNfsFileShareDefaults>(nfsFileShareDefaults),
      notificationPolicy = pulumi.Input.asOptionalInput<String>(notificationPolicy),
      objectAcl = pulumi.Input.asOptionalInput<String>(objectAcl),
      path = pulumi.Input.asOptionalInput<String>(path),
      readOnly = pulumi.Input.asOptionalInput<bool>(readOnly),
      region = pulumi.Input.asOptionalInput<String>(region),
      requesterPays = pulumi.Input.asOptionalInput<bool>(requesterPays),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      squash = pulumi.Input.asOptionalInput<String>(squash),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcEndpointDnsName = pulumi.Input.asOptionalInput<String>(vpcEndpointDnsName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'auditDestinationArn': ?auditDestinationArn,
      'bucketRegion': ?bucketRegion,
      'cacheAttributes': ?pulumi.Input.mapOptionalInputValue<NfsFileShareCacheAttributes, Map<String, dynamic>>(cacheAttributes, (value) => value.toMap()),
      'clientLists': ?clientLists,
      'defaultStorageClass': ?defaultStorageClass,
      'fileShareName': ?fileShareName,
      'fileshareId': ?fileshareId,
      'gatewayArn': ?gatewayArn,
      'guessMimeTypeEnabled': ?guessMimeTypeEnabled,
      'kmsEncrypted': ?kmsEncrypted,
      'kmsKeyArn': ?kmsKeyArn,
      'locationArn': ?locationArn,
      'nfsFileShareDefaults': ?pulumi.Input.mapOptionalInputValue<NfsFileShareNfsFileShareDefaults, Map<String, dynamic>>(nfsFileShareDefaults, (value) => value.toMap()),
      'notificationPolicy': ?notificationPolicy,
      'objectAcl': ?objectAcl,
      'path': ?path,
      'readOnly': ?readOnly,
      'region': ?region,
      'requesterPays': ?requesterPays,
      'roleArn': ?roleArn,
      'squash': ?squash,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcEndpointDnsName': ?vpcEndpointDnsName,
    };
  }

  factory NfsFileShareState.fromMap(Map<String, dynamic> map) {
    return NfsFileShareState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      auditDestinationArn: map['auditDestinationArn'] == null ? null : pulumi.Output.create<String>(map['auditDestinationArn'] as String),
      bucketRegion: map['bucketRegion'] == null ? null : pulumi.Output.create<String>(map['bucketRegion'] as String),
      cacheAttributes: map['cacheAttributes'] == null ? null : pulumi.Output.create<NfsFileShareCacheAttributes>(NfsFileShareCacheAttributes.fromMap((map['cacheAttributes'] as Map).cast<String, dynamic>())),
      clientLists: map['clientLists'] == null ? null : pulumi.Output.create<List<String>>((map['clientLists'] as List).cast<String>()),
      defaultStorageClass: map['defaultStorageClass'] == null ? null : pulumi.Output.create<String>(map['defaultStorageClass'] as String),
      fileShareName: map['fileShareName'] == null ? null : pulumi.Output.create<String>(map['fileShareName'] as String),
      fileshareId: map['fileshareId'] == null ? null : pulumi.Output.create<String>(map['fileshareId'] as String),
      gatewayArn: map['gatewayArn'] == null ? null : pulumi.Output.create<String>(map['gatewayArn'] as String),
      guessMimeTypeEnabled: map['guessMimeTypeEnabled'] == null ? null : pulumi.Output.create<bool>(map['guessMimeTypeEnabled'] as bool),
      kmsEncrypted: map['kmsEncrypted'] == null ? null : pulumi.Output.create<bool>(map['kmsEncrypted'] as bool),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      locationArn: map['locationArn'] == null ? null : pulumi.Output.create<String>(map['locationArn'] as String),
      nfsFileShareDefaults: map['nfsFileShareDefaults'] == null ? null : pulumi.Output.create<NfsFileShareNfsFileShareDefaults>(NfsFileShareNfsFileShareDefaults.fromMap((map['nfsFileShareDefaults'] as Map).cast<String, dynamic>())),
      notificationPolicy: map['notificationPolicy'] == null ? null : pulumi.Output.create<String>(map['notificationPolicy'] as String),
      objectAcl: map['objectAcl'] == null ? null : pulumi.Output.create<String>(map['objectAcl'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      readOnly: map['readOnly'] == null ? null : pulumi.Output.create<bool>(map['readOnly'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requesterPays: map['requesterPays'] == null ? null : pulumi.Output.create<bool>(map['requesterPays'] as bool),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      squash: map['squash'] == null ? null : pulumi.Output.create<String>(map['squash'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcEndpointDnsName: map['vpcEndpointDnsName'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointDnsName'] as String),
    );
  }
}

