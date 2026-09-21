import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_approval_configuration.dart';
import 'agentcore_registry_args.dart';
import 'agentcore_registry_authorizer_configuration.dart';
import 'agentcore_registry_state.dart';
import 'agentcore_registry_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Registry. A registry serves as a centralized catalog for organizing and managing registry records, including MCP servers, A2A agents, agent skills, and custom resource types.
///
/// &gt; **Warning:** This resource is deprecated. AWS Agent Registry is currently available in public preview. [On August 6, 2026](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/registry-faq.html#registry-faq-what-is-changing) functionality will move from the `bedrock-agentcore` namespace to the `agent-registry` namespace. This resource will continue to work until [September 17, 2026](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/registry-faq.html). Use the `aws.agentregistry.Registry` resource for all new registries.
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
/// const example = new aws.bedrock.AgentcoreRegistry("example", {name: "example_registry"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreRegistry("example", name="example_registry")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreRegistry("example", new()
///     {
///         Name = "example_registry",
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
/// 		_, err := bedrock.NewAgentcoreRegistry(ctx, "example", &bedrock.AgentcoreRegistryArgs{
/// 			Name: pulumi.String("example_registry"),
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
/// resource "aws_bedrock_agentcoreregistry" "example" {
///   name = "example_registry"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreRegistry;
/// import com.pulumi.aws.bedrock.AgentcoreRegistryArgs;
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
///         var example = new AgentcoreRegistry("example", AgentcoreRegistryArgs.builder()
///             .name("example_registry")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreRegistry
///     properties:
///       name: example_registry
/// ```
///
///
/// ### With Description and Auto Approval
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreRegistry("example", {
///     name: "example_registry",
///     description: "MCP servers and tools for the platform team",
///     autoApproval: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreRegistry("example",
///     name="example_registry",
///     description="MCP servers and tools for the platform team",
///     auto_approval=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreRegistry("example", new()
///     {
///         Name = "example_registry",
///         Description = "MCP servers and tools for the platform team",
///         AutoApproval = true,
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
/// 		_, err := bedrock.NewAgentcoreRegistry(ctx, "example", &bedrock.AgentcoreRegistryArgs{
/// 			Name:         pulumi.String("example_registry"),
/// 			Description:  pulumi.String("MCP servers and tools for the platform team"),
/// 			AutoApproval: true,
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
/// resource "aws_bedrock_agentcoreregistry" "example" {
///   name          = "example_registry"
///   description   = "MCP servers and tools for the platform team"
///   auto_approval = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreRegistry;
/// import com.pulumi.aws.bedrock.AgentcoreRegistryArgs;
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
///         var example = new AgentcoreRegistry("example", AgentcoreRegistryArgs.builder()
///             .name("example_registry")
///             .description("MCP servers and tools for the platform team")
///             .autoApproval(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreRegistry
///     properties:
///       name: example_registry
///       description: MCP servers and tools for the platform team
///       autoApproval: true
/// ```
///
///
/// ### With Custom JWT Authorizer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreRegistry("example", {
///     authorizerConfiguration: {
///         customJwtAuthorizer: {
///             discoveryUrl: "https://example.okta.com/.well-known/openid-configuration",
///             allowedAudiences: ["audience-id"],
///             allowedClients: ["client-id"],
///         },
///     },
///     name: "example_registry",
///     authorizerType: "CUSTOM_JWT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreRegistry("example",
///     authorizer_configuration={
///         "custom_jwt_authorizer": {
///             "discovery_url": "https://example.okta.com/.well-known/openid-configuration",
///             "allowed_audiences": ["audience-id"],
///             "allowed_clients": ["client-id"],
///         },
///     },
///     name="example_registry",
///     authorizer_type="CUSTOM_JWT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreRegistry("example", new()
///     {
///         AuthorizerConfiguration = new Aws.Bedrock.Inputs.AgentcoreRegistryAuthorizerConfigurationArgs
///         {
///             CustomJwtAuthorizer = new Aws.Bedrock.Inputs.AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerArgs
///             {
///                 DiscoveryUrl = "https://example.okta.com/.well-known/openid-configuration",
///                 AllowedAudiences = new[]
///                 {
///                     "audience-id",
///                 },
///                 AllowedClients = new[]
///                 {
///                     "client-id",
///                 },
///             },
///         },
///         Name = "example_registry",
///         AuthorizerType = "CUSTOM_JWT",
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
/// 		_, err := bedrock.NewAgentcoreRegistry(ctx, "example", &bedrock.AgentcoreRegistryArgs{
/// 			AuthorizerConfiguration: &bedrock.AgentcoreRegistryAuthorizerConfigurationArgs{
/// 				CustomJwtAuthorizer: &bedrock.AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerArgs{
/// 					DiscoveryUrl: pulumi.String("https://example.okta.com/.well-known/openid-configuration"),
/// 					AllowedAudiences: pulumi.StringArray{
/// 						pulumi.String("audience-id"),
/// 					},
/// 					AllowedClients: pulumi.StringArray{
/// 						pulumi.String("client-id"),
/// 					},
/// 				},
/// 			},
/// 			Name:           pulumi.String("example_registry"),
/// 			AuthorizerType: pulumi.String("CUSTOM_JWT"),
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
/// resource "aws_bedrock_agentcoreregistry" "example" {
///   authorizer_configuration = {
///     custom_jwt_authorizer = {
///       discovery_url     = "https://example.okta.com/.well-known/openid-configuration"
///       allowed_audiences = ["audience-id"]
///       allowed_clients   = ["client-id"]
///     }
///   }
///   name            = "example_registry"
///   authorizer_type = "CUSTOM_JWT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreRegistry;
/// import com.pulumi.aws.bedrock.AgentcoreRegistryArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreRegistryAuthorizerConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerArgs;
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
///         var example = new AgentcoreRegistry("example", AgentcoreRegistryArgs.builder()
///             .authorizerConfiguration(AgentcoreRegistryAuthorizerConfigurationArgs.builder()
///                 .customJwtAuthorizer(AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerArgs.builder()
///                     .discoveryUrl("https://example.okta.com/.well-known/openid-configuration")
///                     .allowedAudiences("audience-id")
///                     .allowedClients("client-id")
///                     .build())
///                 .build())
///             .name("example_registry")
///             .authorizerType("CUSTOM_JWT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreRegistry
///     properties:
///       authorizerConfiguration:
///         customJwtAuthorizer:
///           discoveryUrl: https://example.okta.com/.well-known/openid-configuration
///           allowedAudiences:
///             - audience-id
///           allowedClients:
///             - client-id
///       name: example_registry
///       authorizerType: CUSTOM_JWT
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `registryId` (String) Registry ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS account ID for this resource.
/// * `region` (String) AWS Region for this resource.
///
///
/// Using `pulumi import`, import a Bedrock AgentCore Registry by registry ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreRegistry:AgentcoreRegistry example registry-id-12345678
/// ```
class AgentcoreRegistry extends pulumi.CustomResource {
  /// Approval configuration for registry records. See below.
  late final pulumi.Output<List<AgentcoreRegistryApprovalConfiguration>> approvalConfigurations;
  /// Authorizer configuration for the registry. Required when `authorizerType` is `CUSTOM_JWT`. See below.
  late final pulumi.Output<AgentcoreRegistryAuthorizerConfiguration?> authorizerConfiguration;
  /// Type of authorizer to use for the registry. Valid values are `AWS_IAM` (default) and `CUSTOM_JWT`. This controls the authorization method for the Search and Invoke APIs used by consumers.
  late final pulumi.Output<String> authorizerType;
  /// Description of the registry.
  late final pulumi.Output<String?> description;
  /// Name of the registry. Must be unique within your account and contain only letters, numbers, hyphens, and underscores. Maximum length of 64 characters.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the registry.
  late final pulumi.Output<String> registryArn;
  /// Unique identifier of the registry.
  late final pulumi.Output<String> registryId;
  late final pulumi.Output<AgentcoreRegistryTimeouts?> timeouts;

  /// Creates a new [AgentcoreRegistry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreRegistry]. {@macro pulumi_bedrock_agentcore_registry_agentcore_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreRegistry(
    String name, {
    AgentcoreRegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreRegistry:AgentcoreRegistry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    approvalConfigurations = registerOutput<List<AgentcoreRegistryApprovalConfiguration>>('approvalConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreRegistryApprovalConfiguration>(guardedValue, (value) => AgentcoreRegistryApprovalConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    authorizerConfiguration = registerOutput<AgentcoreRegistryAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizerType = registerOutput<String>('authorizerType');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryArn = registerOutput<String>('registryArn');
    registryId = registerOutput<String>('registryId');
    timeouts = registerOutput<AgentcoreRegistryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentcoreRegistry] resource's state with the given [name] and [id].
  static AgentcoreRegistry get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreRegistryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentcoreRegistry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentcoreRegistry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreRegistry:AgentcoreRegistry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approvalConfigurations = registerOutput<List<AgentcoreRegistryApprovalConfiguration>>('approvalConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreRegistryApprovalConfiguration>(guardedValue, (value) => AgentcoreRegistryApprovalConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    authorizerConfiguration = registerOutput<AgentcoreRegistryAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizerType = registerOutput<String>('authorizerType');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryArn = registerOutput<String>('registryArn');
    registryId = registerOutput<String>('registryId');
    timeouts = registerOutput<AgentcoreRegistryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AgentcoreRegistry] resource.
  AgentcoreRegistry.reference(String urn)
    : super(
        'aws:bedrock/agentcoreRegistry:AgentcoreRegistry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    approvalConfigurations = registerOutput<List<AgentcoreRegistryApprovalConfiguration>>('approvalConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreRegistryApprovalConfiguration>(guardedValue, (value) => AgentcoreRegistryApprovalConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    authorizerConfiguration = registerOutput<AgentcoreRegistryAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizerType = registerOutput<String>('authorizerType');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryArn = registerOutput<String>('registryArn');
    registryId = registerOutput<String>('registryId');
    timeouts = registerOutput<AgentcoreRegistryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
