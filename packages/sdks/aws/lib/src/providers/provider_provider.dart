import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the aws package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// The access key for API operations. You can retrieve this
  /// from the 'Security & Credentials' section of the AWS console.
  late final pulumi.Output<String?> accessKey;
  /// File containing custom root and intermediate certificates. Can also be configured using the `AWS_CA_BUNDLE` environment variable. (Setting `caBundle` in the shared config file is not supported.)
  late final pulumi.Output<String?> customCaBundle;
  /// Address of the EC2 metadata service endpoint to use. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT` environment variable.
  late final pulumi.Output<String?> ec2MetadataServiceEndpoint;
  /// Protocol to use with EC2 metadata service endpoint.Valid values are `IPv4` and `IPv6`. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE` environment variable.
  late final pulumi.Output<String?> ec2MetadataServiceEndpointMode;
  /// URL of a proxy to use for HTTP requests when accessing the AWS API. Can also be set using the `HTTP_PROXY` or `httpProxy` environment variables.
  late final pulumi.Output<String?> httpProxy;
  /// URL of a proxy to use for HTTPS requests when accessing the AWS API. Can also be set using the `HTTPS_PROXY` or `httpsProxy` environment variables.
  late final pulumi.Output<String?> httpsProxy;
  /// Comma-separated list of hosts that should not use HTTP or HTTPS proxies. Can also be set using the `NO_PROXY` or `noProxy` environment variables.
  late final pulumi.Output<String?> noProxy;
  /// The profile for API operations. If not set, the default profile
  /// created with `aws configure` will be used.
  late final pulumi.Output<String?> profile;
  /// The region where AWS operations will take place. Examples
  /// are us-east-1, us-west-2, etc.
  late final pulumi.Output<String?> region;
  /// Specifies how retries are attempted. Valid values are `standard` and `adaptive`. Can also be configured using the `AWS_RETRY_MODE` environment variable.
  late final pulumi.Output<String?> retryMode;
  /// Specifies whether S3 API calls in the `us-east-1` region use the legacy global endpoint or a regional endpoint. Valid values are `legacy` or `regional`. Can also be configured using the `AWS_S3_US_EAST_1_REGIONAL_ENDPOINT` environment variable or the `s3UsEast1RegionalEndpoint` shared config file parameter
  late final pulumi.Output<String?> s3UsEast1RegionalEndpoint;
  /// The secret key for API operations. You can retrieve this
  /// from the 'Security & Credentials' section of the AWS console.
  late final pulumi.Output<String?> secretKey;
  /// The region where AWS STS operations will take place. Examples
  /// are us-east-1 and us-west-2.
  late final pulumi.Output<String?> stsRegion;
  /// The severity with which to enforce organizational tagging policies on resources managed by this provider instance. At this time this only includes compliance with required tag keys by resource type. Valid values are "error", "warning", and "disabled". When unset or "disabled", tag policy compliance will not be enforced by the provider. Can also be configured with the TF_AWS_TAG_POLICY_COMPLIANCE environment variable.
  late final pulumi.Output<String?> tagPolicyCompliance;
  /// session token. A session token is only required if you are
  /// using temporary security credentials.
  late final pulumi.Output<String?> token;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessKey = registerOutput<String?>('accessKey');
    customCaBundle = registerOutput<String?>('customCaBundle');
    ec2MetadataServiceEndpoint = registerOutput<String?>('ec2MetadataServiceEndpoint');
    ec2MetadataServiceEndpointMode = registerOutput<String?>('ec2MetadataServiceEndpointMode');
    httpProxy = registerOutput<String?>('httpProxy');
    httpsProxy = registerOutput<String?>('httpsProxy');
    noProxy = registerOutput<String?>('noProxy');
    profile = registerOutput<String?>('profile');
    region = registerOutput<String?>('region');
    retryMode = registerOutput<String?>('retryMode');
    s3UsEast1RegionalEndpoint = registerOutput<String?>('s3UsEast1RegionalEndpoint');
    secretKey = registerOutput<String?>('secretKey');
    stsRegion = registerOutput<String?>('stsRegion');
    tagPolicyCompliance = registerOutput<String?>('tagPolicyCompliance');
    token = registerOutput<String?>('token');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:aws/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
