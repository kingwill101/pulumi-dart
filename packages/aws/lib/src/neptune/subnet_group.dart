import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_group_args.dart';

/// Provides an Neptune subnet group resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.neptune.SubnetGroup("default", {
///     name: "main",
///     subnetIds: [
///         frontend.id,
///         backend.id,
///     ],
///     tags: {
///         Name: "My neptune subnet group",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.neptune.SubnetGroup("default",
///     name="main",
///     subnet_ids=[
///         frontend["id"],
///         backend["id"],
///     ],
///     tags={
///         "Name": "My neptune subnet group",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Neptune.SubnetGroup("default", new()
///     {
///         Name = "main",
///         SubnetIds = new[]
///         {
///             frontend.Id,
///             backend.Id,
///         },
///         Tags =
///         {
///             { "Name", "My neptune subnet group" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := neptune.NewSubnetGroup(ctx, "default", &neptune.SubnetGroupArgs{
/// 			Name: pulumi.String("main"),
/// 			SubnetIds: pulumi.StringArray{
/// 				frontend.Id,
/// 				backend.Id,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("My neptune subnet group"),
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
/// import com.pulumi.aws.neptune.SubnetGroup;
/// import com.pulumi.aws.neptune.SubnetGroupArgs;
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
///         var default_ = new SubnetGroup("default", SubnetGroupArgs.builder()
///             .name("main")
///             .subnetIds(
///                 frontend.id(),
///                 backend.id())
///             .tags(Map.of("Name", "My neptune subnet group"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:neptune:SubnetGroup
///     properties:
///       name: main
///       subnetIds:
///         - ${frontend.id}
///         - ${backend.id}
///       tags:
///         Name: My neptune subnet group
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Neptune Subnet groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/subnetGroup:SubnetGroup default production-subnet-group
/// ```
class SubnetGroup extends pulumi.CustomResource {
  /// The ARN of the neptune subnet group.
  late final pulumi.Output<String> arn;
  /// The description of the neptune subnet group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;
  /// The name of the neptune subnet group. If omitted, this provider will assign a random, unique name.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A list of VPC subnet IDs.
  late final pulumi.Output<List<String>> subnetIds;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [SubnetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetGroup]. {@macro pulumi_neptune_subnet_group_subnet_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetGroup(
    String name, {
    SubnetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptune/subnetGroup:SubnetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
