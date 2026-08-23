import 'package:pulumi/pulumi.dart' as pulumi;
import 'prefix_list_reference_args.dart';
import 'prefix_list_reference_state.dart';

/// Manages an EC2 Transit Gateway Prefix List Reference.
///
/// ## Example Usage
///
/// ### Attachment Routing
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.PrefixListReference("example", {
///     prefixListId: exampleAwsEc2ManagedPrefixList.id,
///     transitGatewayAttachmentId: exampleAwsEc2TransitGatewayVpcAttachment.id,
///     transitGatewayRouteTableId: exampleAwsEc2TransitGateway.associationDefaultRouteTableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.PrefixListReference("example",
///     prefix_list_id=example_aws_ec2_managed_prefix_list["id"],
///     transit_gateway_attachment_id=example_aws_ec2_transit_gateway_vpc_attachment["id"],
///     transit_gateway_route_table_id=example_aws_ec2_transit_gateway["associationDefaultRouteTableId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.PrefixListReference("example", new()
///     {
///         PrefixListId = exampleAwsEc2ManagedPrefixList.Id,
///         TransitGatewayAttachmentId = exampleAwsEc2TransitGatewayVpcAttachment.Id,
///         TransitGatewayRouteTableId = exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.NewPrefixListReference(ctx, "example", &ec2transitgateway.PrefixListReferenceArgs{
/// 			PrefixListId:               pulumi.Any(exampleAwsEc2ManagedPrefixList.Id),
/// 			TransitGatewayAttachmentId: pulumi.Any(exampleAwsEc2TransitGatewayVpcAttachment.Id),
/// 			TransitGatewayRouteTableId: pulumi.Any(exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId),
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
/// resource "aws_ec2transitgateway_prefixlistreference" "example" {
///   prefix_list_id                 = exampleAwsEc2ManagedPrefixList.id
///   transit_gateway_attachment_id  = exampleAwsEc2TransitGatewayVpcAttachment.id
///   transit_gateway_route_table_id = exampleAwsEc2TransitGateway.associationDefaultRouteTableId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.PrefixListReference;
/// import com.pulumi.aws.ec2transitgateway.PrefixListReferenceArgs;
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
///         var example = new PrefixListReference("example", PrefixListReferenceArgs.builder()
///             .prefixListId(exampleAwsEc2ManagedPrefixList.id())
///             .transitGatewayAttachmentId(exampleAwsEc2TransitGatewayVpcAttachment.id())
///             .transitGatewayRouteTableId(exampleAwsEc2TransitGateway.associationDefaultRouteTableId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:PrefixListReference
///     properties:
///       prefixListId: ${exampleAwsEc2ManagedPrefixList.id}
///       transitGatewayAttachmentId: ${exampleAwsEc2TransitGatewayVpcAttachment.id}
///       transitGatewayRouteTableId: ${exampleAwsEc2TransitGateway.associationDefaultRouteTableId}
/// ```
///
///
/// ### Blackhole Routing
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.PrefixListReference("example", {
///     blackhole: true,
///     prefixListId: exampleAwsEc2ManagedPrefixList.id,
///     transitGatewayRouteTableId: exampleAwsEc2TransitGateway.associationDefaultRouteTableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.PrefixListReference("example",
///     blackhole=True,
///     prefix_list_id=example_aws_ec2_managed_prefix_list["id"],
///     transit_gateway_route_table_id=example_aws_ec2_transit_gateway["associationDefaultRouteTableId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.PrefixListReference("example", new()
///     {
///         Blackhole = true,
///         PrefixListId = exampleAwsEc2ManagedPrefixList.Id,
///         TransitGatewayRouteTableId = exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.NewPrefixListReference(ctx, "example", &ec2transitgateway.PrefixListReferenceArgs{
/// 			Blackhole:                  pulumi.Bool(true),
/// 			PrefixListId:               pulumi.Any(exampleAwsEc2ManagedPrefixList.Id),
/// 			TransitGatewayRouteTableId: pulumi.Any(exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId),
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
/// resource "aws_ec2transitgateway_prefixlistreference" "example" {
///   blackhole                      = true
///   prefix_list_id                 = exampleAwsEc2ManagedPrefixList.id
///   transit_gateway_route_table_id = exampleAwsEc2TransitGateway.associationDefaultRouteTableId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.PrefixListReference;
/// import com.pulumi.aws.ec2transitgateway.PrefixListReferenceArgs;
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
///         var example = new PrefixListReference("example", PrefixListReferenceArgs.builder()
///             .blackhole(true)
///             .prefixListId(exampleAwsEc2ManagedPrefixList.id())
///             .transitGatewayRouteTableId(exampleAwsEc2TransitGateway.associationDefaultRouteTableId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:PrefixListReference
///     properties:
///       blackhole: true
///       prefixListId: ${exampleAwsEc2ManagedPrefixList.id}
///       transitGatewayRouteTableId: ${exampleAwsEc2TransitGateway.associationDefaultRouteTableId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.PrefixListReference` using the EC2 Transit Gateway Route Table identifier and EC2 Prefix List identifier, separated by an underscore (`_`). For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/prefixListReference:PrefixListReference example tgw-rtb-12345678_pl-12345678
/// ```
class PrefixListReference extends pulumi.CustomResource {
  /// Indicates whether to drop traffic that matches the Prefix List. Defaults to `false`.
  late final pulumi.Output<bool?> blackhole;
  /// Identifier of EC2 Prefix List.
  late final pulumi.Output<String> prefixListId;
  late final pulumi.Output<String> prefixListOwnerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Identifier of EC2 Transit Gateway Attachment.
  late final pulumi.Output<String?> transitGatewayAttachmentId;
  /// Identifier of EC2 Transit Gateway Route Table.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transitGatewayRouteTableId;

  /// Creates a new [PrefixListReference].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrefixListReference]. {@macro pulumi_ec2transitgateway_prefix_list_reference_prefix_list_reference_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrefixListReference(
    String name, {
    PrefixListReferenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/prefixListReference:PrefixListReference',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blackhole = registerOutput<bool?>('blackhole');
    prefixListId = registerOutput<String>('prefixListId');
    prefixListOwnerId = registerOutput<String>('prefixListOwnerId');
    region = registerOutput<String>('region');
    transitGatewayAttachmentId = registerOutput<String?>('transitGatewayAttachmentId');
    transitGatewayRouteTableId = registerOutput<String>('transitGatewayRouteTableId');
  }

  /// Gets an existing [PrefixListReference] resource's state with the given [name] and [id].
  static PrefixListReference get(
    String name,
    pulumi.Input<String> id, {
    PrefixListReferenceState? state,
  }) {
    return PrefixListReference._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrefixListReference._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/prefixListReference:PrefixListReference',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blackhole = registerOutput<bool?>('blackhole');
    prefixListId = registerOutput<String>('prefixListId');
    prefixListOwnerId = registerOutput<String>('prefixListOwnerId');
    region = registerOutput<String>('region');
    transitGatewayAttachmentId = registerOutput<String?>('transitGatewayAttachmentId');
    transitGatewayRouteTableId = registerOutput<String>('transitGatewayRouteTableId');
  }
}
