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
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedAccountIds: (() { final guardedValue = map['allowedAccountIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      assumeRoleWithWebIdentity: (() { final guardedValue = map['assumeRoleWithWebIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderAssumeRoleWithWebIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assumeRoles: (() { final guardedValue = map['assumeRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProviderAssumeRole>(guardedValue, (value) => ProviderAssumeRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customCaBundle: (() { final guardedValue = map['customCaBundle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultTags: (() { final guardedValue = map['defaultTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderDefaultTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ec2MetadataServiceEndpoint: (() { final guardedValue = map['ec2MetadataServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ec2MetadataServiceEndpointMode: (() { final guardedValue = map['ec2MetadataServiceEndpointMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProviderEndpoint>(guardedValue, (value) => ProviderEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      forbiddenAccountIds: (() { final guardedValue = map['forbiddenAccountIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpProxy: (() { final guardedValue = map['httpProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsProxy: (() { final guardedValue = map['httpsProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreTags: (() { final guardedValue = map['ignoreTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderIgnoreTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      insecure: (() { final guardedValue = map['insecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      noProxy: (() { final guardedValue = map['noProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryMode: (() { final guardedValue = map['retryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3UsEast1RegionalEndpoint: (() { final guardedValue = map['s3UsEast1RegionalEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3UsePathStyle: (() { final guardedValue = map['s3UsePathStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretKey: (() { final guardedValue = map['secretKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedConfigFiles: (() { final guardedValue = map['sharedConfigFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sharedCredentialsFiles: (() { final guardedValue = map['sharedCredentialsFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      skipCredentialsValidation: (() { final guardedValue = map['skipCredentialsValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipMetadataApiCheck: (() { final guardedValue = map['skipMetadataApiCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipRegionValidation: (() { final guardedValue = map['skipRegionValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipRequestingAccountId: (() { final guardedValue = map['skipRequestingAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stsRegion: (() { final guardedValue = map['stsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagPolicyCompliance: (() { final guardedValue = map['tagPolicyCompliance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenBucketRateLimiterCapacity: (() { final guardedValue = map['tokenBucketRateLimiterCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      useDualstackEndpoint: (() { final guardedValue = map['useDualstackEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useFipsEndpoint: (() { final guardedValue = map['useFipsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userAgents: (() { final guardedValue = map['userAgents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

