import 'package:pulumi/pulumi.dart';
import '../agentcore_oauth2_credential_provider_client_secret_arn/agentcore_oauth2_credential_provider_client_secret_arn.dart';
import '../agentcore_oauth2_credential_provider_oauth2_provider_config/agentcore_oauth2_credential_provider_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_args.dart';

/// Manages an AWS Bedrock AgentCore OAuth2 Credential Provider. OAuth2 credential providers enable secure authentication with external OAuth2/OpenID Connect identity providers for agent runtimes.
///
/// > **Note:** Write-Only arguments `client_id_wo` and `client_secret_wo` are available to use in place of `client_id` and `client_secret`. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
///
/// ## Example Usage
///
/// ### GitHub OAuth Provider
///
///
///
/// ### Custom OAuth Provider with Discovery URL
///
///
///
/// ### Custom OAuth Provider with Authorization Server Metadata
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore OAuth2 Credential Provider using the provider name. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreOauth2CredentialProvider:AgentcoreOauth2CredentialProvider example oauth2-provider-name
/// ```
class AgentcoreOauth2CredentialProvider extends CustomResource {
  /// ARN of the AWS Secrets Manager secret containing the client secret.
  late final Output<List<AgentcoreOauth2CredentialProviderClientSecretArn>>
      clientSecretArns;

  /// ARN of the OAuth2 credential provider.
  late final Output<String> credentialProviderArn;

  /// Vendor of the OAuth2 credential provider. Valid values: `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `Microsoft`, `SalesforceOauth2`, `SlackOauth2`.
  late final Output<String> credentialProviderVendor;

  /// Name of the OAuth2 credential provider.
  late final Output<String> name;

  /// OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2_provider_config` below.
  ///
  /// The following arguments are optional:
  late final Output<AgentcoreOauth2CredentialProviderOauth2ProviderConfig?>
      oauth2ProviderConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AgentcoreOauth2CredentialProvider(
    String name, {
    AgentcoreOauth2CredentialProviderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreOauth2CredentialProvider:AgentcoreOauth2CredentialProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientSecretArns =
        registerOutput<List<AgentcoreOauth2CredentialProviderClientSecretArn>>(
            'clientSecretArns');
    this.credentialProviderArn =
        registerOutput<String>('credentialProviderArn');
    this.credentialProviderVendor =
        registerOutput<String>('credentialProviderVendor');
    this.name = registerOutput<String>('name');
    this.oauth2ProviderConfig =
        registerOutput<AgentcoreOauth2CredentialProviderOauth2ProviderConfig?>(
            'oauth2ProviderConfig');
    this.region = registerOutput<String>('region');
  }
}
