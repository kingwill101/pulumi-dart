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
  /// The region of the S3 bucket used by the file share. Required when specifying `vpcEndpointDnsName`.
  final pulumi.Input<String>? bucketRegion;
  /// Refresh cache information. see Cache Attributes for more details.
  final pulumi.Input<NfsFileShareCacheAttributes>? cacheAttributes;
  /// The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. Set to `["0.0.0.0/0"]` to not limit access. Minimum 1 item. Maximum 100 items.
  final pulumi.Input<List<String>>? clientLists;
  /// The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  final pulumi.Input<String>? defaultStorageClass;
  /// The name of the file share. Must be set if an S3 prefix name is set in `locationArn`.
  final pulumi.Input<String>? fileShareName;
  /// ID of the NFS File Share.
  final pulumi.Input<String>? fileshareId;
  /// Amazon Resource Name (ARN) of the file gateway.
  final pulumi.Input<String>? gatewayArn;
  /// Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to `true`.
  final pulumi.Input<bool>? guessMimeTypeEnabled;
  /// Boolean value if `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Defaults to `false`.
  final pulumi.Input<bool>? kmsEncrypted;
  /// Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when `kmsEncrypted` is true.
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
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The DNS name of the VPC endpoint for S3 PrivateLink.
  final pulumi.Input<String>? vpcEndpointDnsName;

  /// Creates a new [NfsFileShareState].
  /// [arn] Amazon Resource Name (ARN) of the NFS File Share.
  /// [auditDestinationArn] The Amazon Resource Name (ARN) of the storage used for audit logs.
  /// [bucketRegion] The region of the S3 bucket used by the file share. Required when specifying `vpcEndpointDnsName`.
  /// [cacheAttributes] Refresh cache information. see Cache Attributes for more details.
  /// [clientLists] The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. Set to `["0.0.0.0/0"]` to not limit access. Minimum 1 item. Maximum 100 items.
  /// [defaultStorageClass] The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  /// [fileShareName] The name of the file share. Must be set if an S3 prefix name is set in `locationArn`.
  /// [fileshareId] ID of the NFS File Share.
  /// [gatewayArn] Amazon Resource Name (ARN) of the file gateway.
  /// [guessMimeTypeEnabled] Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to `true`.
  /// [kmsEncrypted] Boolean value if `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Defaults to `false`.
  /// [kmsKeyArn] Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when `kmsEncrypted` is true.
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
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcEndpointDnsName] The DNS name of the VPC endpoint for S3 PrivateLink.
  const NfsFileShareState({
    this.arn,
    this.auditDestinationArn,
    this.bucketRegion,
    this.cacheAttributes,
    this.clientLists,
    this.defaultStorageClass,
    this.fileShareName,
    this.fileshareId,
    this.gatewayArn,
    this.guessMimeTypeEnabled,
    this.kmsEncrypted,
    this.kmsKeyArn,
    this.locationArn,
    this.nfsFileShareDefaults,
    this.notificationPolicy,
    this.objectAcl,
    this.path,
    this.readOnly,
    this.region,
    this.requesterPays,
    this.roleArn,
    this.squash,
    this.tags,
    this.tagsAll,
    this.vpcEndpointDnsName,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      auditDestinationArn: (() { final guardedValue = map['auditDestinationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketRegion: (() { final guardedValue = map['bucketRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheAttributes: (() { final guardedValue = map['cacheAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NfsFileShareCacheAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientLists: (() { final guardedValue = map['clientLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultStorageClass: (() { final guardedValue = map['defaultStorageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileShareName: (() { final guardedValue = map['fileShareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileshareId: (() { final guardedValue = map['fileshareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayArn: (() { final guardedValue = map['gatewayArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guessMimeTypeEnabled: (() { final guardedValue = map['guessMimeTypeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsEncrypted: (() { final guardedValue = map['kmsEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationArn: (() { final guardedValue = map['locationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsFileShareDefaults: (() { final guardedValue = map['nfsFileShareDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NfsFileShareNfsFileShareDefaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationPolicy: (() { final guardedValue = map['notificationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectAcl: (() { final guardedValue = map['objectAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requesterPays: (() { final guardedValue = map['requesterPays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      squash: (() { final guardedValue = map['squash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcEndpointDnsName: (() { final guardedValue = map['vpcEndpointDnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
