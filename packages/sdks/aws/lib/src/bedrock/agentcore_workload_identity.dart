import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_workload_identity_args.dart';
import 'agentcore_workload_identity_state.dart';

/// Manages an AWS Bedrock AgentCore Workload Identity. Workload Identity provides OAuth2-based authentication and authorization for AI agents to access external resources securely.
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
/// const example = new aws.bedrock.AgentcoreWorkloadIdentity("example", {
///     name: "example-workload-identity",
///     allowedResourceOauth2ReturnUrls: ["https://example.com/callback"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreWorkloadIdentity("example",
///     name="example-workload-identity",
///     allowed_resource_oauth2_return_urls=["https://example.com/callback"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreWorkloadIdentity("example", new()
///     {
///         Name = "example-workload-identity",
///         AllowedResourceOauth2ReturnUrls = new[]
///         {
///             "https://example.com/callback",
///         },
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
/// 		_, err := bedrock.NewAgentcoreWorkloadIdentity(ctx, "example", &bedrock.AgentcoreWorkloadIdentityArgs{
/// 			Name: pulumi.String("example-workload-identity"),
/// 			AllowedResourceOauth2ReturnUrls: pulumi.StringArray{
/// 				pulumi.String("https://example.com/callback"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreWorkloadIdentity;
/// import com.pulumi.aws.bedrock.AgentcoreWorkloadIdentityArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new AgentcoreWorkloadIdentity("example", AgentcoreWorkloadIdentityArgs.builder()
///             .name("example-workload-identity")
///             .allowedResourceOauth2ReturnUrls("https://example.com/callback")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreWorkloadIdentity
///     properties:
///       name: example-workload-identity
///       allowedResourceOauth2ReturnUrls:
///         - https://example.com/callback
/// ```
///
///
/// ### Workload Identity with Multiple Return URLs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreWorkloadIdentity("example", {
///     name: "example-workload-identity",
///     allowedResourceOauth2ReturnUrls: [
///         "https://app.example.com/oauth/callback",
///         "https://api.example.com/auth/return",
///         "https://example.com/callback",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreWorkloadIdentity("example",
///     name="example-workload-identity",
///     allowed_resource_oauth2_return_urls=[
///         "https://app.example.com/oauth/callback",
///         "https://api.example.com/auth/return",
///         "https://example.com/callback",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreWorkloadIdentity("example", new()
///     {
///         Name = "example-workload-identity",
///         AllowedResourceOauth2ReturnUrls = new[]
///         {
///             "https://app.example.com/oauth/callback",
///             "https://api.example.com/auth/return",
///             "https://example.com/callback",
///         },
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
/// 		_, err := bedrock.NewAgentcoreWorkloadIdentity(ctx, "example", &bedrock.AgentcoreWorkloadIdentityArgs{
/// 			Name: pulumi.String("example-workload-identity"),
/// 			AllowedResourceOauth2ReturnUrls: pulumi.StringArray{
/// 				pulumi.String("https://app.example.com/oauth/callback"),
/// 				pulumi.String("https://api.example.com/auth/return"),
/// 				pulumi.String("https://example.com/callback"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreWorkloadIdentity;
/// import com.pulumi.aws.bedrock.AgentcoreWorkloadIdentityArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new AgentcoreWorkloadIdentity("example", AgentcoreWorkloadIdentityArgs.builder()
///             .name("example-workload-identity")
///             .allowedResourceOauth2ReturnUrls(
///                 "https://app.example.com/oauth/callback",
///                 "https://api.example.com/auth/return",
///                 "https://example.com/callback")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreWorkloadIdentity
///     properties:
///       name: example-workload-identity
///       allowedResourceOauth2ReturnUrls:
///         - https://app.example.com/oauth/callback
///         - https://api.example.com/auth/return
///         - https://example.com/callback
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Workload Identity using the workload identity name. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreWorkloadIdentity:AgentcoreWorkloadIdentity example example-workload-identity
/// ```
class AgentcoreWorkloadIdentity extends pulumi.CustomResource {
  /// Set of allowed OAuth2 return URLs for resources associated with this workload identity. These URLs are used as valid redirect targets during OAuth2 authentication flows.
  late final pulumi.Output<List<String>?> allowedResourceOauth2ReturnUrls;

  /// Name of the workload identity. Must be 3-255 characters and contain only alphanumeric characters, hyphens, periods, and underscores.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the Workload Identity.
  late final pulumi.Output<String> workloadIdentityArn;

  /// Creates a new [AgentcoreWorkloadIdentity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreWorkloadIdentity]. {@macro pulumi_bedrock_agentcore_workload_identity_agentcore_workload_identity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreWorkloadIdentity(
    String name, {
    AgentcoreWorkloadIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/agentcoreWorkloadIdentity:AgentcoreWorkloadIdentity',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedResourceOauth2ReturnUrls = registerOutput<List<String>?>(
      'allowedResourceOauth2ReturnUrls',
    );
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    workloadIdentityArn = registerOutput<String>('workloadIdentityArn');
  }

  /// Gets an existing [AgentcoreWorkloadIdentity] resource's state with the given [name] and [id].
  static AgentcoreWorkloadIdentity get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreWorkloadIdentityState? state,
  }) {
    return AgentcoreWorkloadIdentity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentcoreWorkloadIdentity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/agentcoreWorkloadIdentity:AgentcoreWorkloadIdentity',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedResourceOauth2ReturnUrls = registerOutput<List<String>?>(
      'allowedResourceOauth2ReturnUrls',
    );
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    workloadIdentityArn = registerOutput<String>('workloadIdentityArn');
  }
}
