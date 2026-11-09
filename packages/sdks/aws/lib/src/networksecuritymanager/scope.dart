import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_args.dart';
import 'scope_scope_configuration.dart';
import 'scope_state.dart';

/// Manages an AWS Network Security Manager Scope. A scope selects the accounts and resources that a deployment applies policies to.
///
/// Changes to a scope are published unless `isPublished` is `false`.
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
/// const example = new aws.networksecuritymanager.Scope("example", {
///     scopeConfiguration: {
///         resourceScopes: [{
///             include: {
///                 expression: {
///                     criteria: {
///                         tags: {
///                             Protect: "true",
///                         },
///                     },
///                 },
///             },
///             resourceType: "AWS::ElasticLoadBalancingV2::LoadBalancer::application",
///         }],
///     },
///     name: "example",
///     description: "Application Load Balancers tagged for protection",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networksecuritymanager.Scope("example",
///     scope_configuration={
///         "resource_scopes": [{
///             "include": {
///                 "expression": {
///                     "criteria": {
///                         "tags": {
///                             "Protect": "true",
///                         },
///                     },
///                 },
///             },
///             "resource_type": "AWS::ElasticLoadBalancingV2::LoadBalancer::application",
///         }],
///     },
///     name="example",
///     description="Application Load Balancers tagged for protection")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkSecurityManager.Scope("example", new()
///     {
///         ScopeConfiguration = new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationArgs
///         {
///             ResourceScopes = new[]
///             {
///                 new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationResourceScopeArgs
///                 {
///                     Include = new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationResourceScopeIncludeArgs
///                     {
///                         Expression = new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationResourceScopeIncludeExpressionArgs
///                         {
///                             Criteria = new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationResourceScopeIncludeExpressionCriteriaArgs
///                             {
///                                 Tags =
///                                 {
///                                     { "Protect", "true" },
///                                 },
///                             },
///                         },
///                     },
///                     ResourceType = "AWS::ElasticLoadBalancingV2::LoadBalancer::application",
///                 },
///             },
///         },
///         Name = "example",
///         Description = "Application Load Balancers tagged for protection",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networksecuritymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecuritymanager.NewScope(ctx, "example", &networksecuritymanager.ScopeArgs{
/// 			ScopeConfiguration: &networksecuritymanager.ScopeScopeConfigurationArgs{
/// 				ResourceScopes: networksecuritymanager.ScopeScopeConfigurationResourceScopeArray{
/// 					&networksecuritymanager.ScopeScopeConfigurationResourceScopeArgs{
/// 						Include: &networksecuritymanager.ScopeScopeConfigurationResourceScopeIncludeArgs{
/// 							Expression: &networksecuritymanager.ScopeScopeConfigurationResourceScopeIncludeExpressionArgs{
/// 								Criteria: &networksecuritymanager.ScopeScopeConfigurationResourceScopeIncludeExpressionCriteriaArgs{
/// 									Tags: pulumi.StringMap{
/// 										"Protect": pulumi.String("true"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						ResourceType: pulumi.String("AWS::ElasticLoadBalancingV2::LoadBalancer::application"),
/// 					},
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Application Load Balancers tagged for protection"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networksecuritymanager_scope" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   scope_configuration {
///     resource_scope {
///       include {
///         expression {
///           criteria {
///             tags = {
///               "Protect" = "true"
///             }
///           }
///         }
///       }
///       resource_type = "AWS::ElasticLoadBalancingV2::LoadBalancer::application"
///     }
///   }
///   name        = "example"
///   description = "Application Load Balancers tagged for protection"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networksecuritymanager.Scope;
/// import com.pulumi.aws.networksecuritymanager.ScopeArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationResourceScopeArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationResourceScopeIncludeArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationResourceScopeIncludeExpressionArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationResourceScopeIncludeExpressionCriteriaArgs;
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
///         var example = new Scope("example", ScopeArgs.builder()
///             .scopeConfiguration(ScopeScopeConfigurationArgs.builder()
///                 .resourceScopes(ScopeScopeConfigurationResourceScopeArgs.builder()
///                     .include(ScopeScopeConfigurationResourceScopeIncludeArgs.builder()
///                         .expression(ScopeScopeConfigurationResourceScopeIncludeExpressionArgs.builder()
///                             .criteria(ScopeScopeConfigurationResourceScopeIncludeExpressionCriteriaArgs.builder()
///                                 .tags(Map.of("Protect", "true"))
///                                 .build())
///                             .build())
///                         .build())
///                     .resourceType("AWS::ElasticLoadBalancingV2::LoadBalancer::application")
///                     .build())
///                 .build())
///             .name("example")
///             .description("Application Load Balancers tagged for protection")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networksecuritymanager:Scope
///     properties:
///       scopeConfiguration:
///         resourceScopes:
///           - include:
///               expression:
///                 criteria:
///                   tags:
///                     Protect: 'true'
///             resourceType: AWS::ElasticLoadBalancingV2::LoadBalancer::application
///       name: example
///       description: Application Load Balancers tagged for protection
/// ```
///
///
/// ### Logical Expressions and Account Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networksecuritymanager.Scope("example", {
///     scopeConfiguration: {
///         accountFilter: {
///             include: {
///                 organizationalUnits: ["ou-abcd-12345678"],
///             },
///         },
///         resourceScopes: [
///             {
///                 include: {
///                     expression: {
///                         ands: [
///                             {
///                                 tags: {
///                                     Protect: "true",
///                                 },
///                             },
///                             {
///                                 albConfig: {
///                                     scheme: "internet-facing",
///                                 },
///                             },
///                         ],
///                     },
///                 },
///                 resourceType: "AWS::ElasticLoadBalancingV2::LoadBalancer::application",
///             },
///             {
///                 resourceType: "AWS::ApiGateway::Stage",
///                 includeAll: true,
///             },
///         ],
///     },
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networksecuritymanager.Scope("example",
///     scope_configuration={
///         "account_filter": {
///             "include": {
///                 "organizational_units": ["ou-abcd-12345678"],
///             },
///         },
///         "resource_scopes": [
///             {
///                 "include": {
///                     "expression": {
///                         "ands": [
///                             {
///                                 "tags": {
///                                     "Protect": "true",
///                                 },
///                             },
///                             {
///                                 "alb_config": {
///                                     "scheme": "internet-facing",
///                                 },
///                             },
///                         ],
///                     },
///                 },
///                 "resource_type": "AWS::ElasticLoadBalancingV2::LoadBalancer::application",
///             },
///             {
///                 "resource_type": "AWS::ApiGateway::Stage",
///                 "include_all": True,
///             },
///         ],
///     },
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkSecurityManager.Scope("example", new()
///     {
///         ScopeConfiguration = new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationArgs
///         {
///             AccountFilter = new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationAccountFilterArgs
///             {
///                 Include = new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationAccountFilterIncludeArgs
///                 {
///                     OrganizationalUnits = new[]
///                     {
///                         "ou-abcd-12345678",
///                     },
///                 },
///             },
///             ResourceScopes = new[]
///             {
///                 new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationResourceScopeArgs
///                 {
///                     Include = new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationResourceScopeIncludeArgs
///                     {
///                         Expression = new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationResourceScopeIncludeExpressionArgs
///                         {
///                             Ands = new[]
///                             {
///                                 new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationResourceScopeIncludeExpressionAndArgs
///                                 {
///                                     Tags =
///                                     {
///                                         { "Protect", "true" },
///                                     },
///                                 },
///                                 new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationResourceScopeIncludeExpressionAndArgs
///                                 {
///                                     AlbConfig = new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationResourceScopeIncludeExpressionAndAlbConfigArgs
///                                     {
///                                         Scheme = "internet-facing",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     ResourceType = "AWS::ElasticLoadBalancingV2::LoadBalancer::application",
///                 },
///                 new Aws.NetworkSecurityManager.Inputs.ScopeScopeConfigurationResourceScopeArgs
///                 {
///                     ResourceType = "AWS::ApiGateway::Stage",
///                     IncludeAll = true,
///                 },
///             },
///         },
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networksecuritymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecuritymanager.NewScope(ctx, "example", &networksecuritymanager.ScopeArgs{
/// 			ScopeConfiguration: &networksecuritymanager.ScopeScopeConfigurationArgs{
/// 				AccountFilter: &networksecuritymanager.ScopeScopeConfigurationAccountFilterArgs{
/// 					Include: &networksecuritymanager.ScopeScopeConfigurationAccountFilterIncludeArgs{
/// 						OrganizationalUnits: pulumi.StringArray{
/// 							pulumi.String("ou-abcd-12345678"),
/// 						},
/// 					},
/// 				},
/// 				ResourceScopes: networksecuritymanager.ScopeScopeConfigurationResourceScopeArray{
/// 					&networksecuritymanager.ScopeScopeConfigurationResourceScopeArgs{
/// 						Include: &networksecuritymanager.ScopeScopeConfigurationResourceScopeIncludeArgs{
/// 							Expression: &networksecuritymanager.ScopeScopeConfigurationResourceScopeIncludeExpressionArgs{
/// 								Ands: networksecuritymanager.ScopeScopeConfigurationResourceScopeIncludeExpressionAndArray{
/// 									&networksecuritymanager.ScopeScopeConfigurationResourceScopeIncludeExpressionAndArgs{
/// 										Tags: pulumi.StringMap{
/// 											"Protect": pulumi.String("true"),
/// 										},
/// 									},
/// 									&networksecuritymanager.ScopeScopeConfigurationResourceScopeIncludeExpressionAndArgs{
/// 										AlbConfig: &networksecuritymanager.ScopeScopeConfigurationResourceScopeIncludeExpressionAndAlbConfigArgs{
/// 											Scheme: pulumi.String("internet-facing"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						ResourceType: pulumi.String("AWS::ElasticLoadBalancingV2::LoadBalancer::application"),
/// 					},
/// 					&networksecuritymanager.ScopeScopeConfigurationResourceScopeArgs{
/// 						ResourceType: pulumi.String("AWS::ApiGateway::Stage"),
/// 						IncludeAll:   pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networksecuritymanager_scope" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   scope_configuration {
///     account_filter {
///       include {
///         organizational_units = ["ou-abcd-12345678"]
///       }
///     }
///     resource_scope {
///       include {
///         expression {
///           and {
///             tags = {
///               "Protect" = "true"
///             }
///           }
///           and {
///             alb_config {
///               scheme = "internet-facing"
///             }
///           }
///         }
///       }
///       resource_type = "AWS::ElasticLoadBalancingV2::LoadBalancer::application"
///     }
///     resource_scope {
///       resource_type = "AWS::ApiGateway::Stage"
///       include_all   = true
///     }
///   }
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networksecuritymanager.Scope;
/// import com.pulumi.aws.networksecuritymanager.ScopeArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationAccountFilterArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationAccountFilterIncludeArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationResourceScopeArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationResourceScopeIncludeArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationResourceScopeIncludeExpressionArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationResourceScopeIncludeExpressionAndArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.ScopeScopeConfigurationResourceScopeIncludeExpressionAndAlbConfigArgs;
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
///         var example = new Scope("example", ScopeArgs.builder()
///             .scopeConfiguration(ScopeScopeConfigurationArgs.builder()
///                 .accountFilter(ScopeScopeConfigurationAccountFilterArgs.builder()
///                     .include(ScopeScopeConfigurationAccountFilterIncludeArgs.builder()
///                         .organizationalUnits("ou-abcd-12345678")
///                         .build())
///                     .build())
///                 .resourceScopes(
///                     ScopeScopeConfigurationResourceScopeArgs.builder()
///                         .include(ScopeScopeConfigurationResourceScopeIncludeArgs.builder()
///                             .expression(ScopeScopeConfigurationResourceScopeIncludeExpressionArgs.builder()
///                                 .ands(
///                                     ScopeScopeConfigurationResourceScopeIncludeExpressionAndArgs.builder()
///                                         .tags(Map.of("Protect", "true"))
///                                         .build(),
///                                     ScopeScopeConfigurationResourceScopeIncludeExpressionAndArgs.builder()
///                                         .albConfig(ScopeScopeConfigurationResourceScopeIncludeExpressionAndAlbConfigArgs.builder()
///                                             .scheme("internet-facing")
///                                             .build())
///                                         .build())
///                                 .build())
///                             .build())
///                         .resourceType("AWS::ElasticLoadBalancingV2::LoadBalancer::application")
///                         .build(),
///                     ScopeScopeConfigurationResourceScopeArgs.builder()
///                         .resourceType("AWS::ApiGateway::Stage")
///                         .includeAll(true)
///                         .build())
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networksecuritymanager:Scope
///     properties:
///       scopeConfiguration:
///         accountFilter:
///           include:
///             organizationalUnits:
///               - ou-abcd-12345678
///         resourceScopes:
///           - include:
///               expression:
///                 ands:
///                   - tags:
///                       Protect: 'true'
///                   - albConfig:
///                       scheme: internet-facing
///             resourceType: AWS::ElasticLoadBalancingV2::LoadBalancer::application
///           - resourceType: AWS::ApiGateway::Stage
///             includeAll: true
///       name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the scope.
///
///
/// Using `pulumi import`, import Network Security Manager Scope using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networksecuritymanager/scope:Scope example arn:aws:network-security-manager:us-east-1:123456789012:scope:0123456789abcdef
/// ```
class Scope extends pulumi.CustomResource {
  /// ARN of the scope.
  late final pulumi.Output<String> arn;
  /// Description of the scope.
  late final pulumi.Output<String?> description;
  /// Whether to publish the scope. When `true`, the scope is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published scope, the draft is saved on top of the published version. Defaults to `true`.
  late final pulumi.Output<bool> isPublished;
  /// Name of the scope.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Accounts and resources that are in scope. See `scopeConfiguration` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ScopeScopeConfiguration> scopeConfiguration;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Scope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Scope]. {@macro pulumi_networksecuritymanager_scope_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Scope(
    String name, {
    ScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/scope:Scope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scopeConfiguration = registerOutput<ScopeScopeConfiguration>('scopeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeScopeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Scope] resource's state with the given [name] and [id].
  static Scope get(
    String name,
    pulumi.Input<String> id, {
    ScopeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Scope._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Scope._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/scope:Scope',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scopeConfiguration = registerOutput<ScopeScopeConfiguration>('scopeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeScopeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Scope] resource.
  Scope.reference(String urn)
    : super(
        'aws:networksecuritymanager/scope:Scope',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scopeConfiguration = registerOutput<ScopeScopeConfiguration>('scopeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeScopeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
