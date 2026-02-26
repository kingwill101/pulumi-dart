import 'package:pulumi/pulumi.dart';
import '../cluster_peering_timeouts/cluster_peering_timeouts.dart';
import 'cluster_peering_args.dart';

/// Resource for managing an Amazon Aurora DSQL Cluster Peering.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example1 = new aws.dsql.Cluster("example_1", {multiRegionProperties: {
/// witnessRegion: "us-west-2",
/// }});
/// const example2 = new aws.dsql.Cluster("example_2", {multiRegionProperties: {
/// witnessRegion: "us-west-2",
/// }});
/// const example1ClusterPeering = new aws.dsql.ClusterPeering("example_1", {
/// identifier: example1.identifier,
/// clusters: [example2.arn],
/// witnessRegion: example1.multiRegionProperties.apply(multiRegionProperties => multiRegionProperties?.witnessRegion),
/// });
/// const example2ClusterPeering = new aws.dsql.ClusterPeering("example_2", {
/// identifier: example2.identifier,
/// clusters: [example1.arn],
/// witnessRegion: example2.multiRegionProperties.apply(multiRegionProperties => multiRegionProperties?.witnessRegion),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example1 = aws.dsql.Cluster("example_1", multi_region_properties={
/// "witness_region": "us-west-2",
/// })
/// example2 = aws.dsql.Cluster("example_2", multi_region_properties={
/// "witness_region": "us-west-2",
/// })
/// example1_cluster_peering = aws.dsql.ClusterPeering("example_1",
/// identifier=example1.identifier,
/// clusters=[example2.arn],
/// witness_region=example1.multi_region_properties.witness_region)
/// example2_cluster_peering = aws.dsql.ClusterPeering("example_2",
/// identifier=example2.identifier,
/// clusters=[example1.arn],
/// witness_region=example2.multi_region_properties.witness_region)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example1 = new Aws.Dsql.Cluster("example_1", new()
/// {
/// MultiRegionProperties = new Aws.Dsql.Inputs.ClusterMultiRegionPropertiesArgs
/// {
/// WitnessRegion = "us-west-2",
/// },
/// });
///
/// var example2 = new Aws.Dsql.Cluster("example_2", new()
/// {
/// MultiRegionProperties = new Aws.Dsql.Inputs.ClusterMultiRegionPropertiesArgs
/// {
/// WitnessRegion = "us-west-2",
/// },
/// });
///
/// var example1ClusterPeering = new Aws.Dsql.ClusterPeering("example_1", new()
/// {
/// Identifier = example1.Identifier,
/// Clusters = new[]
/// {
/// example2.Arn,
/// },
/// WitnessRegion = example1.MultiRegionProperties.Apply(multiRegionProperties => multiRegionProperties?.WitnessRegion),
/// });
///
/// var example2ClusterPeering = new Aws.Dsql.ClusterPeering("example_2", new()
/// {
/// Identifier = example2.Identifier,
/// Clusters = new[]
/// {
/// example1.Arn,
/// },
/// WitnessRegion = example2.MultiRegionProperties.Apply(multiRegionProperties => multiRegionProperties?.WitnessRegion),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dsql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example1, err := dsql.NewCluster(ctx, "example_1", &dsql.ClusterArgs{
/// MultiRegionProperties: &dsql.ClusterMultiRegionPropertiesArgs{
/// WitnessRegion: pulumi.String("us-west-2"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// example2, err := dsql.NewCluster(ctx, "example_2", &dsql.ClusterArgs{
/// MultiRegionProperties: &dsql.ClusterMultiRegionPropertiesArgs{
/// WitnessRegion: pulumi.String("us-west-2"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dsql.NewClusterPeering(ctx, "example_1", &dsql.ClusterPeeringArgs{
/// Identifier: example1.Identifier,
/// Clusters: pulumi.StringArray{
/// example2.Arn,
/// },
/// WitnessRegion: pulumi.String(example1.MultiRegionProperties.ApplyT(func(multiRegionProperties dsql.ClusterMultiRegionProperties) (*string, error) {
/// return &multiRegionProperties.WitnessRegion, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dsql.NewClusterPeering(ctx, "example_2", &dsql.ClusterPeeringArgs{
/// Identifier: example2.Identifier,
/// Clusters: pulumi.StringArray{
/// example1.Arn,
/// },
/// WitnessRegion: pulumi.String(example2.MultiRegionProperties.ApplyT(func(multiRegionProperties dsql.ClusterMultiRegionProperties) (*string, error) {
/// return &multiRegionProperties.WitnessRegion, nil
/// }).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.aws.dsql.Cluster;
/// import com.pulumi.aws.dsql.ClusterArgs;
/// import com.pulumi.aws.dsql.inputs.ClusterMultiRegionPropertiesArgs;
/// import com.pulumi.aws.dsql.ClusterPeering;
/// import com.pulumi.aws.dsql.ClusterPeeringArgs;
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
/// var example1 = new Cluster("example1", ClusterArgs.builder()
/// .multiRegionProperties(ClusterMultiRegionPropertiesArgs.builder()
/// .witnessRegion("us-west-2")
/// .build())
/// .build());
///
/// var example2 = new Cluster("example2", ClusterArgs.builder()
/// .multiRegionProperties(ClusterMultiRegionPropertiesArgs.builder()
/// .witnessRegion("us-west-2")
/// .build())
/// .build());
///
/// var example1ClusterPeering = new ClusterPeering("example1ClusterPeering", ClusterPeeringArgs.builder()
/// .identifier(example1.identifier())
/// .clusters(example2.arn())
/// .witnessRegion(example1.multiRegionProperties().applyValue(_multiRegionProperties -> _multiRegionProperties.witnessRegion()))
/// .build());
///
/// var example2ClusterPeering = new ClusterPeering("example2ClusterPeering", ClusterPeeringArgs.builder()
/// .identifier(example2.identifier())
/// .clusters(example1.arn())
/// .witnessRegion(example2.multiRegionProperties().applyValue(_multiRegionProperties -> _multiRegionProperties.witnessRegion()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example1:
/// type: aws:dsql:Cluster
/// name: example_1
/// properties:
/// multiRegionProperties:
/// witnessRegion: us-west-2
/// example2:
/// type: aws:dsql:Cluster
/// name: example_2
/// properties:
/// multiRegionProperties:
/// witnessRegion: us-west-2
/// example1ClusterPeering:
/// type: aws:dsql:ClusterPeering
/// name: example_1
/// properties:
/// identifier: ${example1.identifier}
/// clusters:
/// - ${example2.arn}
/// witnessRegion: ${example1.multiRegionProperties.witnessRegion}
/// example2ClusterPeering:
/// type: aws:dsql:ClusterPeering
/// name: example_2
/// properties:
/// identifier: ${example2.identifier}
/// clusters:
/// - ${example1.arn}
/// witnessRegion: ${example2.multiRegionProperties.witnessRegion}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DSQL Cluster Peering using the <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dsql/clusterPeering:ClusterPeering example cluster-id-12345678
/// ```
class ClusterPeering extends CustomResource {
  /// List of DSQL Cluster ARNs to be peered to this cluster.
  late final Output<List<String>> clusters;

  /// DSQL Cluster Identifier.
  late final Output<String> identifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<ClusterPeeringTimeouts?> timeouts;

  /// Witness region for a multi-region cluster.
  late final Output<String> witnessRegion;

  ClusterPeering(
    String name, {
    ClusterPeeringArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dsql/clusterPeering:ClusterPeering',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusters = Output.createUnknown<List<String>>();
    this.identifier = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<ClusterPeeringTimeouts?>();
    this.witnessRegion = Output.createUnknown<String>();
  }
}
