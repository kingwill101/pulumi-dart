import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_association_args.dart';
import 'connection_association_state.dart';

/// Associates a Direct Connect Connection with a LAG.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Connection("example", {
///     name: "example",
///     bandwidth: "1Gbps",
///     location: "EqSe2-EQ",
/// });
/// const exampleLinkAggregationGroup = new aws.directconnect.LinkAggregationGroup("example", {
///     name: "example",
///     connectionsBandwidth: "1Gbps",
///     location: "EqSe2-EQ",
/// });
/// const exampleConnectionAssociation = new aws.directconnect.ConnectionAssociation("example", {
///     connectionId: example.id,
///     lagId: exampleLinkAggregationGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Connection("example",
///     name="example",
///     bandwidth="1Gbps",
///     location="EqSe2-EQ")
/// example_link_aggregation_group = aws.directconnect.LinkAggregationGroup("example",
///     name="example",
///     connections_bandwidth="1Gbps",
///     location="EqSe2-EQ")
/// example_connection_association = aws.directconnect.ConnectionAssociation("example",
///     connection_id=example.id,
///     lag_id=example_link_aggregation_group.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectConnect.Connection("example", new()
///     {
///         Name = "example",
///         Bandwidth = "1Gbps",
///         Location = "EqSe2-EQ",
///     });
///
///     var exampleLinkAggregationGroup = new Aws.DirectConnect.LinkAggregationGroup("example", new()
///     {
///         Name = "example",
///         ConnectionsBandwidth = "1Gbps",
///         Location = "EqSe2-EQ",
///     });
///
///     var exampleConnectionAssociation = new Aws.DirectConnect.ConnectionAssociation("example", new()
///     {
///         ConnectionId = example.Id,
///         LagId = exampleLinkAggregationGroup.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := directconnect.NewConnection(ctx, "example", &directconnect.ConnectionArgs{
/// 			Name:      pulumi.String("example"),
/// 			Bandwidth: pulumi.String("1Gbps"),
/// 			Location:  pulumi.String("EqSe2-EQ"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinkAggregationGroup, err := directconnect.NewLinkAggregationGroup(ctx, "example", &directconnect.LinkAggregationGroupArgs{
/// 			Name:                 pulumi.String("example"),
/// 			ConnectionsBandwidth: pulumi.String("1Gbps"),
/// 			Location:             pulumi.String("EqSe2-EQ"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directconnect.NewConnectionAssociation(ctx, "example", &directconnect.ConnectionAssociationArgs{
/// 			ConnectionId: example.ID().ToIDOutput().ToStringOutput(),
/// 			LagId:        exampleLinkAggregationGroup.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_directconnect_connection" "example" {
///   name      = "example"
///   bandwidth = "1Gbps"
///   location  = "EqSe2-EQ"
/// }
/// resource "aws_directconnect_linkaggregationgroup" "example" {
///   name                  = "example"
///   connections_bandwidth = "1Gbps"
///   location              = "EqSe2-EQ"
/// }
/// resource "aws_directconnect_connectionassociation" "example" {
///   connection_id = aws_directconnect_connection.example.id
///   lag_id        = aws_directconnect_linkaggregationgroup.example.id
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
///         var example = new Connection("example", ConnectionArgs.builder()
///             .name("example")
///             .bandwidth("1Gbps")
///             .location("EqSe2-EQ")
///             .build());
///
///         var exampleLinkAggregationGroup = new LinkAggregationGroup("exampleLinkAggregationGroup", LinkAggregationGroupArgs.builder()
///             .name("example")
///             .connectionsBandwidth("1Gbps")
///             .location("EqSe2-EQ")
///             .build());
///
///         var exampleConnectionAssociation = new ConnectionAssociation("exampleConnectionAssociation", ConnectionAssociationArgs.builder()
///             .connectionId(example.id())
///             .lagId(exampleLinkAggregationGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directconnect:Connection
///     properties:
///       name: example
///       bandwidth: 1Gbps
///       location: EqSe2-EQ
///   exampleLinkAggregationGroup:
///     type: aws:directconnect:LinkAggregationGroup
///     name: example
///     properties:
///       name: example
///       connectionsBandwidth: 1Gbps
///       location: EqSe2-EQ
///   exampleConnectionAssociation:
///     type: aws:directconnect:ConnectionAssociation
///     name: example
///     properties:
///       connectionId: ${example.id}
///       lagId: ${exampleLinkAggregationGroup.id}
/// ```
class ConnectionAssociation extends pulumi.CustomResource {
  /// The ID of the connection.
  late final pulumi.Output<String> connectionId;
  /// The ID of the LAG with which to associate the connection.
  late final pulumi.Output<String> lagId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ConnectionAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionAssociation]. {@macro pulumi_directconnect_connection_association_connection_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionAssociation(
    String name, {
    ConnectionAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connectionAssociation:ConnectionAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    connectionId = registerOutput<String>('connectionId');
    lagId = registerOutput<String>('lagId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ConnectionAssociation] resource's state with the given [name] and [id].
  static ConnectionAssociation get(
    String name,
    pulumi.Input<String> id, {
    ConnectionAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConnectionAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConnectionAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connectionAssociation:ConnectionAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionId = registerOutput<String>('connectionId');
    lagId = registerOutput<String>('lagId');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [ConnectionAssociation] resource.
  ConnectionAssociation.reference(String urn)
    : super(
        'aws:directconnect/connectionAssociation:ConnectionAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    connectionId = registerOutput<String>('connectionId');
    lagId = registerOutput<String>('lagId');
    region = registerOutput<String>('region');
  }
}
