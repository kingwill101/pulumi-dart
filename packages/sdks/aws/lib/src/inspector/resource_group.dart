import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_args.dart';
import 'resource_group_state.dart';

/// Provides an Amazon Inspector Classic Resource Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.inspector.ResourceGroup("example", {tags: {
///     Name: "foo",
///     Env: "bar",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.inspector.ResourceGroup("example", tags={
///     "Name": "foo",
///     "Env": "bar",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Inspector.ResourceGroup("example", new()
///     {
///         Tags =
///         {
///             { "Name", "foo" },
///             { "Env", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/inspector"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := inspector.NewResourceGroup(ctx, "example", &inspector.ResourceGroupArgs{
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("foo"),
/// 				"Env":  pulumi.String("bar"),
/// 			},
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
/// resource "aws_inspector_resourcegroup" "example" {
///   tags = {
///     "Name" = "foo"
///     "Env"  = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.inspector.ResourceGroup;
/// import com.pulumi.aws.inspector.ResourceGroupArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "foo"),
///                 Map.entry("Env", "bar")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:inspector:ResourceGroup
///     properties:
///       tags:
///         Name: foo
///         Env: bar
/// ```
class ResourceGroup extends pulumi.CustomResource {
  /// The resource group ARN.
  late final pulumi.Output<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of tags that are used to select the EC2 instances to be included in an Amazon Inspector assessment target.
  late final pulumi.Output<Map<String, String>> tags;

  /// Creates a new [ResourceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGroup]. {@macro pulumi_inspector_resource_group_resource_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGroup(
    String name, {
    ResourceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector/resourceGroup:ResourceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ResourceGroup] resource's state with the given [name] and [id].
  static ResourceGroup get(
    String name,
    pulumi.Input<String> id, {
    ResourceGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector/resourceGroup:ResourceGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ResourceGroup] resource.
  ResourceGroup.reference(String urn)
    : super(
        'aws:inspector/resourceGroup:ResourceGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
