// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smb_file_share_cache_attributes.dart';

/// {@template pulumi_storagegateway_smb_file_share_smb_file_share_args_doc}
/// The set of arguments for SmbFileShare.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_smb_file_share_smb_file_share_args_doc}
class SmbFileShareArgs {
  /// The files and folders on this share will only be visible to users with read access. Default value is `false`.
  final pulumi.Input<bool>? accessBasedEnumeration;
  /// A list of users in the Active Directory that have admin access to the file share. Only valid if `authentication` is set to `ActiveDirectory`.
  final pulumi.Input<List<String>>? adminUserLists;
  /// The Amazon Resource Name (ARN) of the CloudWatch Log Group used for the audit logs.
  final pulumi.Input<String>? auditDestinationArn;
  /// The authentication method that users use to access the file share. Defaults to `ActiveDirectory`. Valid values: `ActiveDirectory`, `GuestAccess`.
  final pulumi.Input<String>? authentication;
  /// The region of the S3 buck used by the file share. Required when specifying a `vpc_endpoint_dns_name`.
  final pulumi.Input<String>? bucketRegion;
  /// Refresh cache information. see `cache_attributes` Block for more details.
  final pulumi.Input<SmbFileShareCacheAttributes>? cacheAttributes;
  /// The case of an object name in an Amazon S3 bucket. For `ClientSpecified`, the client determines the case sensitivity. For `CaseSensitive`, the gateway determines the case sensitivity. The default value is `ClientSpecified`.
  final pulumi.Input<String>? caseSensitivity;
  /// The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  final pulumi.Input<String>? defaultStorageClass;
  /// The name of the file share. Must be set if an S3 prefix name is set in `location_arn`.
  final pulumi.Input<String>? fileShareName;
  /// Amazon Resource Name (ARN) of the file gateway.
  final pulumi.Input<String> gatewayArn;
  /// Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to `true`.
  final pulumi.Input<bool>? guessMimeTypeEnabled;
  /// A list of users in the Active Directory that are not allowed to access the file share. Only valid if `authentication` is set to `ActiveDirectory`.
  final pulumi.Input<List<String>>? invalidUserLists;
  /// Boolean value if `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Defaults to `false`.
  final pulumi.Input<bool>? kmsEncrypted;
  /// Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is true.
  final pulumi.Input<String>? kmsKeyArn;
  /// The ARN of the backed storage used for storing file data.
  final pulumi.Input<String> locationArn;
  /// The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  final pulumi.Input<String>? notificationPolicy;
  /// Access Control List permission for S3 objects. Defaults to `private`.
  final pulumi.Input<String>? objectAcl;
  /// Boolean to indicate Opportunistic lock (oplock) status. Defaults to `true`.
  final pulumi.Input<bool>? oplocksEnabled;
  /// Boolean to indicate write status of file share. File share does not accept writes if `true`. Defaults to `false`.
  final pulumi.Input<bool>? readOnly;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to `true` if you want the requester to pay instead of the bucket owner. Defaults to `false`.
  final pulumi.Input<bool>? requesterPays;
  /// The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
  final pulumi.Input<String> roleArn;
  /// Set this value to `true` to enable ACL (access control list) on the SMB fileshare. Set it to `false` to map file and directory permissions to the POSIX permissions. This setting applies only to `ActiveDirectory` authentication type.
  final pulumi.Input<bool>? smbAclEnabled;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **Note:** If you have previously included a `cache_attributes` block in your configuration, removing it will not reset the refresh cache value and the previous value will remain. You must explicitly set a new value to change it.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of users in the Active Directory that are allowed to access the file share. If you need to specify an Active directory group, add '@' before the name of the group. It will be set on Allowed group in AWS console. Only valid if `authentication` is set to `ActiveDirectory`.
  final pulumi.Input<List<String>>? validUserLists;
  /// The DNS name of the VPC endpoint for S3 private link.
  final pulumi.Input<String>? vpcEndpointDnsName;

  /// Creates a new [SmbFileShareArgs].
  /// [accessBasedEnumeration] The files and folders on this share will only be visible to users with read access. Default value is `false`.
  /// [adminUserLists] A list of users in the Active Directory that have admin access to the file share. Only valid if `authentication` is set to `ActiveDirectory`.
  /// [auditDestinationArn] The Amazon Resource Name (ARN) of the CloudWatch Log Group used for the audit logs.
  /// [authentication] The authentication method that users use to access the file share. Defaults to `ActiveDirectory`. Valid values: `ActiveDirectory`, `GuestAccess`.
  /// [bucketRegion] The region of the S3 buck used by the file share. Required when specifying a `vpc_endpoint_dns_name`.
  /// [cacheAttributes] Refresh cache information. see `cache_attributes` Block for more details.
  /// [caseSensitivity] The case of an object name in an Amazon S3 bucket. For `ClientSpecified`, the client determines the case sensitivity. For `CaseSensitive`, the gateway determines the case sensitivity. The default value is `ClientSpecified`.
  /// [defaultStorageClass] The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  /// [fileShareName] The name of the file share. Must be set if an S3 prefix name is set in `location_arn`.
  /// [gatewayArn] Amazon Resource Name (ARN) of the file gateway.
  /// [guessMimeTypeEnabled] Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to `true`.
  /// [invalidUserLists] A list of users in the Active Directory that are not allowed to access the file share. Only valid if `authentication` is set to `ActiveDirectory`.
  /// [kmsEncrypted] Boolean value if `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Defaults to `false`.
  /// [kmsKeyArn] Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is true.
  /// [locationArn] The ARN of the backed storage used for storing file data.
  /// [notificationPolicy] The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  /// [objectAcl] Access Control List permission for S3 objects. Defaults to `private`.
  /// [oplocksEnabled] Boolean to indicate Opportunistic lock (oplock) status. Defaults to `true`.
  /// [readOnly] Boolean to indicate write status of file share. File share does not accept writes if `true`. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requesterPays] Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to `true` if you want the requester to pay instead of the bucket owner. Defaults to `false`.
  /// [roleArn] The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
  /// [smbAclEnabled] Set this value to `true` to enable ACL (access control list) on the SMB fileshare. Set it to `false` to map file and directory permissions to the POSIX permissions. This setting applies only to `ActiveDirectory` authentication type.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [validUserLists] A list of users in the Active Directory that are allowed to access the file share. If you need to specify an Active directory group, add '@' before the name of the group. It will be set on Allowed group in AWS console. Only valid if `authentication` is set to `ActiveDirectory`.
  /// [vpcEndpointDnsName] The DNS name of the VPC endpoint for S3 private link.
  const SmbFileShareArgs({
    this.accessBasedEnumeration,
    this.adminUserLists,
    this.auditDestinationArn,
    this.authentication,
    this.bucketRegion,
    this.cacheAttributes,
    this.caseSensitivity,
    this.defaultStorageClass,
    this.fileShareName,
    required this.gatewayArn,
    this.guessMimeTypeEnabled,
    this.invalidUserLists,
    this.kmsEncrypted,
    this.kmsKeyArn,
    required this.locationArn,
    this.notificationPolicy,
    this.objectAcl,
    this.oplocksEnabled,
    this.readOnly,
    this.region,
    this.requesterPays,
    required this.roleArn,
    this.smbAclEnabled,
    this.tags,
    this.validUserLists,
    this.vpcEndpointDnsName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessBasedEnumeration': ?accessBasedEnumeration,
      'adminUserLists': ?adminUserLists,
      'auditDestinationArn': ?auditDestinationArn,
      'authentication': ?authentication,
      'bucketRegion': ?bucketRegion,
      'cacheAttributes': ?pulumi.Input.mapOptionalInputValue<SmbFileShareCacheAttributes, Map<String, dynamic>>(cacheAttributes, (value) => value.toMap()),
      'caseSensitivity': ?caseSensitivity,
      'defaultStorageClass': ?defaultStorageClass,
      'fileShareName': ?fileShareName,
      'gatewayArn': gatewayArn,
      'guessMimeTypeEnabled': ?guessMimeTypeEnabled,
      'invalidUserLists': ?invalidUserLists,
      'kmsEncrypted': ?kmsEncrypted,
      'kmsKeyArn': ?kmsKeyArn,
      'locationArn': locationArn,
      'notificationPolicy': ?notificationPolicy,
      'objectAcl': ?objectAcl,
      'oplocksEnabled': ?oplocksEnabled,
      'readOnly': ?readOnly,
      'region': ?region,
      'requesterPays': ?requesterPays,
      'roleArn': roleArn,
      'smbAclEnabled': ?smbAclEnabled,
      'tags': ?tags,
      'validUserLists': ?validUserLists,
      'vpcEndpointDnsName': ?vpcEndpointDnsName,
    };
  }

  factory SmbFileShareArgs.fromMap(Map<String, dynamic> map) {
    return SmbFileShareArgs(
      accessBasedEnumeration: (() { final guardedValue = map['accessBasedEnumeration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      adminUserLists: (() { final guardedValue = map['adminUserLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      auditDestinationArn: (() { final guardedValue = map['auditDestinationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketRegion: (() { final guardedValue = map['bucketRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheAttributes: (() { final guardedValue = map['cacheAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SmbFileShareCacheAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      caseSensitivity: (() { final guardedValue = map['caseSensitivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultStorageClass: (() { final guardedValue = map['defaultStorageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileShareName: (() { final guardedValue = map['fileShareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayArn: pulumi.Input.fromValue(map['gatewayArn'] as String),
      guessMimeTypeEnabled: (() { final guardedValue = map['guessMimeTypeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      invalidUserLists: (() { final guardedValue = map['invalidUserLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kmsEncrypted: (() { final guardedValue = map['kmsEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationArn: pulumi.Input.fromValue(map['locationArn'] as String),
      notificationPolicy: (() { final guardedValue = map['notificationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectAcl: (() { final guardedValue = map['objectAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oplocksEnabled: (() { final guardedValue = map['oplocksEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requesterPays: (() { final guardedValue = map['requesterPays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      smbAclEnabled: (() { final guardedValue = map['smbAclEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validUserLists: (() { final guardedValue = map['validUserLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcEndpointDnsName: (() { final guardedValue = map['vpcEndpointDnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

