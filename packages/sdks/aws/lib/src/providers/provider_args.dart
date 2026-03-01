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
    pulumi.Output<String>? accessKey,
    pulumi.Output<List<String>>? allowedAccountIds,
    pulumi.Output<ProviderAssumeRoleWithWebIdentity>? assumeRoleWithWebIdentity,
    pulumi.Output<List<ProviderAssumeRole>>? assumeRoles,
    pulumi.Output<String>? customCaBundle,
    pulumi.Output<ProviderDefaultTags>? defaultTags,
    pulumi.Output<String>? ec2MetadataServiceEndpoint,
    pulumi.Output<String>? ec2MetadataServiceEndpointMode,
    pulumi.Output<List<ProviderEndpoint>>? endpoints,
    pulumi.Output<List<String>>? forbiddenAccountIds,
    pulumi.Output<String>? httpProxy,
    pulumi.Output<String>? httpsProxy,
    pulumi.Output<ProviderIgnoreTags>? ignoreTags,
    pulumi.Output<bool>? insecure,
    pulumi.Output<int>? maxRetries,
    pulumi.Output<String>? noProxy,
    pulumi.Output<String>? profile,
    pulumi.Output<String>? region,
    pulumi.Output<String>? retryMode,
    pulumi.Output<String>? s3UsEast1RegionalEndpoint,
    pulumi.Output<bool>? s3UsePathStyle,
    pulumi.Output<String>? secretKey,
    pulumi.Output<List<String>>? sharedConfigFiles,
    pulumi.Output<List<String>>? sharedCredentialsFiles,
    pulumi.Output<bool>? skipCredentialsValidation,
    pulumi.Output<bool>? skipMetadataApiCheck,
    pulumi.Output<bool>? skipRegionValidation,
    pulumi.Output<bool>? skipRequestingAccountId,
    pulumi.Output<String>? stsRegion,
    pulumi.Output<String>? tagPolicyCompliance,
    pulumi.Output<String>? token,
    pulumi.Output<int>? tokenBucketRateLimiterCapacity,
    pulumi.Output<bool>? useDualstackEndpoint,
    pulumi.Output<bool>? useFipsEndpoint,
    pulumi.Output<List<String>>? userAgents,
  }) :
      accessKey = pulumi.Input.asOptionalInput<String>(accessKey),
      allowedAccountIds = pulumi.Input.asOptionalInput<List<String>>(allowedAccountIds),
      assumeRoleWithWebIdentity = pulumi.Input.asOptionalInput<ProviderAssumeRoleWithWebIdentity>(assumeRoleWithWebIdentity),
      assumeRoles = pulumi.Input.asOptionalInput<List<ProviderAssumeRole>>(assumeRoles),
      customCaBundle = pulumi.Input.asOptionalInput<String>(customCaBundle),
      defaultTags = pulumi.Input.asOptionalInput<ProviderDefaultTags>(defaultTags),
      ec2MetadataServiceEndpoint = pulumi.Input.asOptionalInput<String>(ec2MetadataServiceEndpoint),
      ec2MetadataServiceEndpointMode = pulumi.Input.asOptionalInput<String>(ec2MetadataServiceEndpointMode),
      endpoints = pulumi.Input.asOptionalInput<List<ProviderEndpoint>>(endpoints),
      forbiddenAccountIds = pulumi.Input.asOptionalInput<List<String>>(forbiddenAccountIds),
      httpProxy = pulumi.Input.asOptionalInput<String>(httpProxy),
      httpsProxy = pulumi.Input.asOptionalInput<String>(httpsProxy),
      ignoreTags = pulumi.Input.asOptionalInput<ProviderIgnoreTags>(ignoreTags),
      insecure = pulumi.Input.asOptionalInput<bool>(insecure),
      maxRetries = pulumi.Input.asOptionalInput<int>(maxRetries),
      noProxy = pulumi.Input.asOptionalInput<String>(noProxy),
      profile = pulumi.Input.asOptionalInput<String>(profile),
      region = pulumi.Input.asOptionalInput<String>(region),
      retryMode = pulumi.Input.asOptionalInput<String>(retryMode),
      s3UsEast1RegionalEndpoint = pulumi.Input.asOptionalInput<String>(s3UsEast1RegionalEndpoint),
      s3UsePathStyle = pulumi.Input.asOptionalInput<bool>(s3UsePathStyle),
      secretKey = pulumi.Input.asOptionalInput<String>(secretKey),
      sharedConfigFiles = pulumi.Input.asOptionalInput<List<String>>(sharedConfigFiles),
      sharedCredentialsFiles = pulumi.Input.asOptionalInput<List<String>>(sharedCredentialsFiles),
      skipCredentialsValidation = pulumi.Input.asOptionalInput<bool>(skipCredentialsValidation),
      skipMetadataApiCheck = pulumi.Input.asOptionalInput<bool>(skipMetadataApiCheck),
      skipRegionValidation = pulumi.Input.asOptionalInput<bool>(skipRegionValidation),
      skipRequestingAccountId = pulumi.Input.asOptionalInput<bool>(skipRequestingAccountId),
      stsRegion = pulumi.Input.asOptionalInput<String>(stsRegion),
      tagPolicyCompliance = pulumi.Input.asOptionalInput<String>(tagPolicyCompliance),
      token = pulumi.Input.asOptionalInput<String>(token),
      tokenBucketRateLimiterCapacity = pulumi.Input.asOptionalInput<int>(tokenBucketRateLimiterCapacity),
      useDualstackEndpoint = pulumi.Input.asOptionalInput<bool>(useDualstackEndpoint),
      useFipsEndpoint = pulumi.Input.asOptionalInput<bool>(useFipsEndpoint),
      userAgents = pulumi.Input.asOptionalInput<List<String>>(userAgents);

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
      accessKey: map['accessKey'] == null ? null : pulumi.Output.create<String>(map['accessKey'] as String),
      allowedAccountIds: map['allowedAccountIds'] == null ? null : pulumi.Output.create<List<String>>((map['allowedAccountIds'] as List).cast<String>()),
      assumeRoleWithWebIdentity: map['assumeRoleWithWebIdentity'] == null ? null : pulumi.Output.create<ProviderAssumeRoleWithWebIdentity>(ProviderAssumeRoleWithWebIdentity.fromMap((map['assumeRoleWithWebIdentity'] as Map).cast<String, dynamic>())),
      assumeRoles: map['assumeRoles'] == null ? null : pulumi.Output.create<List<ProviderAssumeRole>>(pulumi.Input.decodeList<ProviderAssumeRole>(map['assumeRoles'], (value) => ProviderAssumeRole.fromMap((value as Map).cast<String, dynamic>()))),
      customCaBundle: map['customCaBundle'] == null ? null : pulumi.Output.create<String>(map['customCaBundle'] as String),
      defaultTags: map['defaultTags'] == null ? null : pulumi.Output.create<ProviderDefaultTags>(ProviderDefaultTags.fromMap((map['defaultTags'] as Map).cast<String, dynamic>())),
      ec2MetadataServiceEndpoint: map['ec2MetadataServiceEndpoint'] == null ? null : pulumi.Output.create<String>(map['ec2MetadataServiceEndpoint'] as String),
      ec2MetadataServiceEndpointMode: map['ec2MetadataServiceEndpointMode'] == null ? null : pulumi.Output.create<String>(map['ec2MetadataServiceEndpointMode'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<ProviderEndpoint>>(pulumi.Input.decodeList<ProviderEndpoint>(map['endpoints'], (value) => ProviderEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      forbiddenAccountIds: map['forbiddenAccountIds'] == null ? null : pulumi.Output.create<List<String>>((map['forbiddenAccountIds'] as List).cast<String>()),
      httpProxy: map['httpProxy'] == null ? null : pulumi.Output.create<String>(map['httpProxy'] as String),
      httpsProxy: map['httpsProxy'] == null ? null : pulumi.Output.create<String>(map['httpsProxy'] as String),
      ignoreTags: map['ignoreTags'] == null ? null : pulumi.Output.create<ProviderIgnoreTags>(ProviderIgnoreTags.fromMap((map['ignoreTags'] as Map).cast<String, dynamic>())),
      insecure: map['insecure'] == null ? null : pulumi.Output.create<bool>(map['insecure'] as bool),
      maxRetries: map['maxRetries'] == null ? null : pulumi.Output.create<int>(map['maxRetries'] as int),
      noProxy: map['noProxy'] == null ? null : pulumi.Output.create<String>(map['noProxy'] as String),
      profile: map['profile'] == null ? null : pulumi.Output.create<String>(map['profile'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retryMode: map['retryMode'] == null ? null : pulumi.Output.create<String>(map['retryMode'] as String),
      s3UsEast1RegionalEndpoint: map['s3UsEast1RegionalEndpoint'] == null ? null : pulumi.Output.create<String>(map['s3UsEast1RegionalEndpoint'] as String),
      s3UsePathStyle: map['s3UsePathStyle'] == null ? null : pulumi.Output.create<bool>(map['s3UsePathStyle'] as bool),
      secretKey: map['secretKey'] == null ? null : pulumi.Output.create<String>(map['secretKey'] as String),
      sharedConfigFiles: map['sharedConfigFiles'] == null ? null : pulumi.Output.create<List<String>>((map['sharedConfigFiles'] as List).cast<String>()),
      sharedCredentialsFiles: map['sharedCredentialsFiles'] == null ? null : pulumi.Output.create<List<String>>((map['sharedCredentialsFiles'] as List).cast<String>()),
      skipCredentialsValidation: map['skipCredentialsValidation'] == null ? null : pulumi.Output.create<bool>(map['skipCredentialsValidation'] as bool),
      skipMetadataApiCheck: map['skipMetadataApiCheck'] == null ? null : pulumi.Output.create<bool>(map['skipMetadataApiCheck'] as bool),
      skipRegionValidation: map['skipRegionValidation'] == null ? null : pulumi.Output.create<bool>(map['skipRegionValidation'] as bool),
      skipRequestingAccountId: map['skipRequestingAccountId'] == null ? null : pulumi.Output.create<bool>(map['skipRequestingAccountId'] as bool),
      stsRegion: map['stsRegion'] == null ? null : pulumi.Output.create<String>(map['stsRegion'] as String),
      tagPolicyCompliance: map['tagPolicyCompliance'] == null ? null : pulumi.Output.create<String>(map['tagPolicyCompliance'] as String),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
      tokenBucketRateLimiterCapacity: map['tokenBucketRateLimiterCapacity'] == null ? null : pulumi.Output.create<int>(map['tokenBucketRateLimiterCapacity'] as int),
      useDualstackEndpoint: map['useDualstackEndpoint'] == null ? null : pulumi.Output.create<bool>(map['useDualstackEndpoint'] as bool),
      useFipsEndpoint: map['useFipsEndpoint'] == null ? null : pulumi.Output.create<bool>(map['useFipsEndpoint'] as bool),
      userAgents: map['userAgents'] == null ? null : pulumi.Output.create<List<String>>((map['userAgents'] as List).cast<String>()),
    );
  }
}

