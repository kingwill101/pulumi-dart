// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../nfs_file_share_cache_attributes/nfs_file_share_cache_attributes.dart';
import '../nfs_file_share_nfs_file_share_defaults/nfs_file_share_nfs_file_share_defaults.dart';

/// The set of arguments for NfsFileShare.
class NfsFileShareArgs {
  /// The Amazon Resource Name (ARN) of the storage used for audit logs.
  final pulumi.Input<String>? auditDestinationArn;

  /// The region of the S3 bucket used by the file share. Required when specifying `vpc_endpoint_dns_name`.
  final pulumi.Input<String>? bucketRegion;

  /// Refresh cache information. see Cache Attributes for more details.
  final pulumi.Input<NfsFileShareCacheAttributes>? cacheAttributes;

  /// The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. Set to `["0.0.0.0/0"]` to not limit access. Minimum 1 item. Maximum 100 items.
  final pulumi.Input<List<String>> clientLists;

  /// The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  final pulumi.Input<String>? defaultStorageClass;

  /// The name of the file share. Must be set if an S3 prefix name is set in `location_arn`.
  final pulumi.Input<String>? fileShareName;

  /// Amazon Resource Name (ARN) of the file gateway.
  final pulumi.Input<String> gatewayArn;

  /// Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to `true`.
  final pulumi.Input<bool>? guessMimeTypeEnabled;

  /// Boolean value if `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Defaults to `false`.
  final pulumi.Input<bool>? kmsEncrypted;

  /// Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is true.
  final pulumi.Input<String>? kmsKeyArn;

  /// The ARN of the backed storage used for storing file data.
  final pulumi.Input<String> locationArn;

  /// Nested argument with file share default values. More information below. see NFS File Share Defaults for more details.
  final pulumi.Input<NfsFileShareNfsFileShareDefaults>? nfsFileShareDefaults;

  /// The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  final pulumi.Input<String>? notificationPolicy;

  /// Access Control List permission for S3 objects. Defaults to `private`.
  final pulumi.Input<String>? objectAcl;

  /// Boolean to indicate write status of file share. File share does not accept writes if `true`. Defaults to `false`.
  final pulumi.Input<bool>? readOnly;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to `true` if you want the requester to pay instead of the bucket owner. Defaults to `false`.
  final pulumi.Input<bool>? requesterPays;

  /// The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
  final pulumi.Input<String> roleArn;

  /// Maps a user to anonymous user. Defaults to `RootSquash`. Valid values: `RootSquash` (only root is mapped to anonymous user), `NoSquash` (no one is mapped to anonymous user), `AllSquash` (everyone is mapped to anonymous user)
  final pulumi.Input<String>? squash;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The DNS name of the VPC endpoint for S3 PrivateLink.
  final pulumi.Input<String>? vpcEndpointDnsName;

  NfsFileShareArgs({
    this.auditDestinationArn,
    this.bucketRegion,
    this.cacheAttributes,
    required this.clientLists,
    this.defaultStorageClass,
    this.fileShareName,
    required this.gatewayArn,
    this.guessMimeTypeEnabled,
    this.kmsEncrypted,
    this.kmsKeyArn,
    required this.locationArn,
    this.nfsFileShareDefaults,
    this.notificationPolicy,
    this.objectAcl,
    this.readOnly,
    this.region,
    this.requesterPays,
    required this.roleArn,
    this.squash,
    this.tags,
    this.vpcEndpointDnsName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditDestinationArnValue = auditDestinationArn;
    if (auditDestinationArnValue != null) {
      map['auditDestinationArn'] = auditDestinationArnValue;
    }
    final bucketRegionValue = bucketRegion;
    if (bucketRegionValue != null) {
      map['bucketRegion'] = bucketRegionValue;
    }
    final cacheAttributesValue = cacheAttributes;
    if (cacheAttributesValue != null) {
      map['cacheAttributes'] = pulumi.Input.mapOptionalInputValue<
          NfsFileShareCacheAttributes,
          Map<String, dynamic>>(cacheAttributesValue, (value) => value.toMap());
    }
    map['clientLists'] = clientLists;
    final defaultStorageClassValue = defaultStorageClass;
    if (defaultStorageClassValue != null) {
      map['defaultStorageClass'] = defaultStorageClassValue;
    }
    final fileShareNameValue = fileShareName;
    if (fileShareNameValue != null) {
      map['fileShareName'] = fileShareNameValue;
    }
    map['gatewayArn'] = gatewayArn;
    final guessMimeTypeEnabledValue = guessMimeTypeEnabled;
    if (guessMimeTypeEnabledValue != null) {
      map['guessMimeTypeEnabled'] = guessMimeTypeEnabledValue;
    }
    final kmsEncryptedValue = kmsEncrypted;
    if (kmsEncryptedValue != null) {
      map['kmsEncrypted'] = kmsEncryptedValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    map['locationArn'] = locationArn;
    final nfsFileShareDefaultsValue = nfsFileShareDefaults;
    if (nfsFileShareDefaultsValue != null) {
      map['nfsFileShareDefaults'] = pulumi.Input.mapOptionalInputValue<
              NfsFileShareNfsFileShareDefaults, Map<String, dynamic>>(
          nfsFileShareDefaultsValue, (value) => value.toMap());
    }
    final notificationPolicyValue = notificationPolicy;
    if (notificationPolicyValue != null) {
      map['notificationPolicy'] = notificationPolicyValue;
    }
    final objectAclValue = objectAcl;
    if (objectAclValue != null) {
      map['objectAcl'] = objectAclValue;
    }
    final readOnlyValue = readOnly;
    if (readOnlyValue != null) {
      map['readOnly'] = readOnlyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requesterPaysValue = requesterPays;
    if (requesterPaysValue != null) {
      map['requesterPays'] = requesterPaysValue;
    }
    map['roleArn'] = roleArn;
    final squashValue = squash;
    if (squashValue != null) {
      map['squash'] = squashValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcEndpointDnsNameValue = vpcEndpointDnsName;
    if (vpcEndpointDnsNameValue != null) {
      map['vpcEndpointDnsName'] = vpcEndpointDnsNameValue;
    }
    return map;
  }

  factory NfsFileShareArgs.fromMap(Map<String, dynamic> map) {
    return NfsFileShareArgs(
      auditDestinationArn:
          pulumi.Input.asOptionalInput<String>(map['auditDestinationArn']),
      bucketRegion: pulumi.Input.asOptionalInput<String>(map['bucketRegion']),
      cacheAttributes:
          pulumi.Input.asOptionalInput<NfsFileShareCacheAttributes>(
              map['cacheAttributes']),
      clientLists: pulumi.Input.asInput<List<String>>(map['clientLists']),
      defaultStorageClass:
          pulumi.Input.asOptionalInput<String>(map['defaultStorageClass']),
      fileShareName: pulumi.Input.asOptionalInput<String>(map['fileShareName']),
      gatewayArn: pulumi.Input.asInput<String>(map['gatewayArn']),
      guessMimeTypeEnabled:
          pulumi.Input.asOptionalInput<bool>(map['guessMimeTypeEnabled']),
      kmsEncrypted: pulumi.Input.asOptionalInput<bool>(map['kmsEncrypted']),
      kmsKeyArn: pulumi.Input.asOptionalInput<String>(map['kmsKeyArn']),
      locationArn: pulumi.Input.asInput<String>(map['locationArn']),
      nfsFileShareDefaults:
          pulumi.Input.asOptionalInput<NfsFileShareNfsFileShareDefaults>(
              map['nfsFileShareDefaults']),
      notificationPolicy:
          pulumi.Input.asOptionalInput<String>(map['notificationPolicy']),
      objectAcl: pulumi.Input.asOptionalInput<String>(map['objectAcl']),
      readOnly: pulumi.Input.asOptionalInput<bool>(map['readOnly']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requesterPays: pulumi.Input.asOptionalInput<bool>(map['requesterPays']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      squash: pulumi.Input.asOptionalInput<String>(map['squash']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcEndpointDnsName:
          pulumi.Input.asOptionalInput<String>(map['vpcEndpointDnsName']),
    );
  }
}
