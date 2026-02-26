import 'package:pulumi/pulumi.dart';
import 'connection_association_args.dart';

/// Associates a Direct Connect Connection with a LAG.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Connection("example", {
/// name: "example",
/// bandwidth: "1Gbps",
/// location: "EqSe2-EQ",
/// });
/// const exampleLinkAggregationGroup = new aws.directconnect.LinkAggregationGroup("example", {
/// name: "example",
/// connectionsBandwidth: "1Gbps",
/// location: "EqSe2-EQ",
/// });
/// const exampleConnectionAssociation = new aws.directconnect.ConnectionAssociation("example", {
/// connectionId: example.id,
/// lagId: exampleLinkAggregationGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Connection("example",
/// name="example",
/// bandwidth="1Gbps",
/// location="EqSe2-EQ")
/// example_link_aggregation_group = aws.directconnect.LinkAggregationGroup("example",
/// name="example",
/// connections_bandwidth="1Gbps",
/// location="EqSe2-EQ")
/// example_connection_association = aws.directconnect.ConnectionAssociation("example",
/// connection_id=example.id,
/// lag_id=example_link_aggregation_group.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DirectConnect.Connection("example", new()
/// {
/// Name = "example",
/// Bandwidth = "1Gbps",
/// Location = "EqSe2-EQ",
/// });
///
/// var exampleLinkAggregationGroup = new Aws.DirectConnect.LinkAggregationGroup("example", new()
/// {
/// Name = "example",
/// ConnectionsBandwidth = "1Gbps",
/// Location = "EqSe2-EQ",
/// });
///
/// var exampleConnectionAssociation = new Aws.DirectConnect.ConnectionAssociation("example", new()
/// {
/// ConnectionId = example.Id,
/// LagId = exampleLinkAggregationGroup.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := directconnect.NewConnection(ctx, "example", &directconnect.ConnectionArgs{
/// Name:      pulumi.String("example"),
/// Bandwidth: pulumi.String("1Gbps"),
/// Location:  pulumi.String("EqSe2-EQ"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleLinkAggregationGroup, err := directconnect.NewLinkAggregationGroup(ctx, "example", &directconnect.LinkAggregationGroupArgs{
/// Name:                 pulumi.String("example"),
/// ConnectionsBandwidth: pulumi.String("1Gbps"),
/// Location:             pulumi.String("EqSe2-EQ"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = directconnect.NewConnectionAssociation(ctx, "example", &directconnect.ConnectionAssociationArgs{
/// ConnectionId: example.ID(),
/// LagId:        exampleLinkAggregationGroup.ID(),
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
/// import com.pulumi.aws.directconnect.Connection;
/// import com.pulumi.aws.directconnect.ConnectionArgs;
/// import com.pulumi.aws.directconnect.LinkAggregationGroup;
/// import com.pulumi.aws.directconnect.LinkAggregationGroupArgs;
/// import com.pulumi.aws.directconnect.ConnectionAssociation;
/// import com.pulumi.aws.directconnect.ConnectionAssociationArgs;
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
/// var example = new Connection("example", ConnectionArgs.builder()
/// .name("example")
/// .bandwidth("1Gbps")
/// .location("EqSe2-EQ")
/// .build());
///
/// var exampleLinkAggregationGroup = new LinkAggregationGroup("exampleLinkAggregationGroup", LinkAggregationGroupArgs.builder()
/// .name("example")
/// .connectionsBandwidth("1Gbps")
/// .location("EqSe2-EQ")
/// .build());
///
/// var exampleConnectionAssociation = new ConnectionAssociation("exampleConnectionAssociation", ConnectionAssociationArgs.builder()
/// .connectionId(example.id())
/// .lagId(exampleLinkAggregationGroup.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:directconnect:Connection
/// properties:
/// name: example
/// bandwidth: 1Gbps
/// location: EqSe2-EQ
/// exampleLinkAggregationGroup:
/// type: aws:directconnect:LinkAggregationGroup
/// name: example
/// properties:
/// name: example
/// connectionsBandwidth: 1Gbps
/// location: EqSe2-EQ
/// exampleConnectionAssociation:
/// type: aws:directconnect:ConnectionAssociation
/// name: example
/// properties:
/// connectionId: ${example.id}
/// lagId: ${exampleLinkAggregationGroup.id}
/// ```
/// <!--End PulumiCodeChooser -->
class ConnectionAssociation extends CustomResource {
  /// The ID of the connection.
  late final Output<String> connectionId;

  /// The ID of the LAG with which to associate the connection.
  late final Output<String> lagId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ConnectionAssociation(
    String name, {
    ConnectionAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connectionAssociation:ConnectionAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionId = registerOutput<String>('connectionId');
    this.lagId = registerOutput<String>('lagId');
    this.region = registerOutput<String>('region');
  }
}
