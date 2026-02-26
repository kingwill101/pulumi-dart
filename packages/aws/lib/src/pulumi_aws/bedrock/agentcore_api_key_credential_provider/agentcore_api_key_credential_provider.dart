import 'package:pulumi/pulumi.dart';
import '../agentcore_api_key_credential_provider_api_key_secret_arn/agentcore_api_key_credential_provider_api_key_secret_arn.dart';
import 'agentcore_api_key_credential_provider_args.dart';

/// Manages an AWS Bedrock AgentCore API Key Credential Provider. API Key credential providers enable secure authentication with external services that use API key-based authentication for agent runtimes.
///
/// > **Note:** Write-Only argument <span pulumi-lang-nodejs="`apiKeyWo`" pulumi-lang-dotnet="`ApiKeyWo`" pulumi-lang-go="`apiKeyWo`" pulumi-lang-python="`api_key_wo`" pulumi-lang-yaml="`apiKeyWo`" pulumi-lang-java="`apiKeyWo`">`api_key_wo`</span> is available to use in place of <span pulumi-lang-nodejs="`apiKey`" pulumi-lang-dotnet="`ApiKey`" pulumi-lang-go="`apiKey`" pulumi-lang-python="`api_key`" pulumi-lang-yaml="`apiKey`" pulumi-lang-java="`apiKey`">`api_key`</span>. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreApiKeyCredentialProvider("example", {
/// name: "example-api-key-provider",
/// apiKey: "your-api-key-here",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreApiKeyCredentialProvider("example",
/// name="example-api-key-provider",
/// api_key="your-api-key-here")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Bedrock.AgentcoreApiKeyCredentialProvider("example", new()
/// {
/// Name = "example-api-key-provider",
/// ApiKey = "your-api-key-here",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bedrock.NewAgentcoreApiKeyCredentialProvider(ctx, "example", &bedrock.AgentcoreApiKeyCredentialProviderArgs{
/// Name:   pulumi.String("example-api-key-provider"),
/// ApiKey: pulumi.String("your-api-key-here"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreApiKeyCredentialProvider;
/// import com.pulumi.aws.bedrock.AgentcoreApiKeyCredentialProviderArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new AgentcoreApiKeyCredentialProvider("example", AgentcoreApiKeyCredentialProviderArgs.builder()
/// .name("example-api-key-provider")
/// .apiKey("your-api-key-here")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:bedrock:AgentcoreApiKeyCredentialProvider
/// properties:
/// name: example-api-key-provider
/// apiKey: your-api-key-here
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Write-Only API Key (Recommended for Production)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreApiKeyCredentialProvider("example", {
/// name: "example-api-key-provider",
/// apiKeyWo: "your-api-key-here",
/// apiKeyWoVersion: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreApiKeyCredentialProvider("example",
/// name="example-api-key-provider",
/// api_key_wo="your-api-key-here",
/// api_key_wo_version=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Bedrock.AgentcoreApiKeyCredentialProvider("example", new()
/// {
/// Name = "example-api-key-provider",
/// ApiKeyWo = "your-api-key-here",
/// ApiKeyWoVersion = 1,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bedrock.NewAgentcoreApiKeyCredentialProvider(ctx, "example", &bedrock.AgentcoreApiKeyCredentialProviderArgs{
/// Name:            pulumi.String("example-api-key-provider"),
/// ApiKeyWo:        pulumi.String("your-api-key-here"),
/// ApiKeyWoVersion: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreApiKeyCredentialProvider;
/// import com.pulumi.aws.bedrock.AgentcoreApiKeyCredentialProviderArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new AgentcoreApiKeyCredentialProvider("example", AgentcoreApiKeyCredentialProviderArgs.builder()
/// .name("example-api-key-provider")
/// .apiKeyWo("your-api-key-here")
/// .apiKeyWoVersion(1)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:bedrock:AgentcoreApiKeyCredentialProvider
/// properties:
/// name: example-api-key-provider
/// apiKeyWo: your-api-key-here
/// apiKeyWoVersion: 1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore API Key Credential Provider using the provider name. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreApiKeyCredentialProvider:AgentcoreApiKeyCredentialProvider example example-api-key-provider
/// ```
class AgentcoreApiKeyCredentialProvider extends CustomResource {
  /// API key value. Cannot be used with <span pulumi-lang-nodejs="`apiKeyWo`" pulumi-lang-dotnet="`ApiKeyWo`" pulumi-lang-go="`apiKeyWo`" pulumi-lang-python="`api_key_wo`" pulumi-lang-yaml="`apiKeyWo`" pulumi-lang-java="`apiKeyWo`">`api_key_wo`</span>. This value will be visible in pulumi preview outputs and logs.
  ///
  /// **Write-Only API Key (choose one approach):**
  late final Output<String?> apiKey;

  /// ARN of the AWS Secrets Manager secret containing the API key.
  late final Output<List<AgentcoreApiKeyCredentialProviderApiKeySecretArn>>
      apiKeySecretArns;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only API key value. Cannot be used with <span pulumi-lang-nodejs="`apiKey`" pulumi-lang-dotnet="`ApiKey`" pulumi-lang-go="`apiKey`" pulumi-lang-python="`api_key`" pulumi-lang-yaml="`apiKey`" pulumi-lang-java="`apiKey`">`api_key`</span>. Must be used together with <span pulumi-lang-nodejs="`apiKeyWoVersion`" pulumi-lang-dotnet="`ApiKeyWoVersion`" pulumi-lang-go="`apiKeyWoVersion`" pulumi-lang-python="`api_key_wo_version`" pulumi-lang-yaml="`apiKeyWoVersion`" pulumi-lang-java="`apiKeyWoVersion`">`api_key_wo_version`</span>.
  late final Output<String?> apiKeyWo;

  /// Used together with <span pulumi-lang-nodejs="`apiKeyWo`" pulumi-lang-dotnet="`ApiKeyWo`" pulumi-lang-go="`apiKeyWo`" pulumi-lang-python="`api_key_wo`" pulumi-lang-yaml="`apiKeyWo`" pulumi-lang-java="`apiKeyWo`">`api_key_wo`</span> to trigger an update. Increment this value when an update to <span pulumi-lang-nodejs="`apiKeyWo`" pulumi-lang-dotnet="`ApiKeyWo`" pulumi-lang-go="`apiKeyWo`" pulumi-lang-python="`api_key_wo`" pulumi-lang-yaml="`apiKeyWo`" pulumi-lang-java="`apiKeyWo`">`api_key_wo`</span> is required.
  late final Output<int?> apiKeyWoVersion;

  /// ARN of the API Key credential provider.
  late final Output<String> credentialProviderArn;

  /// Name of the API Key credential provider. Forces replacement when changed.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ///
  /// **Standard API Key (choose one approach):**
  late final Output<String> region;

  AgentcoreApiKeyCredentialProvider(
    String name, {
    AgentcoreApiKeyCredentialProviderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreApiKeyCredentialProvider:AgentcoreApiKeyCredentialProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiKey = Output.createUnknown<String?>();
    this.apiKeySecretArns = Output.createUnknown<
        List<AgentcoreApiKeyCredentialProviderApiKeySecretArn>>();
    this.apiKeyWo = Output.createUnknown<String?>();
    this.apiKeyWoVersion = Output.createUnknown<int?>();
    this.credentialProviderArn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
