import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_group_args.dart';

/// Provides an RDS DB subnet group resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.SubnetGroup("default", {
///     name: "main",
///     subnetIds: [
///         frontend.id,
///         backend.id,
///     ],
///     tags: {
///         Name: "My DB subnet group",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.SubnetGroup("default",
///     name="main",
///     subnet_ids=[
///         frontend["id"],
///         backend["id"],
///     ],
///     tags={
///         "Name": "My DB subnet group",
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
///     var @default = new Aws.Rds.SubnetGroup("default", new()
///     {
///         Name = "main",
///         SubnetIds = new[]
///         {
///             frontend.Id,
///             backend.Id,
///         },
///         Tags =
///         {
///             { "Name", "My DB subnet group" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewSubnetGroup(ctx, "default", &rds.SubnetGroupArgs{
/// 			Name: pulumi.String("main"),
/// 			SubnetIds: pulumi.StringArray{
/// 				frontend.Id,
/// 				backend.Id,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("My DB subnet group"),
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
/// import com.pulumi.aws.rds.SubnetGroup;
/// import com.pulumi.aws.rds.SubnetGroupArgs;
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
///             .tags(Map.of("Name", "My DB subnet group"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:SubnetGroup
///     properties:
///       name: main
///       subnetIds:
///         - ${frontend.id}
///         - ${backend.id}
///       tags:
///         Name: My DB subnet group
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DB Subnet groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/subnetGroup:SubnetGroup default production-subnet-group
/// ```
class SubnetGroup extends pulumi.CustomResource {
  /// The ARN of the db subnet group.
  late final pulumi.Output<String> arn;

  /// The description of the DB subnet group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;

  /// The name of the DB subnet group. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list of VPC subnet IDs.
  late final pulumi.Output<List<String>> subnetIds;

  /// The network type of the db subnet group.
  late final pulumi.Output<List<String>> supportedNetworkTypes;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Provides the VPC ID of the DB subnet group.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [SubnetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetGroup]. {@macro pulumi_rds_subnet_group_subnet_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetGroup(
    String name, {
    SubnetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rds/subnetGroup:SubnetGroup',
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
    this.supportedNetworkTypes = registerOutput<List<String>>(
      'supportedNetworkTypes',
    );
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
