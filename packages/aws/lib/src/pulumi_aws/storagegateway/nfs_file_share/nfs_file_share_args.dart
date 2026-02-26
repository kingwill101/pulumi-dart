// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../nfs_file_share_cache_attributes/nfs_file_share_cache_attributes.dart';
import '../nfs_file_share_nfs_file_share_defaults/nfs_file_share_nfs_file_share_defaults.dart';

/// The set of arguments for NfsFileShare.
class NfsFileShareArgs {
  /// The Amazon Resource Name (ARN) of the storage used for audit logs.
  final Input<String>? auditDestinationArn;

  /// The region of the S3 bucket used by the file share. Required when specifying <span pulumi-lang-nodejs="`vpcEndpointDnsName`" pulumi-lang-dotnet="`VpcEndpointDnsName`" pulumi-lang-go="`vpcEndpointDnsName`" pulumi-lang-python="`vpc_endpoint_dns_name`" pulumi-lang-yaml="`vpcEndpointDnsName`" pulumi-lang-java="`vpcEndpointDnsName`">`vpc_endpoint_dns_name`</span>.
  final Input<String>? bucketRegion;

  /// Refresh cache information. see Cache Attributes for more details.
  final Input<NfsFileShareCacheAttributes>? cacheAttributes;

  /// The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. Set to `["0.0.0.0/0"]` to not limit access. Minimum 1 item. Maximum 100 items.
  final Input<List<String>> clientLists;

  /// The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  final Input<String>? defaultStorageClass;

  /// The name of the file share. Must be set if an S3 prefix name is set in <span pulumi-lang-nodejs="`locationArn`" pulumi-lang-dotnet="`LocationArn`" pulumi-lang-go="`locationArn`" pulumi-lang-python="`location_arn`" pulumi-lang-yaml="`locationArn`" pulumi-lang-java="`locationArn`">`location_arn`</span>.
  final Input<String>? fileShareName;

  /// Amazon Resource Name (ARN) of the file gateway.
  final Input<String> gatewayArn;

  /// Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? guessMimeTypeEnabled;

  /// Boolean value if <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to use Amazon S3 server side encryption with your own AWS KMS key, or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to use a key managed by Amazon S3. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? kmsEncrypted;

  /// Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when <span pulumi-lang-nodejs="`kmsEncrypted`" pulumi-lang-dotnet="`KmsEncrypted`" pulumi-lang-go="`kmsEncrypted`" pulumi-lang-python="`kms_encrypted`" pulumi-lang-yaml="`kmsEncrypted`" pulumi-lang-java="`kmsEncrypted`">`kms_encrypted`</span> is true.
  final Input<String>? kmsKeyArn;

  /// The ARN of the backed storage used for storing file data.
  final Input<String> locationArn;

  /// Nested argument with file share default values. More information below. see NFS File Share Defaults for more details.
  final Input<NfsFileShareNfsFileShareDefaults>? nfsFileShareDefaults;

  /// The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  final Input<String>? notificationPolicy;

  /// Access Control List permission for S3 objects. Defaults to <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>.
  final Input<String>? objectAcl;

  /// Boolean to indicate write status of file share. File share does not accept writes if <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? readOnly;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if you want the requester to pay instead of the bucket owner. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? requesterPays;

  /// The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
  final Input<String> roleArn;

  /// Maps a user to anonymous user. Defaults to `RootSquash`. Valid values: `RootSquash` (only root is mapped to anonymous user), `NoSquash` (no one is mapped to anonymous user), `AllSquash` (everyone is mapped to anonymous user)
  final Input<String>? squash;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The DNS name of the VPC endpoint for S3 PrivateLink.
  final Input<String>? vpcEndpointDnsName;

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
      map['cacheAttributes'] = Input.mapOptionalInputValue<
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
      map['nfsFileShareDefaults'] = Input.mapOptionalInputValue<
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
          Input.asOptionalInput<String>(map['auditDestinationArn']),
      bucketRegion: Input.asOptionalInput<String>(map['bucketRegion']),
      cacheAttributes: Input.asOptionalInput<NfsFileShareCacheAttributes>(
          map['cacheAttributes']),
      clientLists: Input.asInput<List<String>>(map['clientLists']),
      defaultStorageClass:
          Input.asOptionalInput<String>(map['defaultStorageClass']),
      fileShareName: Input.asOptionalInput<String>(map['fileShareName']),
      gatewayArn: Input.asInput<String>(map['gatewayArn']),
      guessMimeTypeEnabled:
          Input.asOptionalInput<bool>(map['guessMimeTypeEnabled']),
      kmsEncrypted: Input.asOptionalInput<bool>(map['kmsEncrypted']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      locationArn: Input.asInput<String>(map['locationArn']),
      nfsFileShareDefaults:
          Input.asOptionalInput<NfsFileShareNfsFileShareDefaults>(
              map['nfsFileShareDefaults']),
      notificationPolicy:
          Input.asOptionalInput<String>(map['notificationPolicy']),
      objectAcl: Input.asOptionalInput<String>(map['objectAcl']),
      readOnly: Input.asOptionalInput<bool>(map['readOnly']),
      region: Input.asOptionalInput<String>(map['region']),
      requesterPays: Input.asOptionalInput<bool>(map['requesterPays']),
      roleArn: Input.asInput<String>(map['roleArn']),
      squash: Input.asOptionalInput<String>(map['squash']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcEndpointDnsName:
          Input.asOptionalInput<String>(map['vpcEndpointDnsName']),
    );
  }
}
