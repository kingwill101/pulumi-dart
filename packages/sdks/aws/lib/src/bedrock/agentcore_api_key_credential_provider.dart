import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_api_key_credential_provider_args.dart';
import 'agentcore_api_key_credential_provider_state.dart';

/// Manages an AWS Bedrock AgentCore API Key Credential Provider. API Key credential providers enable secure authentication with external services that use API key-based authentication for agent runtimes.
///
/// &gt; **Note:** Write-Only argument `apiKeyWo` is available to use in place of `apiKey`. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreApiKeyCredentialProvider("example", {
///     name: "example-api-key-provider",
///     apiKey: "your-api-key-here",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreApiKeyCredentialProvider("example",
///     name="example-api-key-provider",
///     api_key="your-api-key-here")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreApiKeyCredentialProvider("example", new()
///     {
///         Name = "example-api-key-provider",
///         ApiKey = "your-api-key-here",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreApiKeyCredentialProvider(ctx, "example", &bedrock.AgentcoreApiKeyCredentialProviderArgs{
/// 			Name:   pulumi.String("example-api-key-provider"),
/// 			ApiKey: pulumi.String("your-api-key-here"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrock_agentcoreapikeycredentialprovider" "example" {
///   name    = "example-api-key-provider"
///   api_key = "your-api-key-here"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AgentcoreApiKeyCredentialProvider("example", AgentcoreApiKeyCredentialProviderArgs.builder()
///             .name("example-api-key-provider")
///             .apiKey("your-api-key-here")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreApiKeyCredentialProvider
///     properties:
///       name: example-api-key-provider
///       apiKey: your-api-key-here
/// ```
///
///
/// ### Write-Only API Key (Recommended for Production)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreApiKeyCredentialProvider("example", {
///     name: "example-api-key-provider",
///     apiKeyWo: "your-api-key-here",
///     apiKeyWoVersion: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreApiKeyCredentialProvider("example",
///     name="example-api-key-provider",
///     api_key_wo="your-api-key-here",
///     api_key_wo_version=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreApiKeyCredentialProvider("example", new()
///     {
///         Name = "example-api-key-provider",
///         ApiKeyWo = "your-api-key-here",
///         ApiKeyWoVersion = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreApiKeyCredentialProvider(ctx, "example", &bedrock.AgentcoreApiKeyCredentialProviderArgs{
/// 			Name:            pulumi.String("example-api-key-provider"),
/// 			ApiKeyWo:        pulumi.String("your-api-key-here"),
/// 			ApiKeyWoVersion: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrock_agentcoreapikeycredentialprovider" "example" {
///   name               = "example-api-key-provider"
///   api_key_wo         = "your-api-key-here"
///   api_key_wo_version = 1
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AgentcoreApiKeyCredentialProvider("example", AgentcoreApiKeyCredentialProviderArgs.builder()
///             .name("example-api-key-provider")
///             .apiKeyWo("your-api-key-here")
///             .apiKeyWoVersion(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreApiKeyCredentialProvider
///     properties:
///       name: example-api-key-provider
///       apiKeyWo: your-api-key-here
///       apiKeyWoVersion: 1
/// ```
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
  /// API key value. Cannot be used with `apiKeyWo`. This value will be visible in pulumi preview outputs and logs.
  ///
  /// **Write-Only API Key (choose one approach):**
  late final pulumi.Output<String?> apiKey;
  /// ARN of the AWS Secrets Manager secret containing the API key.
  late final pulumi.Output<List<Map<String, dynamic>>> apiKeySecretArns;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only API key value. Cannot be used with `apiKey`. Must be used together with `apiKeyWoVersion`.
  late final pulumi.Output<String?> apiKeyWo;
  /// Used together with `apiKeyWo` to trigger an update. Increment this value when an update to `apiKeyWo` is required.
  late final pulumi.Output<int?> apiKeyWoVersion;
  /// ARN of the API Key credential provider.
  late final pulumi.Output<String> credentialProviderArn;
  /// Name of the API Key credential provider. Forces replacement when changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **Standard API Key (choose one approach):**
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AgentcoreApiKeyCredentialProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreApiKeyCredentialProvider]. {@macro pulumi_bedrock_agentcore_api_key_credential_provider_agentcore_api_key_credential_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    apiKey = registerOutput<String?>('apiKey');
    apiKeySecretArns = registerOutput<List<Map<String, dynamic>>>('apiKeySecretArns');
    apiKeyWo = registerOutput<String?>('apiKeyWo');
    apiKeyWoVersion = registerOutput<int?>('apiKeyWoVersion');
    credentialProviderArn = registerOutput<String>('credentialProviderArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [AgentcoreApiKeyCredentialProvider] resource's state with the given [name] and [id].
  static AgentcoreApiKeyCredentialProvider get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreApiKeyCredentialProviderState? state,
  }) {
    return AgentcoreApiKeyCredentialProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentcoreApiKeyCredentialProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreApiKeyCredentialProvider:AgentcoreApiKeyCredentialProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKey = registerOutput<String?>('apiKey');
    apiKeySecretArns = registerOutput<List<Map<String, dynamic>>>('apiKeySecretArns');
    apiKeyWo = registerOutput<String?>('apiKeyWo');
    apiKeyWoVersion = registerOutput<int?>('apiKeyWoVersion');
    credentialProviderArn = registerOutput<String>('credentialProviderArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
