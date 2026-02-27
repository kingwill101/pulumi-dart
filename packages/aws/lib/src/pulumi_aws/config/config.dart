// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;
import 'assume_role_with_web_identity/assume_role_with_web_identity.dart';
import 'assume_roles/assume_roles.dart';
import 'default_tags/default_tags.dart';
import 'endpoints/endpoints.dart';
import 'ignore_tags/ignore_tags.dart';

int? _parseIntConfig(String? value) {
  if (value == null) {
    return null;
  }
  return int.tryParse(value);
}

double? _parseDoubleConfig(String? value) {
  if (value == null) {
    return null;
  }
  return double.tryParse(value);
}

bool? _parseBoolConfig(String? value) {
  if (value == null) {
    return null;
  }

  switch (value.toLowerCase()) {
    case 'true':
    case '1':
      return true;
    case 'false':
    case '0':
      return false;
    default:
      return null;
  }
}

/// Configuration values for the aws package.
class AwsConfig {
  const AwsConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// The access key for API operations. You can retrieve this
  /// from the 'Security & Credentials' section of the AWS console.
  String? get accessKey {
    final raw = _raw('accessKey');
    return raw;
  }

  bool get accessKeyIsSecret => _isSecret('accessKey');

  List<String>? get allowedAccountIds {
    final raw = _raw('allowedAccountIds');
    return raw == null ? null : (jsonDecode(raw) as List).cast<String>();
  }

  bool get allowedAccountIdsIsSecret => _isSecret('allowedAccountIds');

  AssumeRoleWithWebIdentity? get assumeRoleWithWebIdentity {
    final raw = _raw('assumeRoleWithWebIdentity');
    return raw == null
        ? null
        : AssumeRoleWithWebIdentity.fromMap(
            (jsonDecode(raw) as Map).cast<String, dynamic>());
  }

  bool get assumeRoleWithWebIdentityIsSecret =>
      _isSecret('assumeRoleWithWebIdentity');

  List<AssumeRoles>? get assumeRoles {
    final raw = _raw('assumeRoles');
    return raw == null
        ? null
        : pulumi.Input.decodeList<AssumeRoles>(
            jsonDecode(raw),
            (value) =>
                AssumeRoles.fromMap((value as Map).cast<String, dynamic>()));
  }

  bool get assumeRolesIsSecret => _isSecret('assumeRoles');

  /// File containing custom root and intermediate certificates. Can also be configured using the `AWS_CA_BUNDLE` environment variable. (Setting `ca_bundle` in the shared config file is not supported.)
  String? get customCaBundle {
    final raw = _raw('customCaBundle');
    return raw;
  }

  bool get customCaBundleIsSecret => _isSecret('customCaBundle');

  /// Configuration block with settings to default resource tags across all resources.
  DefaultTags? get defaultTags {
    final raw = _raw('defaultTags');
    return raw == null
        ? null
        : DefaultTags.fromMap((jsonDecode(raw) as Map).cast<String, dynamic>());
  }

  bool get defaultTagsIsSecret => _isSecret('defaultTags');

  /// Address of the EC2 metadata service endpoint to use. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT` environment variable.
  String? get ec2MetadataServiceEndpoint {
    final raw = _raw('ec2MetadataServiceEndpoint');
    return raw;
  }

  bool get ec2MetadataServiceEndpointIsSecret =>
      _isSecret('ec2MetadataServiceEndpoint');

  /// Protocol to use with EC2 metadata service endpoint.Valid values are `IPv4` and `IPv6`. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE` environment variable.
  String? get ec2MetadataServiceEndpointMode {
    final raw = _raw('ec2MetadataServiceEndpointMode');
    return raw;
  }

  bool get ec2MetadataServiceEndpointModeIsSecret =>
      _isSecret('ec2MetadataServiceEndpointMode');

  List<Endpoints>? get endpoints {
    final raw = _raw('endpoints');
    return raw == null
        ? null
        : pulumi.Input.decodeList<Endpoints>(
            jsonDecode(raw),
            (value) =>
                Endpoints.fromMap((value as Map).cast<String, dynamic>()));
  }

  bool get endpointsIsSecret => _isSecret('endpoints');

  List<String>? get forbiddenAccountIds {
    final raw = _raw('forbiddenAccountIds');
    return raw == null ? null : (jsonDecode(raw) as List).cast<String>();
  }

  bool get forbiddenAccountIdsIsSecret => _isSecret('forbiddenAccountIds');

  /// URL of a proxy to use for HTTP requests when accessing the AWS API. Can also be set using the `HTTP_PROXY` or `http_proxy` environment variables.
  String? get httpProxy {
    final raw = _raw('httpProxy');
    return raw;
  }

  bool get httpProxyIsSecret => _isSecret('httpProxy');

  /// URL of a proxy to use for HTTPS requests when accessing the AWS API. Can also be set using the `HTTPS_PROXY` or `https_proxy` environment variables.
  String? get httpsProxy {
    final raw = _raw('httpsProxy');
    return raw;
  }

  bool get httpsProxyIsSecret => _isSecret('httpsProxy');

  /// Configuration block with settings to ignore resource tags across all resources.
  IgnoreTags? get ignoreTags {
    final raw = _raw('ignoreTags');
    return raw == null
        ? null
        : IgnoreTags.fromMap((jsonDecode(raw) as Map).cast<String, dynamic>());
  }

  bool get ignoreTagsIsSecret => _isSecret('ignoreTags');

  /// Explicitly allow the provider to perform "insecure" SSL requests. If omitted, default value is `false`
  bool? get insecure {
    final raw = _raw('insecure');
    return _parseBoolConfig(raw);
  }

  bool get insecureIsSecret => _isSecret('insecure');

  /// The maximum number of times an AWS API request is
  /// being executed. If the API request still fails, an error is
  /// thrown.
  int? get maxRetries {
    final raw = _raw('maxRetries');
    return _parseIntConfig(raw);
  }

  bool get maxRetriesIsSecret => _isSecret('maxRetries');

  /// Comma-separated list of hosts that should not use HTTP or HTTPS proxies. Can also be set using the `NO_PROXY` or `no_proxy` environment variables.
  String? get noProxy {
    final raw = _raw('noProxy');
    return raw;
  }

  bool get noProxyIsSecret => _isSecret('noProxy');

  /// The profile for API operations. If not set, the default profile
  /// created with `aws configure` will be used.
  String? get profile {
    final raw = _raw('profile');
    return raw;
  }

  bool get profileIsSecret => _isSecret('profile');

  /// The region where AWS operations will take place. Examples
  /// are us-east-1, us-west-2, etc.
  String? get region {
    final raw = _raw('region');
    return raw;
  }

  bool get regionIsSecret => _isSecret('region');

  /// Specifies how retries are attempted. Valid values are `standard` and `adaptive`. Can also be configured using the `AWS_RETRY_MODE` environment variable.
  String? get retryMode {
    final raw = _raw('retryMode');
    return raw;
  }

  bool get retryModeIsSecret => _isSecret('retryMode');

  /// Specifies whether S3 API calls in the `us-east-1` region use the legacy global endpoint or a regional endpoint. Valid values are `legacy` or `regional`. Can also be configured using the `AWS_S3_US_EAST_1_REGIONAL_ENDPOINT` environment variable or the `s3_us_east_1_regional_endpoint` shared config file parameter
  String? get s3UsEast1RegionalEndpoint {
    final raw = _raw('s3UsEast1RegionalEndpoint');
    return raw;
  }

  bool get s3UsEast1RegionalEndpointIsSecret =>
      _isSecret('s3UsEast1RegionalEndpoint');

  /// Set this to true to enable the request to use path-style addressing,
  /// i.e., https://s3.amazonaws.com/BUCKET/KEY. By default, the S3 client will
  /// use virtual hosted bucket addressing when possible
  /// (https://BUCKET.s3.amazonaws.com/KEY). Specific to the Amazon S3 service.
  bool? get s3UsePathStyle {
    final raw = _raw('s3UsePathStyle');
    return _parseBoolConfig(raw);
  }

  bool get s3UsePathStyleIsSecret => _isSecret('s3UsePathStyle');

  /// The secret key for API operations. You can retrieve this
  /// from the 'Security & Credentials' section of the AWS console.
  String? get secretKey {
    final raw = _raw('secretKey');
    return raw;
  }

  bool get secretKeyIsSecret => _isSecret('secretKey');

  /// List of paths to shared config files. If not set, defaults to [~/.aws/config].
  List<String>? get sharedConfigFiles {
    final raw = _raw('sharedConfigFiles');
    return raw == null ? null : (jsonDecode(raw) as List).cast<String>();
  }

  bool get sharedConfigFilesIsSecret => _isSecret('sharedConfigFiles');

  /// List of paths to shared credentials files. If not set, defaults to [~/.aws/credentials].
  List<String>? get sharedCredentialsFiles {
    final raw = _raw('sharedCredentialsFiles');
    return raw == null ? null : (jsonDecode(raw) as List).cast<String>();
  }

  bool get sharedCredentialsFilesIsSecret =>
      _isSecret('sharedCredentialsFiles');

  /// Skip the credentials validation via STS API. Used for AWS API implementations that do not have STS available/implemented.
  bool? get skipCredentialsValidation {
    final raw = _raw('skipCredentialsValidation');
    return _parseBoolConfig(raw);
  }

  bool get skipCredentialsValidationIsSecret =>
      _isSecret('skipCredentialsValidation');

  /// Skip the AWS Metadata API check. Used for AWS API implementations that do not have a metadata api endpoint.
  bool? get skipMetadataApiCheck {
    final raw = _raw('skipMetadataApiCheck');
    return _parseBoolConfig(raw);
  }

  bool get skipMetadataApiCheckIsSecret => _isSecret('skipMetadataApiCheck');

  /// Skip static validation of region name. Used by users of alternative AWS-like APIs or users w/ access to regions that are not public (yet).
  bool? get skipRegionValidation {
    final raw = _raw('skipRegionValidation');
    return _parseBoolConfig(raw);
  }

  bool get skipRegionValidationIsSecret => _isSecret('skipRegionValidation');

  /// Skip requesting the account ID. Used for AWS API implementations that do not have IAM/STS API and/or metadata API.
  bool? get skipRequestingAccountId {
    final raw = _raw('skipRequestingAccountId');
    return _parseBoolConfig(raw);
  }

  bool get skipRequestingAccountIdIsSecret =>
      _isSecret('skipRequestingAccountId');

  /// The region where AWS STS operations will take place. Examples
  /// are us-east-1 and us-west-2.
  String? get stsRegion {
    final raw = _raw('stsRegion');
    return raw;
  }

  bool get stsRegionIsSecret => _isSecret('stsRegion');

  /// The severity with which to enforce organizational tagging policies on resources managed by this provider instance. At this time this only includes compliance with required tag keys by resource type. Valid values are "error", "warning", and "disabled". When unset or "disabled", tag policy compliance will not be enforced by the provider. Can also be configured with the TF_AWS_TAG_POLICY_COMPLIANCE environment variable.
  String? get tagPolicyCompliance {
    final raw = _raw('tagPolicyCompliance');
    return raw;
  }

  bool get tagPolicyComplianceIsSecret => _isSecret('tagPolicyCompliance');

  /// session token. A session token is only required if you are
  /// using temporary security credentials.
  String? get token {
    final raw = _raw('token');
    return raw;
  }

  bool get tokenIsSecret => _isSecret('token');

  /// The capacity of the AWS SDK's token bucket rate limiter.
  int? get tokenBucketRateLimiterCapacity {
    final raw = _raw('tokenBucketRateLimiterCapacity');
    return _parseIntConfig(raw);
  }

  bool get tokenBucketRateLimiterCapacityIsSecret =>
      _isSecret('tokenBucketRateLimiterCapacity');

  /// Resolve an endpoint with DualStack capability
  bool? get useDualstackEndpoint {
    final raw = _raw('useDualstackEndpoint');
    return _parseBoolConfig(raw);
  }

  bool get useDualstackEndpointIsSecret => _isSecret('useDualstackEndpoint');

  /// Resolve an endpoint with FIPS capability
  bool? get useFipsEndpoint {
    final raw = _raw('useFipsEndpoint');
    return _parseBoolConfig(raw);
  }

  bool get useFipsEndpointIsSecret => _isSecret('useFipsEndpoint');

  /// Product details to append to the User-Agent string sent in all AWS API calls.
  List<String>? get userAgents {
    final raw = _raw('userAgents');
    return raw == null ? null : (jsonDecode(raw) as List).cast<String>();
  }

  bool get userAgentsIsSecret => _isSecret('userAgents');
}

final config = AwsConfig();
