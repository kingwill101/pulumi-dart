import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_configuration.dart';
import 'deployment_state.dart';

/// Manages an AWS Network Security Manager Deployment. A deployment applies one or more policies to the accounts and resources selected by a scope.
///
/// Changes to a deployment are published unless `isPublished` is `false`.
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
/// const example = new aws.networksecuritymanager.Deployment("example", {
///     configuration: {
///         enableCrossAccountVisibility: false,
///     },
///     name: "example",
///     policyArns: [exampleAwsNetworksecuritymanagerPolicy.arn],
///     scopeArn: exampleAwsNetworksecuritymanagerScope.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networksecuritymanager.Deployment("example",
///     configuration={
///         "enable_cross_account_visibility": False,
///     },
///     name="example",
///     policy_arns=[example_aws_networksecuritymanager_policy["arn"]],
///     scope_arn=example_aws_networksecuritymanager_scope["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkSecurityManager.Deployment("example", new()
///     {
///         Configuration = new Aws.NetworkSecurityManager.Inputs.DeploymentConfigurationArgs
///         {
///             EnableCrossAccountVisibility = false,
///         },
///         Name = "example",
///         PolicyArns = new[]
///         {
///             exampleAwsNetworksecuritymanagerPolicy.Arn,
///         },
///         ScopeArn = exampleAwsNetworksecuritymanagerScope.Arn,
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
/// 		_, err := networksecuritymanager.NewDeployment(ctx, "example", &networksecuritymanager.DeploymentArgs{
/// 			Configuration: &networksecuritymanager.DeploymentConfigurationArgs{
/// 				EnableCrossAccountVisibility: pulumi.Bool(false),
/// 			},
/// 			Name: pulumi.String("example"),
/// 			PolicyArns: pulumi.StringArray{
/// 				exampleAwsNetworksecuritymanagerPolicy.Arn,
/// 			},
/// 			ScopeArn: pulumi.Any(exampleAwsNetworksecuritymanagerScope.Arn),
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
/// resource "aws_networksecuritymanager_deployment" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   configuration {
///     enable_cross_account_visibility = false
///   }
///   name        = "example"
///   policy_arns = [exampleAwsNetworksecuritymanagerPolicy.arn]
///   scope_arn   = exampleAwsNetworksecuritymanagerScope.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networksecuritymanager.Deployment;
/// import com.pulumi.aws.networksecuritymanager.DeploymentArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.DeploymentConfigurationArgs;
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
///         var example = new Deployment("example", DeploymentArgs.builder()
///             .configuration(DeploymentConfigurationArgs.builder()
///                 .enableCrossAccountVisibility(false)
///                 .build())
///             .name("example")
///             .policyArns(exampleAwsNetworksecuritymanagerPolicy.get("arn"))
///             .scopeArn(exampleAwsNetworksecuritymanagerScope.get("arn"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networksecuritymanager:Deployment
///     properties:
///       configuration:
///         enableCrossAccountVisibility: false
///       name: example
///       policyArns:
///         - ${exampleAwsNetworksecuritymanagerPolicy.arn}
///       scopeArn: ${exampleAwsNetworksecuritymanagerScope.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the deployment.
///
///
/// Using `pulumi import`, import Network Security Manager Deployment using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networksecuritymanager/deployment:Deployment example arn:aws:network-security-manager:us-east-1:123456789012:deployment:0123456789abcdef
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// ARN of the deployment.
  late final pulumi.Output<String> arn;
  /// Settings for the deployment. See `configuration` Block below.
  late final pulumi.Output<DeploymentConfiguration> configuration;
  /// Description of the deployment.
  late final pulumi.Output<String?> description;
  /// Whether to publish the deployment. When `true`, the deployment is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published deployment, the draft is saved on top of the published version. Defaults to `true`.
  late final pulumi.Output<bool> isPublished;
  /// Name of the deployment.
  late final pulumi.Output<String> name;
  /// Set of ARNs of the policies to deploy. Specify 1 or 2 policies.
  late final pulumi.Output<List<String>> policyArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the scope that selects the accounts and resources the policies apply to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> scopeArn;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **Note:** A policy or scope used by a deployment cannot be deleted. Configure `createBeforeDestroy` on referenced policy and scope resources so that a replacement is associated with the deployment before the old resource is deleted.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_networksecuritymanager_deployment_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.55.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<DeploymentConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    policyArns = registerOutput<List<String>>('policyArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    scopeArn = registerOutput<String>('scopeArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [DeploymentType] resource's state with the given [name] and [id].
  static DeploymentType get(
    String name,
    pulumi.Input<String> id, {
    DeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DeploymentType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DeploymentType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<DeploymentConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    policyArns = registerOutput<List<String>>('policyArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    scopeArn = registerOutput<String>('scopeArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [DeploymentType] resource.
  DeploymentType.reference(String urn)
    : super(
        'aws:networksecuritymanager/deployment:Deployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<DeploymentConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    policyArns = registerOutput<List<String>>('policyArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    scopeArn = registerOutput<String>('scopeArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
