// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../smb_file_share_cache_attributes/smb_file_share_cache_attributes.dart';

/// The set of arguments for SmbFileShare.
class SmbFileShareArgs {
  /// The files and folders on this share will only be visible to users with read access. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? accessBasedEnumeration;

  /// A list of users in the Active Directory that have admin access to the file share. Only valid if <span pulumi-lang-nodejs="`authentication`" pulumi-lang-dotnet="`Authentication`" pulumi-lang-go="`authentication`" pulumi-lang-python="`authentication`" pulumi-lang-yaml="`authentication`" pulumi-lang-java="`authentication`">`authentication`</span> is set to `ActiveDirectory`.
  final Input<List<String>>? adminUserLists;

  /// The Amazon Resource Name (ARN) of the CloudWatch Log Group used for the audit logs.
  final Input<String>? auditDestinationArn;

  /// The authentication method that users use to access the file share. Defaults to `ActiveDirectory`. Valid values: `ActiveDirectory`, `GuestAccess`.
  final Input<String>? authentication;

  /// The region of the S3 buck used by the file share. Required when specifying a <span pulumi-lang-nodejs="`vpcEndpointDnsName`" pulumi-lang-dotnet="`VpcEndpointDnsName`" pulumi-lang-go="`vpcEndpointDnsName`" pulumi-lang-python="`vpc_endpoint_dns_name`" pulumi-lang-yaml="`vpcEndpointDnsName`" pulumi-lang-java="`vpcEndpointDnsName`">`vpc_endpoint_dns_name`</span>.
  final Input<String>? bucketRegion;

  /// Refresh cache information. see <span pulumi-lang-nodejs="`cacheAttributes`" pulumi-lang-dotnet="`CacheAttributes`" pulumi-lang-go="`cacheAttributes`" pulumi-lang-python="`cache_attributes`" pulumi-lang-yaml="`cacheAttributes`" pulumi-lang-java="`cacheAttributes`">`cache_attributes`</span> Block for more details.
  final Input<SmbFileShareCacheAttributes>? cacheAttributes;

  /// The case of an object name in an Amazon S3 bucket. For `ClientSpecified`, the client determines the case sensitivity. For `CaseSensitive`, the gateway determines the case sensitivity. The default value is `ClientSpecified`.
  final Input<String>? caseSensitivity;

  /// The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  final Input<String>? defaultStorageClass;

  /// The name of the file share. Must be set if an S3 prefix name is set in <span pulumi-lang-nodejs="`locationArn`" pulumi-lang-dotnet="`LocationArn`" pulumi-lang-go="`locationArn`" pulumi-lang-python="`location_arn`" pulumi-lang-yaml="`locationArn`" pulumi-lang-java="`locationArn`">`location_arn`</span>.
  final Input<String>? fileShareName;

  /// Amazon Resource Name (ARN) of the file gateway.
  final Input<String> gatewayArn;

  /// Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? guessMimeTypeEnabled;

  /// A list of users in the Active Directory that are not allowed to access the file share. Only valid if <span pulumi-lang-nodejs="`authentication`" pulumi-lang-dotnet="`Authentication`" pulumi-lang-go="`authentication`" pulumi-lang-python="`authentication`" pulumi-lang-yaml="`authentication`" pulumi-lang-java="`authentication`">`authentication`</span> is set to `ActiveDirectory`.
  final Input<List<String>>? invalidUserLists;

  /// Boolean value if <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to use Amazon S3 server side encryption with your own AWS KMS key, or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to use a key managed by Amazon S3. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? kmsEncrypted;

  /// Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when <span pulumi-lang-nodejs="`kmsEncrypted`" pulumi-lang-dotnet="`KmsEncrypted`" pulumi-lang-go="`kmsEncrypted`" pulumi-lang-python="`kms_encrypted`" pulumi-lang-yaml="`kmsEncrypted`" pulumi-lang-java="`kmsEncrypted`">`kms_encrypted`</span> is true.
  final Input<String>? kmsKeyArn;

  /// The ARN of the backed storage used for storing file data.
  final Input<String> locationArn;

  /// The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  final Input<String>? notificationPolicy;

  /// Access Control List permission for S3 objects. Defaults to <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>.
  final Input<String>? objectAcl;

  /// Boolean to indicate Opportunistic lock (oplock) status. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? oplocksEnabled;

  /// Boolean to indicate write status of file share. File share does not accept writes if <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? readOnly;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if you want the requester to pay instead of the bucket owner. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? requesterPays;

  /// The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
  final Input<String> roleArn;

  /// Set this value to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to enable ACL (access control list) on the SMB fileshare. Set it to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to map file and directory permissions to the POSIX permissions. This setting applies only to `ActiveDirectory` authentication type.
  final Input<bool>? smbAclEnabled;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **Note:** If you have previously included a <span pulumi-lang-nodejs="`cacheAttributes`" pulumi-lang-dotnet="`CacheAttributes`" pulumi-lang-go="`cacheAttributes`" pulumi-lang-python="`cache_attributes`" pulumi-lang-yaml="`cacheAttributes`" pulumi-lang-java="`cacheAttributes`">`cache_attributes`</span> block in your configuration, removing it will not reset the refresh cache value and the previous value will remain. You must explicitly set a new value to change it.
  final Input<Map<String, String>>? tags;

  /// A list of users in the Active Directory that are allowed to access the file share. If you need to specify an Active directory group, add '@' before the name of the group. It will be set on Allowed group in AWS console. Only valid if <span pulumi-lang-nodejs="`authentication`" pulumi-lang-dotnet="`Authentication`" pulumi-lang-go="`authentication`" pulumi-lang-python="`authentication`" pulumi-lang-yaml="`authentication`" pulumi-lang-java="`authentication`">`authentication`</span> is set to `ActiveDirectory`.
  final Input<List<String>>? validUserLists;

  /// The DNS name of the VPC endpoint for S3 private link.
  final Input<String>? vpcEndpointDnsName;

  SmbFileShareArgs({
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
    final map = <String, dynamic>{};
    final accessBasedEnumerationValue = accessBasedEnumeration;
    if (accessBasedEnumerationValue != null) {
      map['accessBasedEnumeration'] = accessBasedEnumerationValue;
    }
    final adminUserListsValue = adminUserLists;
    if (adminUserListsValue != null) {
      map['adminUserLists'] = adminUserListsValue;
    }
    final auditDestinationArnValue = auditDestinationArn;
    if (auditDestinationArnValue != null) {
      map['auditDestinationArn'] = auditDestinationArnValue;
    }
    final authenticationValue = authentication;
    if (authenticationValue != null) {
      map['authentication'] = authenticationValue;
    }
    final bucketRegionValue = bucketRegion;
    if (bucketRegionValue != null) {
      map['bucketRegion'] = bucketRegionValue;
    }
    final cacheAttributesValue = cacheAttributes;
    if (cacheAttributesValue != null) {
      map['cacheAttributes'] = Input.mapOptionalInputValue<
          SmbFileShareCacheAttributes,
          Map<String, dynamic>>(cacheAttributesValue, (value) => value.toMap());
    }
    final caseSensitivityValue = caseSensitivity;
    if (caseSensitivityValue != null) {
      map['caseSensitivity'] = caseSensitivityValue;
    }
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
    final invalidUserListsValue = invalidUserLists;
    if (invalidUserListsValue != null) {
      map['invalidUserLists'] = invalidUserListsValue;
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
    final notificationPolicyValue = notificationPolicy;
    if (notificationPolicyValue != null) {
      map['notificationPolicy'] = notificationPolicyValue;
    }
    final objectAclValue = objectAcl;
    if (objectAclValue != null) {
      map['objectAcl'] = objectAclValue;
    }
    final oplocksEnabledValue = oplocksEnabled;
    if (oplocksEnabledValue != null) {
      map['oplocksEnabled'] = oplocksEnabledValue;
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
    final smbAclEnabledValue = smbAclEnabled;
    if (smbAclEnabledValue != null) {
      map['smbAclEnabled'] = smbAclEnabledValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final validUserListsValue = validUserLists;
    if (validUserListsValue != null) {
      map['validUserLists'] = validUserListsValue;
    }
    final vpcEndpointDnsNameValue = vpcEndpointDnsName;
    if (vpcEndpointDnsNameValue != null) {
      map['vpcEndpointDnsName'] = vpcEndpointDnsNameValue;
    }
    return map;
  }

  factory SmbFileShareArgs.fromMap(Map<String, dynamic> map) {
    return SmbFileShareArgs(
      accessBasedEnumeration:
          Input.asOptionalInput<bool>(map['accessBasedEnumeration']),
      adminUserLists:
          Input.asOptionalInput<List<String>>(map['adminUserLists']),
      auditDestinationArn:
          Input.asOptionalInput<String>(map['auditDestinationArn']),
      authentication: Input.asOptionalInput<String>(map['authentication']),
      bucketRegion: Input.asOptionalInput<String>(map['bucketRegion']),
      cacheAttributes: Input.asOptionalInput<SmbFileShareCacheAttributes>(
          map['cacheAttributes']),
      caseSensitivity: Input.asOptionalInput<String>(map['caseSensitivity']),
      defaultStorageClass:
          Input.asOptionalInput<String>(map['defaultStorageClass']),
      fileShareName: Input.asOptionalInput<String>(map['fileShareName']),
      gatewayArn: Input.asInput<String>(map['gatewayArn']),
      guessMimeTypeEnabled:
          Input.asOptionalInput<bool>(map['guessMimeTypeEnabled']),
      invalidUserLists:
          Input.asOptionalInput<List<String>>(map['invalidUserLists']),
      kmsEncrypted: Input.asOptionalInput<bool>(map['kmsEncrypted']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      locationArn: Input.asInput<String>(map['locationArn']),
      notificationPolicy:
          Input.asOptionalInput<String>(map['notificationPolicy']),
      objectAcl: Input.asOptionalInput<String>(map['objectAcl']),
      oplocksEnabled: Input.asOptionalInput<bool>(map['oplocksEnabled']),
      readOnly: Input.asOptionalInput<bool>(map['readOnly']),
      region: Input.asOptionalInput<String>(map['region']),
      requesterPays: Input.asOptionalInput<bool>(map['requesterPays']),
      roleArn: Input.asInput<String>(map['roleArn']),
      smbAclEnabled: Input.asOptionalInput<bool>(map['smbAclEnabled']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      validUserLists:
          Input.asOptionalInput<List<String>>(map['validUserLists']),
      vpcEndpointDnsName:
          Input.asOptionalInput<String>(map['vpcEndpointDnsName']),
    );
  }
}
