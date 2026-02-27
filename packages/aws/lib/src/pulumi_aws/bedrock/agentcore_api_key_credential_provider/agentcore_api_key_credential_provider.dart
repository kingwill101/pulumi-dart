import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_api_key_credential_provider_api_key_secret_arn/agentcore_api_key_credential_provider_api_key_secret_arn.dart';
import 'agentcore_api_key_credential_provider_args.dart';

/// Manages an AWS Bedrock AgentCore API Key Credential Provider. API Key credential providers enable secure authentication with external services that use API key-based authentication for agent runtimes.
///
/// > **Note:** Write-Only argument `api_key_wo` is available to use in place of `api_key`. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Write-Only API Key (Recommended for Production)
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore API Key Credential Provider using the provider name. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreApiKeyCredentialProvider:AgentcoreApiKeyCredentialProvider example example-api-key-provider
/// ```
class AgentcoreApiKeyCredentialProvider extends pulumi.CustomResource {
  /// API key value. Cannot be used with `api_key_wo`. This value will be visible in pulumi preview outputs and logs.
  ///
  /// **Write-Only API Key (choose one approach):**
  late final pulumi.Output<String?> apiKey;

  /// ARN of the AWS Secrets Manager secret containing the API key.
  late final pulumi
      .Output<List<AgentcoreApiKeyCredentialProviderApiKeySecretArn>>
      apiKeySecretArns;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only API key value. Cannot be used with `api_key`. Must be used together with `api_key_wo_version`.
  late final pulumi.Output<String?> apiKeyWo;

  /// Used together with `api_key_wo` to trigger an update. Increment this value when an update to `api_key_wo` is required.
  late final pulumi.Output<int?> apiKeyWoVersion;

  /// ARN of the API Key credential provider.
  late final pulumi.Output<String> credentialProviderArn;

  /// Name of the API Key credential provider. Forces replacement when changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ///
  /// **Standard API Key (choose one approach):**
  late final pulumi.Output<String> region;

  AgentcoreApiKeyCredentialProvider(
    String name, {
    AgentcoreApiKeyCredentialProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreApiKeyCredentialProvider:AgentcoreApiKeyCredentialProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String?>('apiKey');
    this.apiKeySecretArns =
        registerOutput<List<AgentcoreApiKeyCredentialProviderApiKeySecretArn>>(
            'apiKeySecretArns');
    this.apiKeyWo = registerOutput<String?>('apiKeyWo');
    this.apiKeyWoVersion = registerOutput<int?>('apiKeyWoVersion');
    this.credentialProviderArn =
        registerOutput<String>('credentialProviderArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
