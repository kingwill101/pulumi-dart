import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_group_args.dart';
import 'placement_group_state.dart';

/// Provides an EC2 placement group. Read more about placement groups
/// in [AWS Docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const web = new aws.ec2.PlacementGroup("web", {
///     name: "hunky-dory-pg",
///     strategy: aws.ec2.PlacementStrategy.Cluster,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// web = aws.ec2.PlacementGroup("web",
///     name="hunky-dory-pg",
///     strategy=aws.ec2.PlacementStrategy.CLUSTER)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web = new Aws.Ec2.PlacementGroup("web", new()
///     {
///         Name = "hunky-dory-pg",
///         Strategy = Aws.Ec2.PlacementStrategy.Cluster,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewPlacementGroup(ctx, "web", &ec2.PlacementGroupArgs{
/// 			Name:     pulumi.String("hunky-dory-pg"),
/// 			Strategy: pulumi.String(ec2.PlacementStrategyCluster),
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
/// import com.pulumi.aws.ec2.PlacementGroup;
/// import com.pulumi.aws.ec2.PlacementGroupArgs;
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
///         var web = new PlacementGroup("web", PlacementGroupArgs.builder()
///             .name("hunky-dory-pg")
///             .strategy("cluster")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   web:
///     type: aws:ec2:PlacementGroup
///     properties:
///       name: hunky-dory-pg
///       strategy: cluster
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import placement groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/placementGroup:PlacementGroup prod_pg production-placement-group
/// ```
class PlacementGroup extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the placement group.
  late final pulumi.Output<String> arn;
  /// The name of the placement group.
  late final pulumi.Output<String> name;
  /// The number of partitions to create in the
  /// placement group.  Can only be specified when the `strategy` is set to
  /// `partition`.  Must be at least `1`. (default is `2`).
  late final pulumi.Output<int> partitionCount;
  /// The ID of the placement group.
  late final pulumi.Output<String> placementGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Determines how placement groups spread instances. Can only be used
  /// when the `strategy` is set to `spread`. Can be `host` or `rack`. `host` can only be used for Outpost placement groups. Defaults to `rack`.
  late final pulumi.Output<String> spreadLevel;
  /// The placement strategy. Can be `cluster`, `partition` or `spread`.
  late final pulumi.Output<String> strategy;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [PlacementGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PlacementGroup]. {@macro pulumi_ec2_placement_group_placement_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PlacementGroup(
    String name, {
    PlacementGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/placementGroup:PlacementGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.partitionCount = registerOutput<int>('partitionCount');
    this.placementGroupId = registerOutput<String>('placementGroupId');
    this.region = registerOutput<String>('region');
    this.spreadLevel = registerOutput<String>('spreadLevel');
    this.strategy = registerOutput<String>('strategy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [PlacementGroup] resource's state with the given [name] and [id].
  static PlacementGroup get(
    String name,
    pulumi.Input<String> id, {
    PlacementGroupState? state,
  }) {
    return PlacementGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PlacementGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/placementGroup:PlacementGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.partitionCount = registerOutput<int>('partitionCount');
    this.placementGroupId = registerOutput<String>('placementGroupId');
    this.region = registerOutput<String>('region');
    this.spreadLevel = registerOutput<String>('spreadLevel');
    this.strategy = registerOutput<String>('strategy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
