import 'package:pulumi/pulumi.dart';
import 'placement_group_args.dart';

/// Provides an EC2 placement group. Read more about placement groups
/// in [AWS Docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const web = new aws.ec2.PlacementGroup("web", {
/// name: "hunky-dory-pg",
/// strategy: aws.ec2.PlacementStrategy.Cluster,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// web = aws.ec2.PlacementGroup("web",
/// name="hunky-dory-pg",
/// strategy=aws.ec2.PlacementStrategy.CLUSTER)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var web = new Aws.Ec2.PlacementGroup("web", new()
/// {
/// Name = "hunky-dory-pg",
/// Strategy = Aws.Ec2.PlacementStrategy.Cluster,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewPlacementGroup(ctx, "web", &ec2.PlacementGroupArgs{
/// Name:     pulumi.String("hunky-dory-pg"),
/// Strategy: pulumi.String(ec2.PlacementStrategyCluster),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var web = new PlacementGroup("web", PlacementGroupArgs.builder()
/// .name("hunky-dory-pg")
/// .strategy("cluster")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// web:
/// type: aws:ec2:PlacementGroup
/// properties:
/// name: hunky-dory-pg
/// strategy: cluster
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import placement groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/placementGroup:PlacementGroup prod_pg production-placement-group
/// ```
class PlacementGroup extends CustomResource {
  /// Amazon Resource Name (ARN) of the placement group.
  late final Output<String> arn;

  /// The name of the placement group.
  late final Output<String> name;

  /// The number of partitions to create in the
  /// placement group.  Can only be specified when the <span pulumi-lang-nodejs="`strategy`" pulumi-lang-dotnet="`Strategy`" pulumi-lang-go="`strategy`" pulumi-lang-python="`strategy`" pulumi-lang-yaml="`strategy`" pulumi-lang-java="`strategy`">`strategy`</span> is set to
  /// <span pulumi-lang-nodejs="`partition`" pulumi-lang-dotnet="`Partition`" pulumi-lang-go="`partition`" pulumi-lang-python="`partition`" pulumi-lang-yaml="`partition`" pulumi-lang-java="`partition`">`partition`</span>.  Must be at least <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. (default is <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>).
  late final Output<int> partitionCount;

  /// The ID of the placement group.
  late final Output<String> placementGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Determines how placement groups spread instances. Can only be used
  /// when the <span pulumi-lang-nodejs="`strategy`" pulumi-lang-dotnet="`Strategy`" pulumi-lang-go="`strategy`" pulumi-lang-python="`strategy`" pulumi-lang-yaml="`strategy`" pulumi-lang-java="`strategy`">`strategy`</span> is set to <span pulumi-lang-nodejs="`spread`" pulumi-lang-dotnet="`Spread`" pulumi-lang-go="`spread`" pulumi-lang-python="`spread`" pulumi-lang-yaml="`spread`" pulumi-lang-java="`spread`">`spread`</span>. Can be <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span> or <span pulumi-lang-nodejs="`rack`" pulumi-lang-dotnet="`Rack`" pulumi-lang-go="`rack`" pulumi-lang-python="`rack`" pulumi-lang-yaml="`rack`" pulumi-lang-java="`rack`">`rack`</span>. <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span> can only be used for Outpost placement groups. Defaults to <span pulumi-lang-nodejs="`rack`" pulumi-lang-dotnet="`Rack`" pulumi-lang-go="`rack`" pulumi-lang-python="`rack`" pulumi-lang-yaml="`rack`" pulumi-lang-java="`rack`">`rack`</span>.
  late final Output<String> spreadLevel;

  /// The placement strategy. Can be <span pulumi-lang-nodejs="`cluster`" pulumi-lang-dotnet="`Cluster`" pulumi-lang-go="`cluster`" pulumi-lang-python="`cluster`" pulumi-lang-yaml="`cluster`" pulumi-lang-java="`cluster`">`cluster`</span>, <span pulumi-lang-nodejs="`partition`" pulumi-lang-dotnet="`Partition`" pulumi-lang-go="`partition`" pulumi-lang-python="`partition`" pulumi-lang-yaml="`partition`" pulumi-lang-java="`partition`">`partition`</span> or <span pulumi-lang-nodejs="`spread`" pulumi-lang-dotnet="`Spread`" pulumi-lang-go="`spread`" pulumi-lang-python="`spread`" pulumi-lang-yaml="`spread`" pulumi-lang-java="`spread`">`spread`</span>.
  late final Output<String> strategy;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  PlacementGroup(
    String name, {
    PlacementGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/placementGroup:PlacementGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.partitionCount = Output.createUnknown<int>();
    this.placementGroupId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.spreadLevel = Output.createUnknown<String>();
    this.strategy = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
