import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_approval_configuration.dart';
import 'registry_args.dart';
import 'registry_auto_detection_configuration.dart';
import 'registry_discovery_configuration.dart';
import 'registry_encryption_configuration.dart';
import 'registry_state.dart';
import 'registry_timeouts.dart';

/// Manages an AWS Agent Registry registry.
///
/// A registry allows developers to discover, manage, and govern reusable agentic components such as tools, prompts, guardrails, and knowledge bases.
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
/// const example = new aws.agentregistry.Registry("example", {
///     discoveryConfiguration: {
///         authorizerType: "AWS_IAM",
///     },
///     name: "example-registry",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.agentregistry.Registry("example",
///     discovery_configuration={
///         "authorizer_type": "AWS_IAM",
///     },
///     name="example-registry")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AgentRegistry.Registry("example", new()
///     {
///         DiscoveryConfiguration = new Aws.AgentRegistry.Inputs.RegistryDiscoveryConfigurationArgs
///         {
///             AuthorizerType = "AWS_IAM",
///         },
///         Name = "example-registry",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/agentregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentregistry.NewRegistry(ctx, "example", &agentregistry.RegistryArgs{
/// 			DiscoveryConfiguration: &agentregistry.RegistryDiscoveryConfigurationArgs{
/// 				AuthorizerType: pulumi.String("AWS_IAM"),
/// 			},
/// 			Name: pulumi.String("example-registry"),
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
/// resource "aws_agentregistry_registry" "example" {
///   discovery_configuration = {
///     authorizer_type = "AWS_IAM"
///   }
///   name = "example-registry"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.agentregistry.Registry;
/// import com.pulumi.aws.agentregistry.RegistryArgs;
/// import com.pulumi.aws.agentregistry.inputs.RegistryDiscoveryConfigurationArgs;
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
///         var example = new Registry("example", RegistryArgs.builder()
///             .discoveryConfiguration(RegistryDiscoveryConfigurationArgs.builder()
///                 .authorizerType("AWS_IAM")
///                 .build())
///             .name("example-registry")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:agentregistry:Registry
///     properties:
///       discoveryConfiguration:
///         authorizerType: AWS_IAM
///       name: example-registry
/// ```
///
///
/// ### With Description
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.agentregistry.Registry("example", {
///     discoveryConfiguration: {
///         authorizerType: "AWS_IAM",
///     },
///     name: "example-registry",
///     description: "Example agent registry",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.agentregistry.Registry("example",
///     discovery_configuration={
///         "authorizer_type": "AWS_IAM",
///     },
///     name="example-registry",
///     description="Example agent registry")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AgentRegistry.Registry("example", new()
///     {
///         DiscoveryConfiguration = new Aws.AgentRegistry.Inputs.RegistryDiscoveryConfigurationArgs
///         {
///             AuthorizerType = "AWS_IAM",
///         },
///         Name = "example-registry",
///         Description = "Example agent registry",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/agentregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentregistry.NewRegistry(ctx, "example", &agentregistry.RegistryArgs{
/// 			DiscoveryConfiguration: &agentregistry.RegistryDiscoveryConfigurationArgs{
/// 				AuthorizerType: pulumi.String("AWS_IAM"),
/// 			},
/// 			Name:        pulumi.String("example-registry"),
/// 			Description: pulumi.String("Example agent registry"),
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
/// resource "aws_agentregistry_registry" "example" {
///   discovery_configuration = {
///     authorizer_type = "AWS_IAM"
///   }
///   name        = "example-registry"
///   description = "Example agent registry"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.agentregistry.Registry;
/// import com.pulumi.aws.agentregistry.RegistryArgs;
/// import com.pulumi.aws.agentregistry.inputs.RegistryDiscoveryConfigurationArgs;
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
///         var example = new Registry("example", RegistryArgs.builder()
///             .discoveryConfiguration(RegistryDiscoveryConfigurationArgs.builder()
///                 .authorizerType("AWS_IAM")
///                 .build())
///             .name("example-registry")
///             .description("Example agent registry")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:agentregistry:Registry
///     properties:
///       discoveryConfiguration:
///         authorizerType: AWS_IAM
///       name: example-registry
///       description: Example agent registry
/// ```
///
///
/// ### With Auto Approval
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.agentregistry.Registry("example", {
///     approvalConfiguration: {
///         autoApprovalRules: ["APPROVE_ALL"],
///     },
///     discoveryConfiguration: {
///         authorizerType: "AWS_IAM",
///     },
///     name: "example-registry",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.agentregistry.Registry("example",
///     approval_configuration={
///         "auto_approval_rules": ["APPROVE_ALL"],
///     },
///     discovery_configuration={
///         "authorizer_type": "AWS_IAM",
///     },
///     name="example-registry")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AgentRegistry.Registry("example", new()
///     {
///         ApprovalConfiguration = new Aws.AgentRegistry.Inputs.RegistryApprovalConfigurationArgs
///         {
///             AutoApprovalRules = new[]
///             {
///                 "APPROVE_ALL",
///             },
///         },
///         DiscoveryConfiguration = new Aws.AgentRegistry.Inputs.RegistryDiscoveryConfigurationArgs
///         {
///             AuthorizerType = "AWS_IAM",
///         },
///         Name = "example-registry",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/agentregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentregistry.NewRegistry(ctx, "example", &agentregistry.RegistryArgs{
/// 			ApprovalConfiguration: &agentregistry.RegistryApprovalConfigurationArgs{
/// 				AutoApprovalRules: pulumi.StringArray{
/// 					pulumi.String("APPROVE_ALL"),
/// 				},
/// 			},
/// 			DiscoveryConfiguration: &agentregistry.RegistryDiscoveryConfigurationArgs{
/// 				AuthorizerType: pulumi.String("AWS_IAM"),
/// 			},
/// 			Name: pulumi.String("example-registry"),
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
/// resource "aws_agentregistry_registry" "example" {
///   approval_configuration = {
///     auto_approval_rules = ["APPROVE_ALL"]
///   }
///   discovery_configuration = {
///     authorizer_type = "AWS_IAM"
///   }
///   name = "example-registry"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.agentregistry.Registry;
/// import com.pulumi.aws.agentregistry.RegistryArgs;
/// import com.pulumi.aws.agentregistry.inputs.RegistryApprovalConfigurationArgs;
/// import com.pulumi.aws.agentregistry.inputs.RegistryDiscoveryConfigurationArgs;
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
///         var example = new Registry("example", RegistryArgs.builder()
///             .approvalConfiguration(RegistryApprovalConfigurationArgs.builder()
///                 .autoApprovalRules("APPROVE_ALL")
///                 .build())
///             .discoveryConfiguration(RegistryDiscoveryConfigurationArgs.builder()
///                 .authorizerType("AWS_IAM")
///                 .build())
///             .name("example-registry")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:agentregistry:Registry
///     properties:
///       approvalConfiguration:
///         autoApprovalRules:
///           - APPROVE_ALL
///       discoveryConfiguration:
///         authorizerType: AWS_IAM
///       name: example-registry
/// ```
///
///
/// ### With Custom JWT Authorization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.agentregistry.Registry("example", {
///     discoveryConfiguration: {
///         authorizerConfiguration: {
///             customJwtAuthorizer: {
///                 customClaims: [{
///                     authorizingClaimMatchValue: {
///                         claimMatchValue: {
///                             matchValueString: "authorized-user",
///                         },
///                         claimMatchOperator: "EQUALS",
///                     },
///                     inboundTokenClaimName: "sub",
///                     inboundTokenClaimValueType: "STRING",
///                 }],
///                 discoveryUrl: "https://example.com/.well-known/openid-configuration",
///                 allowedAudiences: ["https://api.example.com"],
///                 allowedClients: ["client-id-1"],
///                 allowedScopes: [
///                     "read",
///                     "write",
///                 ],
///             },
///         },
///         authorizerType: "CUSTOM_JWT",
///     },
///     name: "example-registry",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.agentregistry.Registry("example",
///     discovery_configuration={
///         "authorizer_configuration": {
///             "custom_jwt_authorizer": {
///                 "custom_claims": [{
///                     "authorizing_claim_match_value": {
///                         "claim_match_value": {
///                             "match_value_string": "authorized-user",
///                         },
///                         "claim_match_operator": "EQUALS",
///                     },
///                     "inbound_token_claim_name": "sub",
///                     "inbound_token_claim_value_type": "STRING",
///                 }],
///                 "discovery_url": "https://example.com/.well-known/openid-configuration",
///                 "allowed_audiences": ["https://api.example.com"],
///                 "allowed_clients": ["client-id-1"],
///                 "allowed_scopes": [
///                     "read",
///                     "write",
///                 ],
///             },
///         },
///         "authorizer_type": "CUSTOM_JWT",
///     },
///     name="example-registry")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AgentRegistry.Registry("example", new()
///     {
///         DiscoveryConfiguration = new Aws.AgentRegistry.Inputs.RegistryDiscoveryConfigurationArgs
///         {
///             AuthorizerConfiguration = new Aws.AgentRegistry.Inputs.RegistryDiscoveryConfigurationAuthorizerConfigurationArgs
///             {
///                 CustomJwtAuthorizer = new Aws.AgentRegistry.Inputs.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerArgs
///                 {
///                     CustomClaims = new[]
///                     {
///                         new Aws.AgentRegistry.Inputs.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimArgs
///                         {
///                             AuthorizingClaimMatchValue = new Aws.AgentRegistry.Inputs.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueArgs
///                             {
///                                 ClaimMatchValue = new Aws.AgentRegistry.Inputs.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValueArgs
///                                 {
///                                     MatchValueString = "authorized-user",
///                                 },
///                                 ClaimMatchOperator = "EQUALS",
///                             },
///                             InboundTokenClaimName = "sub",
///                             InboundTokenClaimValueType = "STRING",
///                         },
///                     },
///                     DiscoveryUrl = "https://example.com/.well-known/openid-configuration",
///                     AllowedAudiences = new[]
///                     {
///                         "https://api.example.com",
///                     },
///                     AllowedClients = new[]
///                     {
///                         "client-id-1",
///                     },
///                     AllowedScopes = new[]
///                     {
///                         "read",
///                         "write",
///                     },
///                 },
///             },
///             AuthorizerType = "CUSTOM_JWT",
///         },
///         Name = "example-registry",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/agentregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentregistry.NewRegistry(ctx, "example", &agentregistry.RegistryArgs{
/// 			DiscoveryConfiguration: &agentregistry.RegistryDiscoveryConfigurationArgs{
/// 				AuthorizerConfiguration: &agentregistry.RegistryDiscoveryConfigurationAuthorizerConfigurationArgs{
/// 					CustomJwtAuthorizer: &agentregistry.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerArgs{
/// 						CustomClaims: agentregistry.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimArray{
/// 							&agentregistry.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimArgs{
/// 								AuthorizingClaimMatchValue: &agentregistry.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueArgs{
/// 									ClaimMatchValue: &agentregistry.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValueArgs{
/// 										MatchValueString: pulumi.String("authorized-user"),
/// 									},
/// 									ClaimMatchOperator: pulumi.String("EQUALS"),
/// 								},
/// 								InboundTokenClaimName:      pulumi.String("sub"),
/// 								InboundTokenClaimValueType: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						DiscoveryUrl: pulumi.String("https://example.com/.well-known/openid-configuration"),
/// 						AllowedAudiences: pulumi.StringArray{
/// 							pulumi.String("https://api.example.com"),
/// 						},
/// 						AllowedClients: pulumi.StringArray{
/// 							pulumi.String("client-id-1"),
/// 						},
/// 						AllowedScopes: pulumi.StringArray{
/// 							pulumi.String("read"),
/// 							pulumi.String("write"),
/// 						},
/// 					},
/// 				},
/// 				AuthorizerType: pulumi.String("CUSTOM_JWT"),
/// 			},
/// 			Name: pulumi.String("example-registry"),
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
/// resource "aws_agentregistry_registry" "example" {
///   discovery_configuration = {
///     authorizer_configuration = {
///       custom_jwt_authorizer = {
///         custom_claims = [{
///           "authorizingClaimMatchValue" = {
///             "claimMatchValue" = {
///               "matchValueString" = "authorized-user"
///             }
///             "claimMatchOperator" = "EQUALS"
///           }
///           "inboundTokenClaimName"      = "sub"
///           "inboundTokenClaimValueType" = "STRING"
///         }]
///         discovery_url     = "https://example.com/.well-known/openid-configuration"
///         allowed_audiences = ["https://api.example.com"]
///         allowed_clients   = ["client-id-1"]
///         allowed_scopes    = ["read", "write"]
///       }
///     }
///     authorizer_type = "CUSTOM_JWT"
///   }
///   name = "example-registry"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.agentregistry.Registry;
/// import com.pulumi.aws.agentregistry.RegistryArgs;
/// import com.pulumi.aws.agentregistry.inputs.RegistryDiscoveryConfigurationArgs;
/// import com.pulumi.aws.agentregistry.inputs.RegistryDiscoveryConfigurationAuthorizerConfigurationArgs;
/// import com.pulumi.aws.agentregistry.inputs.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerArgs;
/// import com.pulumi.aws.agentregistry.inputs.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimArgs;
/// import com.pulumi.aws.agentregistry.inputs.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueArgs;
/// import com.pulumi.aws.agentregistry.inputs.RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValueArgs;
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
///         var example = new Registry("example", RegistryArgs.builder()
///             .discoveryConfiguration(RegistryDiscoveryConfigurationArgs.builder()
///                 .authorizerConfiguration(RegistryDiscoveryConfigurationAuthorizerConfigurationArgs.builder()
///                     .customJwtAuthorizer(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerArgs.builder()
///                         .customClaims(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimArgs.builder()
///                             .authorizingClaimMatchValue(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueArgs.builder()
///                                 .claimMatchValue(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValueArgs.builder()
///                                     .matchValueString("authorized-user")
///                                     .build())
///                                 .claimMatchOperator("EQUALS")
///                                 .build())
///                             .inboundTokenClaimName("sub")
///                             .inboundTokenClaimValueType("STRING")
///                             .build())
///                         .discoveryUrl("https://example.com/.well-known/openid-configuration")
///                         .allowedAudiences("https://api.example.com")
///                         .allowedClients("client-id-1")
///                         .allowedScopes(
///                             "read",
///                             "write")
///                         .build())
///                     .build())
///                 .authorizerType("CUSTOM_JWT")
///                 .build())
///             .name("example-registry")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:agentregistry:Registry
///     properties:
///       discoveryConfiguration:
///         authorizerConfiguration:
///           customJwtAuthorizer:
///             customClaims:
///               - authorizingClaimMatchValue:
///                   claimMatchValue:
///                     matchValueString: authorized-user
///                   claimMatchOperator: EQUALS
///                 inboundTokenClaimName: sub
///                 inboundTokenClaimValueType: STRING
///             discoveryUrl: https://example.com/.well-known/openid-configuration
///             allowedAudiences:
///               - https://api.example.com
///             allowedClients:
///               - client-id-1
///             allowedScopes:
///               - read
///               - write
///         authorizerType: CUSTOM_JWT
///       name: example-registry
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `registryId` (String) Registry ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an Agent Registry Registry by registry ID. For example:
///
/// ```sh
/// $ pulumi import aws:agentregistry/registry:Registry example registry-id-12345678
/// ```
class Registry extends pulumi.CustomResource {
  /// Approval configuration for registry records. See below.
  late final pulumi.Output<RegistryApprovalConfiguration?> approvalConfiguration;
  /// Auto-detection configuration for the registry. When provided, the registry is automatically populated with resources discovered according to the configuration. See below.
  late final pulumi.Output<RegistryAutoDetectionConfiguration?> autoDetectionConfiguration;
  /// Description of the registry. Maximum length of 4096 characters.
  late final pulumi.Output<String?> description;
  /// Discovery configuration for the registry. See below.
  late final pulumi.Output<RegistryDiscoveryConfiguration> discoveryConfiguration;
  /// Server-side encryption configuration for the registry. See below.
  late final pulumi.Output<RegistryEncryptionConfiguration?> encryptionConfiguration;
  /// Name of the registry. Must start with a letter or digit. Valid characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen), . (dot), and / (forward slash). The name can have up to 64 characters.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the registry.
  late final pulumi.Output<String> registryArn;
  /// Unique identifier of the registry.
  late final pulumi.Output<String> registryId;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<RegistryTimeouts?> timeouts;

  /// Creates a new [Registry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Registry]. {@macro pulumi_agentregistry_registry_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Registry(
    String name, {
    RegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:agentregistry/registry:Registry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    approvalConfiguration = registerOutput<RegistryApprovalConfiguration?>('approvalConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryApprovalConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoDetectionConfiguration = registerOutput<RegistryAutoDetectionConfiguration?>('autoDetectionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryAutoDetectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    discoveryConfiguration = registerOutput<RegistryDiscoveryConfiguration>('discoveryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryDiscoveryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionConfiguration = registerOutput<RegistryEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryArn = registerOutput<String>('registryArn');
    registryId = registerOutput<String>('registryId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<RegistryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Registry] resource's state with the given [name] and [id].
  static Registry get(
    String name,
    pulumi.Input<String> id, {
    RegistryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Registry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Registry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:agentregistry/registry:Registry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approvalConfiguration = registerOutput<RegistryApprovalConfiguration?>('approvalConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryApprovalConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoDetectionConfiguration = registerOutput<RegistryAutoDetectionConfiguration?>('autoDetectionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryAutoDetectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    discoveryConfiguration = registerOutput<RegistryDiscoveryConfiguration>('discoveryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryDiscoveryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionConfiguration = registerOutput<RegistryEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryArn = registerOutput<String>('registryArn');
    registryId = registerOutput<String>('registryId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<RegistryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Registry] resource.
  Registry.reference(String urn)
    : super(
        'aws:agentregistry/registry:Registry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    approvalConfiguration = registerOutput<RegistryApprovalConfiguration?>('approvalConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryApprovalConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoDetectionConfiguration = registerOutput<RegistryAutoDetectionConfiguration?>('autoDetectionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryAutoDetectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    discoveryConfiguration = registerOutput<RegistryDiscoveryConfiguration>('discoveryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryDiscoveryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionConfiguration = registerOutput<RegistryEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryArn = registerOutput<String>('registryArn');
    registryId = registerOutput<String>('registryId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<RegistryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
