import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_collection_args.dart';
import 'resource_collection_cloudformation.dart';
import 'resource_collection_state.dart';
import 'resource_collection_tags.dart';

/// Resource for managing an AWS DevOps Guru Resource Collection.
///
/// &gt; Only one type of resource collection (All Account Resources, CloudFormation, or Tags) can be enabled in an account at a time. To avoid persistent differences, this resource should be defined only once.
///
/// ## Example Usage
///
/// ### All Account Resources
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsguru.ResourceCollection("example", {
///     cloudformation: {
///         stackNames: ["*"],
///     },
///     type: "AWS_SERVICE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.ResourceCollection("example",
///     cloudformation={
///         "stack_names": ["*"],
///     },
///     type="AWS_SERVICE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DevOpsGuru.ResourceCollection("example", new()
///     {
///         Cloudformation = new Aws.DevOpsGuru.Inputs.ResourceCollectionCloudformationArgs
///         {
///             StackNames = new[]
///             {
///                 "*",
///             },
///         },
///         Type = "AWS_SERVICE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsguru.NewResourceCollection(ctx, "example", &devopsguru.ResourceCollectionArgs{
/// 			Cloudformation: &devopsguru.ResourceCollectionCloudformationArgs{
/// 				StackNames: pulumi.StringArray{
/// 					pulumi.String("*"),
/// 				},
/// 			},
/// 			Type: pulumi.String("AWS_SERVICE"),
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
/// resource "aws_devopsguru_resourcecollection" "example" {
///   cloudformation = {
///     stack_names = ["*"]
///   }
///   type = "AWS_SERVICE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devopsguru.ResourceCollection;
/// import com.pulumi.aws.devopsguru.ResourceCollectionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ResourceCollectionCloudformationArgs;
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
///         var example = new ResourceCollection("example", ResourceCollectionArgs.builder()
///             .cloudformation(ResourceCollectionCloudformationArgs.builder()
///                 .stackNames("*")
///                 .build())
///             .type("AWS_SERVICE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devopsguru:ResourceCollection
///     properties:
///       cloudformation:
///         stackNames:
///           - '*'
///       type: AWS_SERVICE
/// ```
///
///
/// ### CloudFormation Stacks
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsguru.ResourceCollection("example", {
///     cloudformation: {
///         stackNames: ["ExampleStack"],
///     },
///     type: "AWS_CLOUD_FORMATION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.ResourceCollection("example",
///     cloudformation={
///         "stack_names": ["ExampleStack"],
///     },
///     type="AWS_CLOUD_FORMATION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DevOpsGuru.ResourceCollection("example", new()
///     {
///         Cloudformation = new Aws.DevOpsGuru.Inputs.ResourceCollectionCloudformationArgs
///         {
///             StackNames = new[]
///             {
///                 "ExampleStack",
///             },
///         },
///         Type = "AWS_CLOUD_FORMATION",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsguru.NewResourceCollection(ctx, "example", &devopsguru.ResourceCollectionArgs{
/// 			Cloudformation: &devopsguru.ResourceCollectionCloudformationArgs{
/// 				StackNames: pulumi.StringArray{
/// 					pulumi.String("ExampleStack"),
/// 				},
/// 			},
/// 			Type: pulumi.String("AWS_CLOUD_FORMATION"),
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
/// resource "aws_devopsguru_resourcecollection" "example" {
///   cloudformation = {
///     stack_names = ["ExampleStack"]
///   }
///   type = "AWS_CLOUD_FORMATION"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devopsguru.ResourceCollection;
/// import com.pulumi.aws.devopsguru.ResourceCollectionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ResourceCollectionCloudformationArgs;
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
///         var example = new ResourceCollection("example", ResourceCollectionArgs.builder()
///             .cloudformation(ResourceCollectionCloudformationArgs.builder()
///                 .stackNames("ExampleStack")
///                 .build())
///             .type("AWS_CLOUD_FORMATION")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devopsguru:ResourceCollection
///     properties:
///       cloudformation:
///         stackNames:
///           - ExampleStack
///       type: AWS_CLOUD_FORMATION
/// ```
///
///
/// ### Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsguru.ResourceCollection("example", {
///     tags: {
///         appBoundaryKey: "DevOps-Guru-Example",
///         tagValues: ["Example-Value"],
///     },
///     type: "AWS_TAGS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.ResourceCollection("example",
///     tags={
///         "app_boundary_key": "DevOps-Guru-Example",
///         "tag_values": ["Example-Value"],
///     },
///     type="AWS_TAGS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DevOpsGuru.ResourceCollection("example", new()
///     {
///         Tags = new Aws.DevOpsGuru.Inputs.ResourceCollectionTagsArgs
///         {
///             AppBoundaryKey = "DevOps-Guru-Example",
///             TagValues = new[]
///             {
///                 "Example-Value",
///             },
///         },
///         Type = "AWS_TAGS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsguru.NewResourceCollection(ctx, "example", &devopsguru.ResourceCollectionArgs{
/// 			Tags: &devopsguru.ResourceCollectionTagsArgs{
/// 				AppBoundaryKey: pulumi.String("DevOps-Guru-Example"),
/// 				TagValues: pulumi.StringArray{
/// 					pulumi.String("Example-Value"),
/// 				},
/// 			},
/// 			Type: pulumi.String("AWS_TAGS"),
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
/// resource "aws_devopsguru_resourcecollection" "example" {
///   tags = {
///     app_boundary_key = "DevOps-Guru-Example"
///     tag_values       = ["Example-Value"]
///   }
///   type = "AWS_TAGS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devopsguru.ResourceCollection;
/// import com.pulumi.aws.devopsguru.ResourceCollectionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ResourceCollectionTagsArgs;
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
///         var example = new ResourceCollection("example", ResourceCollectionArgs.builder()
///             .tags(ResourceCollectionTagsArgs.builder()
///                 .appBoundaryKey("DevOps-Guru-Example")
///                 .tagValues("Example-Value")
///                 .build())
///             .type("AWS_TAGS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devopsguru:ResourceCollection
///     properties:
///       tags:
///         appBoundaryKey: DevOps-Guru-Example
///         tagValues:
///           - Example-Value
///       type: AWS_TAGS
/// ```
///
///
/// ### Tags All Resources
///
/// To analyze all resources with the `appBoundaryKey` regardless of the corresponding tag value, set `tagValues` to `["*"]`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsguru.ResourceCollection("example", {
///     tags: {
///         appBoundaryKey: "DevOps-Guru-Example",
///         tagValues: ["*"],
///     },
///     type: "AWS_TAGS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.ResourceCollection("example",
///     tags={
///         "app_boundary_key": "DevOps-Guru-Example",
///         "tag_values": ["*"],
///     },
///     type="AWS_TAGS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DevOpsGuru.ResourceCollection("example", new()
///     {
///         Tags = new Aws.DevOpsGuru.Inputs.ResourceCollectionTagsArgs
///         {
///             AppBoundaryKey = "DevOps-Guru-Example",
///             TagValues = new[]
///             {
///                 "*",
///             },
///         },
///         Type = "AWS_TAGS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsguru.NewResourceCollection(ctx, "example", &devopsguru.ResourceCollectionArgs{
/// 			Tags: &devopsguru.ResourceCollectionTagsArgs{
/// 				AppBoundaryKey: pulumi.String("DevOps-Guru-Example"),
/// 				TagValues: pulumi.StringArray{
/// 					pulumi.String("*"),
/// 				},
/// 			},
/// 			Type: pulumi.String("AWS_TAGS"),
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
/// resource "aws_devopsguru_resourcecollection" "example" {
///   tags = {
///     app_boundary_key = "DevOps-Guru-Example"
///     tag_values       = ["*"]
///   }
///   type = "AWS_TAGS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devopsguru.ResourceCollection;
/// import com.pulumi.aws.devopsguru.ResourceCollectionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ResourceCollectionTagsArgs;
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
///         var example = new ResourceCollection("example", ResourceCollectionArgs.builder()
///             .tags(ResourceCollectionTagsArgs.builder()
///                 .appBoundaryKey("DevOps-Guru-Example")
///                 .tagValues("*")
///                 .build())
///             .type("AWS_TAGS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devopsguru:ResourceCollection
///     properties:
///       tags:
///         appBoundaryKey: DevOps-Guru-Example
///         tagValues:
///           - '*'
///       type: AWS_TAGS
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DevOps Guru Resource Collection using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:devopsguru/resourceCollection:ResourceCollection example AWS_CLOUD_FORMATION
/// ```
class ResourceCollection extends pulumi.CustomResource {
  /// A collection of AWS CloudFormation stacks. See `cloudformation` below for additional details.
  late final pulumi.Output<ResourceCollectionCloudformation?> cloudformation;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// AWS tags used to filter the resources in the resource collection. See `tags` below for additional details.
  late final pulumi.Output<ResourceCollectionTags?> tags;
  /// Type of AWS resource collection to create. Valid values are `AWS_CLOUD_FORMATION`, `AWS_SERVICE`, and `AWS_TAGS`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [ResourceCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceCollection]. {@macro pulumi_devopsguru_resource_collection_resource_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceCollection(
    String name, {
    ResourceCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/resourceCollection:ResourceCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    cloudformation = registerOutput<ResourceCollectionCloudformation?>('cloudformation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceCollectionCloudformation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<ResourceCollectionTags?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceCollectionTags.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ResourceCollection] resource's state with the given [name] and [id].
  static ResourceCollection get(
    String name,
    pulumi.Input<String> id, {
    ResourceCollectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceCollection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceCollection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/resourceCollection:ResourceCollection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudformation = registerOutput<ResourceCollectionCloudformation?>('cloudformation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceCollectionCloudformation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<ResourceCollectionTags?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceCollectionTags.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ResourceCollection] resource.
  ResourceCollection.reference(String urn)
    : super(
        'aws:devopsguru/resourceCollection:ResourceCollection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cloudformation = registerOutput<ResourceCollectionCloudformation?>('cloudformation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceCollectionCloudformation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<ResourceCollectionTags?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceCollectionTags.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
