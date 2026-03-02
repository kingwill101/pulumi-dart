// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/provider_assume_role.dart';
import '../index/provider_assume_role_with_web_identity.dart';
import '../index/provider_default_tags.dart';
import '../index/provider_endpoint.dart';
import '../index/provider_ignore_tags.dart';

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// The access key for API operations. You can retrieve this
  /// from the 'Security & Credentials' section of the AWS console.
  final pulumi.Input<String>? accessKey;
  final pulumi.Input<List<String>>? allowedAccountIds;
  final pulumi.Input<ProviderAssumeRoleWithWebIdentity>? assumeRoleWithWebIdentity;
  final pulumi.Input<List<ProviderAssumeRole>>? assumeRoles;
  /// File containing custom root and intermediate certificates. Can also be configured using the `AWS_CA_BUNDLE` environment variable. (Setting `ca_bundle` in the shared config file is not supported.)
  final pulumi.Input<String>? customCaBundle;
  /// Configuration block with settings to default resource tags across all resources.
  final pulumi.Input<ProviderDefaultTags>? defaultTags;
  /// Address of the EC2 metadata service endpoint to use. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT` environment variable.
  final pulumi.Input<String>? ec2MetadataServiceEndpoint;
  /// Protocol to use with EC2 metadata service endpoint.Valid values are `IPv4` and `IPv6`. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE` environment variable.
  final pulumi.Input<String>? ec2MetadataServiceEndpointMode;
  final pulumi.Input<List<ProviderEndpoint>>? endpoints;
  final pulumi.Input<List<String>>? forbiddenAccountIds;
  /// URL of a proxy to use for HTTP requests when accessing the AWS API. Can also be set using the `HTTP_PROXY` or `http_proxy` environment variables.
  final pulumi.Input<String>? httpProxy;
  /// URL of a proxy to use for HTTPS requests when accessing the AWS API. Can also be set using the `HTTPS_PROXY` or `https_proxy` environment variables.
  final pulumi.Input<String>? httpsProxy;
  /// Configuration block with settings to ignore resource tags across all resources.
  final pulumi.Input<ProviderIgnoreTags>? ignoreTags;
  /// Explicitly allow the provider to perform "insecure" SSL requests. If omitted, default value is `false`
  final pulumi.Input<bool>? insecure;
  /// The maximum number of times an AWS API request is
  /// being executed. If the API request still fails, an error is
  /// thrown.
  final pulumi.Input<int>? maxRetries;
  /// Comma-separated list of hosts that should not use HTTP or HTTPS proxies. Can also be set using the `NO_PROXY` or `no_proxy` environment variables.
  final pulumi.Input<String>? noProxy;
  /// The profile for API operations. If not set, the default profile
  /// created with `aws configure` will be used.
  final pulumi.Input<String>? profile;
  /// The region where AWS operations will take place. Examples
  /// are us-east-1, us-west-2, etc.
  final pulumi.Input<String>? region;
  /// Specifies how retries are attempted. Valid values are `standard` and `adaptive`. Can also be configured using the `AWS_RETRY_MODE` environment variable.
  final pulumi.Input<String>? retryMode;
  /// Specifies whether S3 API calls in the `us-east-1` region use the legacy global endpoint or a regional endpoint. Valid values are `legacy` or `regional`. Can also be configured using the `AWS_S3_US_EAST_1_REGIONAL_ENDPOINT` environment variable or the `s3_us_east_1_regional_endpoint` shared config file parameter
  final pulumi.Input<String>? s3UsEast1RegionalEndpoint;
  /// Set this to true to enable the request to use path-style addressing,
  /// i.e., https://s3.amazonaws.com/BUCKET/KEY. By default, the S3 client will
  /// use virtual hosted bucket addressing when possible
  /// (https://BUCKET.s3.amazonaws.com/KEY). Specific to the Amazon S3 service.
  final pulumi.Input<bool>? s3UsePathStyle;
  /// The secret key for API operations. You can retrieve this
  /// from the 'Security & Credentials' section of the AWS console.
  final pulumi.Input<String>? secretKey;
  /// List of paths to shared config files. If not set, defaults to [~/.aws/config].
  final pulumi.Input<List<String>>? sharedConfigFiles;
  /// List of paths to shared credentials files. If not set, defaults to [~/.aws/credentials].
  final pulumi.Input<List<String>>? sharedCredentialsFiles;
  /// Skip the credentials validation via STS API. Used for AWS API implementations that do not have STS available/implemented.
  final pulumi.Input<bool>? skipCredentialsValidation;
  /// Skip the AWS Metadata API check. Used for AWS API implementations that do not have a metadata api endpoint.
  final pulumi.Input<bool>? skipMetadataApiCheck;
  /// Skip static validation of region name. Used by users of alternative AWS-like APIs or users w/ access to regions that are not public (yet).
  final pulumi.Input<bool>? skipRegionValidation;
  /// Skip requesting the account ID. Used for AWS API implementations that do not have IAM/STS API and/or metadata API.
  final pulumi.Input<bool>? skipRequestingAccountId;
  /// The region where AWS STS operations will take place. Examples
  /// are us-east-1 and us-west-2.
  final pulumi.Input<String>? stsRegion;
  /// The severity with which to enforce organizational tagging policies on resources managed by this provider instance. At this time this only includes compliance with required tag keys by resource type. Valid values are "error", "warning", and "disabled". When unset or "disabled", tag policy compliance will not be enforced by the provider. Can also be configured with the TF_AWS_TAG_POLICY_COMPLIANCE environment variable.
  final pulumi.Input<String>? tagPolicyCompliance;
  /// session token. A session token is only required if you are
  /// using temporary security credentials.
  final pulumi.Input<String>? token;
  /// The capacity of the AWS SDK's token bucket rate limiter.
  final pulumi.Input<int>? tokenBucketRateLimiterCapacity;
  /// Resolve an endpoint with DualStack capability
  final pulumi.Input<bool>? useDualstackEndpoint;
  /// Resolve an endpoint with FIPS capability
  final pulumi.Input<bool>? useFipsEndpoint;
  /// Product details to append to the User-Agent string sent in all AWS API calls.
  final pulumi.Input<List<String>>? userAgents;

  /// Creates a new [ProviderArgs].
  /// [accessKey] The access key for API operations. You can retrieve this
  /// [allowedAccountIds] Optional.
  /// [assumeRoleWithWebIdentity] Optional.
  /// [assumeRoles] Optional.
  /// [customCaBundle] File containing custom root and intermediate certificates. Can also be configured using the `AWS_CA_BUNDLE` environment variable. (Setting `ca_bundle` in the shared config file is not supported.)
  /// [defaultTags] Configuration block with settings to default resource tags across all resources.
  /// [ec2MetadataServiceEndpoint] Address of the EC2 metadata service endpoint to use. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT` environment variable.
  /// [ec2MetadataServiceEndpointMode] Protocol to use with EC2 metadata service endpoint.Valid values are `IPv4` and `IPv6`. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE` environment variable.
  /// [endpoints] Optional.
  /// [forbiddenAccountIds] Optional.
  /// [httpProxy] URL of a proxy to use for HTTP requests when accessing the AWS API. Can also be set using the `HTTP_PROXY` or `http_proxy` environment variables.
  /// [httpsProxy] URL of a proxy to use for HTTPS requests when accessing the AWS API. Can also be set using the `HTTPS_PROXY` or `https_proxy` environment variables.
  /// [ignoreTags] Configuration block with settings to ignore resource tags across all resources.
  /// [insecure] Explicitly allow the provider to perform "insecure" SSL requests. If omitted, default value is `false`
  /// [maxRetries] The maximum number of times an AWS API request is
  /// [noProxy] Comma-separated list of hosts that should not use HTTP or HTTPS proxies. Can also be set using the `NO_PROXY` or `no_proxy` environment variables.
  /// [profile] The profile for API operations. If not set, the default profile
  /// [region] The region where AWS operations will take place. Examples
  /// [retryMode] Specifies how retries are attempted. Valid values are `standard` and `adaptive`. Can also be configured using the `AWS_RETRY_MODE` environment variable.
  /// [s3UsEast1RegionalEndpoint] Specifies whether S3 API calls in the `us-east-1` region use the legacy global endpoint or a regional endpoint. Valid values are `legacy` or `regional`. Can also be configured using the `AWS_S3_US_EAST_1_REGIONAL_ENDPOINT` environment variable or the `s3_us_east_1_regional_endpoint` shared config file parameter
  /// [s3UsePathStyle] Set this to true to enable the request to use path-style addressing,
  /// [secretKey] The secret key for API operations. You can retrieve this
  /// [sharedConfigFiles] List of paths to shared config files. If not set, defaults to [~/.aws/config].
  /// [sharedCredentialsFiles] List of paths to shared credentials files. If not set, defaults to [~/.aws/credentials].
  /// [skipCredentialsValidation] Skip the credentials validation via STS API. Used for AWS API implementations that do not have STS available/implemented.
  /// [skipMetadataApiCheck] Skip the AWS Metadata API check. Used for AWS API implementations that do not have a metadata api endpoint.
  /// [skipRegionValidation] Skip static validation of region name. Used by users of alternative AWS-like APIs or users w/ access to regions that are not public (yet).
  /// [skipRequestingAccountId] Skip requesting the account ID. Used for AWS API implementations that do not have IAM/STS API and/or metadata API.
  /// [stsRegion] The region where AWS STS operations will take place. Examples
  /// [tagPolicyCompliance] The severity with which to enforce organizational tagging policies on resources managed by this provider instance. At this time this only includes compliance with required tag keys by resource type. Valid values are "error", "warning", and "disabled". When unset or "disabled", tag policy compliance will not be enforced by the provider. Can also be configured with the TF_AWS_TAG_POLICY_COMPLIANCE environment variable.
  /// [token] session token. A session token is only required if you are
  /// [tokenBucketRateLimiterCapacity] The capacity of the AWS SDK's token bucket rate limiter.
  /// [useDualstackEndpoint] Resolve an endpoint with DualStack capability
  /// [useFipsEndpoint] Resolve an endpoint with FIPS capability
  /// [userAgents] Product details to append to the User-Agent string sent in all AWS API calls.
  ProviderArgs({
    this.accessKey,
    this.allowedAccountIds,
    this.assumeRoleWithWebIdentity,
    this.assumeRoles,
    this.customCaBundle,
    this.defaultTags,
    this.ec2MetadataServiceEndpoint,
    this.ec2MetadataServiceEndpointMode,
    this.endpoints,
    this.forbiddenAccountIds,
    this.httpProxy,
    this.httpsProxy,
    this.ignoreTags,
    this.insecure,
    this.maxRetries,
    this.noProxy,
    this.profile,
    this.region,
    this.retryMode,
    this.s3UsEast1RegionalEndpoint,
    this.s3UsePathStyle,
    this.secretKey,
    this.sharedConfigFiles,
    this.sharedCredentialsFiles,
    this.skipCredentialsValidation,
    this.skipMetadataApiCheck,
    this.skipRegionValidation,
    this.skipRequestingAccountId,
    this.stsRegion,
    this.tagPolicyCompliance,
    this.token,
    this.tokenBucketRateLimiterCapacity,
    this.useDualstackEndpoint,
    this.useFipsEndpoint,
    this.userAgents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'allowedAccountIds': ?allowedAccountIds,
      'assumeRoleWithWebIdentity': ?pulumi.Input.mapOptionalInputValue<ProviderAssumeRoleWithWebIdentity, Map<String, dynamic>>(assumeRoleWithWebIdentity, (value) => value.toMap()),
      'assumeRoles': ?pulumi.Input.mapOptionalInputValue<List<ProviderAssumeRole>, List<Map<String, dynamic>>>(assumeRoles, (value) => pulumi.Input.encodeList<ProviderAssumeRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customCaBundle': ?customCaBundle,
      'defaultTags': ?pulumi.Input.mapOptionalInputValue<ProviderDefaultTags, Map<String, dynamic>>(defaultTags, (value) => value.toMap()),
      'ec2MetadataServiceEndpoint': ?ec2MetadataServiceEndpoint,
      'ec2MetadataServiceEndpointMode': ?ec2MetadataServiceEndpointMode,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<ProviderEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<ProviderEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forbiddenAccountIds': ?forbiddenAccountIds,
      'httpProxy': ?httpProxy,
      'httpsProxy': ?httpsProxy,
      'ignoreTags': ?pulumi.Input.mapOptionalInputValue<ProviderIgnoreTags, Map<String, dynamic>>(ignoreTags, (value) => value.toMap()),
      'insecure': ?insecure,
      'maxRetries': ?maxRetries,
      'noProxy': ?noProxy,
      'profile': ?profile,
      'region': ?region,
      'retryMode': ?retryMode,
      's3UsEast1RegionalEndpoint': ?s3UsEast1RegionalEndpoint,
      's3UsePathStyle': ?s3UsePathStyle,
      'secretKey': ?secretKey,
      'sharedConfigFiles': ?sharedConfigFiles,
      'sharedCredentialsFiles': ?sharedCredentialsFiles,
      'skipCredentialsValidation': ?skipCredentialsValidation,
      'skipMetadataApiCheck': ?skipMetadataApiCheck,
      'skipRegionValidation': ?skipRegionValidation,
      'skipRequestingAccountId': ?skipRequestingAccountId,
      'stsRegion': ?stsRegion,
      'tagPolicyCompliance': ?tagPolicyCompliance,
      'token': ?token,
      'tokenBucketRateLimiterCapacity': ?tokenBucketRateLimiterCapacity,
      'useDualstackEndpoint': ?useDualstackEndpoint,
      'useFipsEndpoint': ?useFipsEndpoint,
      'userAgents': ?userAgents,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      accessKey: map['accessKey'] == null ? null : ((map['accessKey'] as String).input()).input(),
      allowedAccountIds: map['allowedAccountIds'] == null ? null : (((map['allowedAccountIds'] as List).cast<String>()).input()).input(),
      assumeRoleWithWebIdentity: map['assumeRoleWithWebIdentity'] == null ? null : ((ProviderAssumeRoleWithWebIdentity.fromMap((map['assumeRoleWithWebIdentity']! as Map).cast<String, dynamic>())).input()).input(),
      assumeRoles: map['assumeRoles'] == null ? null : ((pulumi.Input.decodeList<ProviderAssumeRole>(map['assumeRoles']!, (value) => ProviderAssumeRole.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      customCaBundle: map['customCaBundle'] == null ? null : ((map['customCaBundle'] as String).input()).input(),
      defaultTags: map['defaultTags'] == null ? null : ((ProviderDefaultTags.fromMap((map['defaultTags']! as Map).cast<String, dynamic>())).input()).input(),
      ec2MetadataServiceEndpoint: map['ec2MetadataServiceEndpoint'] == null ? null : ((map['ec2MetadataServiceEndpoint'] as String).input()).input(),
      ec2MetadataServiceEndpointMode: map['ec2MetadataServiceEndpointMode'] == null ? null : ((map['ec2MetadataServiceEndpointMode'] as String).input()).input(),
      endpoints: map['endpoints'] == null ? null : ((pulumi.Input.decodeList<ProviderEndpoint>(map['endpoints']!, (value) => ProviderEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      forbiddenAccountIds: map['forbiddenAccountIds'] == null ? null : (((map['forbiddenAccountIds'] as List).cast<String>()).input()).input(),
      httpProxy: map['httpProxy'] == null ? null : ((map['httpProxy'] as String).input()).input(),
      httpsProxy: map['httpsProxy'] == null ? null : ((map['httpsProxy'] as String).input()).input(),
      ignoreTags: map['ignoreTags'] == null ? null : ((ProviderIgnoreTags.fromMap((map['ignoreTags']! as Map).cast<String, dynamic>())).input()).input(),
      insecure: map['insecure'] == null ? null : ((map['insecure'] as bool).input()).input(),
      maxRetries: map['maxRetries'] == null ? null : ((map['maxRetries'] as int).input()).input(),
      noProxy: map['noProxy'] == null ? null : ((map['noProxy'] as String).input()).input(),
      profile: map['profile'] == null ? null : ((map['profile'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      retryMode: map['retryMode'] == null ? null : ((map['retryMode'] as String).input()).input(),
      s3UsEast1RegionalEndpoint: map['s3UsEast1RegionalEndpoint'] == null ? null : ((map['s3UsEast1RegionalEndpoint'] as String).input()).input(),
      s3UsePathStyle: map['s3UsePathStyle'] == null ? null : ((map['s3UsePathStyle'] as bool).input()).input(),
      secretKey: map['secretKey'] == null ? null : ((map['secretKey'] as String).input()).input(),
      sharedConfigFiles: map['sharedConfigFiles'] == null ? null : (((map['sharedConfigFiles'] as List).cast<String>()).input()).input(),
      sharedCredentialsFiles: map['sharedCredentialsFiles'] == null ? null : (((map['sharedCredentialsFiles'] as List).cast<String>()).input()).input(),
      skipCredentialsValidation: map['skipCredentialsValidation'] == null ? null : ((map['skipCredentialsValidation'] as bool).input()).input(),
      skipMetadataApiCheck: map['skipMetadataApiCheck'] == null ? null : ((map['skipMetadataApiCheck'] as bool).input()).input(),
      skipRegionValidation: map['skipRegionValidation'] == null ? null : ((map['skipRegionValidation'] as bool).input()).input(),
      skipRequestingAccountId: map['skipRequestingAccountId'] == null ? null : ((map['skipRequestingAccountId'] as bool).input()).input(),
      stsRegion: map['stsRegion'] == null ? null : ((map['stsRegion'] as String).input()).input(),
      tagPolicyCompliance: map['tagPolicyCompliance'] == null ? null : ((map['tagPolicyCompliance'] as String).input()).input(),
      token: map['token'] == null ? null : ((map['token'] as String).input()).input(),
      tokenBucketRateLimiterCapacity: map['tokenBucketRateLimiterCapacity'] == null ? null : ((map['tokenBucketRateLimiterCapacity'] as int).input()).input(),
      useDualstackEndpoint: map['useDualstackEndpoint'] == null ? null : ((map['useDualstackEndpoint'] as bool).input()).input(),
      useFipsEndpoint: map['useFipsEndpoint'] == null ? null : ((map['useFipsEndpoint'] as bool).input()).input(),
      userAgents: map['userAgents'] == null ? null : (((map['userAgents'] as List).cast<String>()).input()).input(),
    );
  }
}

