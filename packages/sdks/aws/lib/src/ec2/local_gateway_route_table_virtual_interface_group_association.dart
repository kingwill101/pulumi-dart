import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_gateway_route_table_virtual_interface_group_association_args.dart';
import 'local_gateway_route_table_virtual_interface_group_association_state.dart';

/// Manages an EC2 Local Gateway Route Table Virtual Interface Group Association. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-local-gateways.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getLocalGatewayRouteTable({
///     outpostArn: "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef",
/// });
/// const exampleGetLocalGatewayVirtualInterfaceGroup = example.then(example => aws.ec2.getLocalGatewayVirtualInterfaceGroup({
///     localGatewayId: example.localGatewayId,
/// }));
/// const exampleLocalGatewayRouteTableVirtualInterfaceGroupAssociation = new aws.ec2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation("example", {
///     localGatewayRouteTableId: example.then(example => example.id),
///     localGatewayVirtualInterfaceGroupId: exampleGetLocalGatewayVirtualInterfaceGroup.then(exampleGetLocalGatewayVirtualInterfaceGroup => exampleGetLocalGatewayVirtualInterfaceGroup.id),
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_local_gateway_route_table(outpost_arn="arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef")
/// example_get_local_gateway_virtual_interface_group = aws.ec2.get_local_gateway_virtual_interface_group(local_gateway_id=example.local_gateway_id)
/// example_local_gateway_route_table_virtual_interface_group_association = aws.ec2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation("example",
///     local_gateway_route_table_id=example.id,
///     local_gateway_virtual_interface_group_id=example_get_local_gateway_virtual_interface_group.id,
///     tags={
///         "Name": "example",
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
///     var example = Aws.Ec2.GetLocalGatewayRouteTable.Invoke(new()
///     {
///         OutpostArn = "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef",
///     });
///
///     var exampleGetLocalGatewayVirtualInterfaceGroup = Aws.Ec2.GetLocalGatewayVirtualInterfaceGroup.Invoke(new()
///     {
///         LocalGatewayId = example.Apply(getLocalGatewayRouteTableResult => getLocalGatewayRouteTableResult.LocalGatewayId),
///     });
///
///     var exampleLocalGatewayRouteTableVirtualInterfaceGroupAssociation = new Aws.Ec2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation("example", new()
///     {
///         LocalGatewayRouteTableId = example.Apply(getLocalGatewayRouteTableResult => getLocalGatewayRouteTableResult.Id),
///         LocalGatewayVirtualInterfaceGroupId = exampleGetLocalGatewayVirtualInterfaceGroup.Apply(getLocalGatewayVirtualInterfaceGroupResult => getLocalGatewayVirtualInterfaceGroupResult.Id),
///         Tags =
///         {
///             { "Name", "example" },
///         },
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
/// 		example, err := ec2.LookupLocalGatewayRouteTable(ctx, &ec2.LookupLocalGatewayRouteTableArgs{
/// 			OutpostArn: pulumi.StringRef("arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetLocalGatewayVirtualInterfaceGroup, err := ec2.GetLocalGatewayVirtualInterfaceGroup(ctx, &ec2.GetLocalGatewayVirtualInterfaceGroupArgs{
/// 			LocalGatewayId: pulumi.StringRef(example.LocalGatewayId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewLocalGatewayRouteTableVirtualInterfaceGroupAssociation(ctx, "example", &ec2.LocalGatewayRouteTableVirtualInterfaceGroupAssociationArgs{
/// 			LocalGatewayRouteTableId:            pulumi.String(example.Id),
/// 			LocalGatewayVirtualInterfaceGroupId: pulumi.String(exampleGetLocalGatewayVirtualInterfaceGroup.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
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
/// data "aws_ec2_getlocalgatewayroutetable" "example" {
///   outpost_arn = "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef"
/// }
/// data "aws_ec2_getlocalgatewayvirtualinterfacegroup" "exampleGetLocalGatewayVirtualInterfaceGroup" {
///   local_gateway_id = data.aws_ec2_getlocalgatewayroutetable.example.local_gateway_id
/// }
///
/// resource "aws_ec2_localgatewayroutetablevirtualinterfacegroupassociation" "example" {
///   local_gateway_route_table_id             = data.aws_ec2_getlocalgatewayroutetable.example.id
///   local_gateway_virtual_interface_group_id = data.aws_ec2_getlocalgatewayvirtualinterfacegroup.exampleGetLocalGatewayVirtualInterfaceGroup.id
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewayRouteTableArgs;
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewayVirtualInterfaceGroupArgs;
/// import com.pulumi.aws.ec2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation;
/// import com.pulumi.aws.ec2.LocalGatewayRouteTableVirtualInterfaceGroupAssociationArgs;
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
///         final var example = Ec2Functions.getLocalGatewayRouteTable(GetLocalGatewayRouteTableArgs.builder()
///             .outpostArn("arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef")
///             .build());
///
///         final var exampleGetLocalGatewayVirtualInterfaceGroup = Ec2Functions.getLocalGatewayVirtualInterfaceGroup(GetLocalGatewayVirtualInterfaceGroupArgs.builder()
///             .localGatewayId(example.localGatewayId())
///             .build());
///
///         var exampleLocalGatewayRouteTableVirtualInterfaceGroupAssociation = new LocalGatewayRouteTableVirtualInterfaceGroupAssociation("exampleLocalGatewayRouteTableVirtualInterfaceGroupAssociation", LocalGatewayRouteTableVirtualInterfaceGroupAssociationArgs.builder()
///             .localGatewayRouteTableId(example.id())
///             .localGatewayVirtualInterfaceGroupId(exampleGetLocalGatewayVirtualInterfaceGroup.id())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLocalGatewayRouteTableVirtualInterfaceGroupAssociation:
///     type: aws:ec2:LocalGatewayRouteTableVirtualInterfaceGroupAssociation
///     name: example
///     properties:
///       localGatewayRouteTableId: ${example.id}
///       localGatewayVirtualInterfaceGroupId: ${exampleGetLocalGatewayVirtualInterfaceGroup.id}
///       tags:
///         Name: example
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getLocalGatewayRouteTable
///       arguments:
///         outpostArn: arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef
///   exampleGetLocalGatewayVirtualInterfaceGroup:
///     fn::invoke:
///       function: aws:ec2:getLocalGatewayVirtualInterfaceGroup
///       arguments:
///         localGatewayId: ${example.localGatewayId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation` using the Local Gateway Route Table Virtual Interface Group Association identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/localGatewayRouteTableVirtualInterfaceGroupAssociation:LocalGatewayRouteTableVirtualInterfaceGroupAssociation example lgw-vif-grp-assoc-1234567890abcdef
/// ```
class LocalGatewayRouteTableVirtualInterfaceGroupAssociation extends pulumi.CustomResource {
  /// Identifier of the EC2 Local Gateway.
  late final pulumi.Output<String> localGatewayId;
  /// ARN of the EC2 Local Gateway Route Table.
  late final pulumi.Output<String> localGatewayRouteTableArn;
  /// Identifier of EC2 Local Gateway Route Table.
  late final pulumi.Output<String> localGatewayRouteTableId;
  /// Identifier of EC2 Local Gateway Virtual Interface Group.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> localGatewayVirtualInterfaceGroupId;
  /// Identifier of the AWS account that owns the EC2 Local Gateway Virtual Interface Group Association.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// State of the EC2 Local Gateway Route Table Virtual Interface Group Association.
  late final pulumi.Output<String> state;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LocalGatewayRouteTableVirtualInterfaceGroupAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalGatewayRouteTableVirtualInterfaceGroupAssociation]. {@macro pulumi_ec2_local_gateway_route_table_virtual_interface_group_association_local_gateway_route_table_virtual_interface_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalGatewayRouteTableVirtualInterfaceGroupAssociation(
    String name, {
    LocalGatewayRouteTableVirtualInterfaceGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/localGatewayRouteTableVirtualInterfaceGroupAssociation:LocalGatewayRouteTableVirtualInterfaceGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    localGatewayId = registerOutput<String>('localGatewayId');
    localGatewayRouteTableArn = registerOutput<String>('localGatewayRouteTableArn');
    localGatewayRouteTableId = registerOutput<String>('localGatewayRouteTableId');
    localGatewayVirtualInterfaceGroupId = registerOutput<String>('localGatewayVirtualInterfaceGroupId');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [LocalGatewayRouteTableVirtualInterfaceGroupAssociation] resource's state with the given [name] and [id].
  static LocalGatewayRouteTableVirtualInterfaceGroupAssociation get(
    String name,
    pulumi.Input<String> id, {
    LocalGatewayRouteTableVirtualInterfaceGroupAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LocalGatewayRouteTableVirtualInterfaceGroupAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LocalGatewayRouteTableVirtualInterfaceGroupAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/localGatewayRouteTableVirtualInterfaceGroupAssociation:LocalGatewayRouteTableVirtualInterfaceGroupAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    localGatewayId = registerOutput<String>('localGatewayId');
    localGatewayRouteTableArn = registerOutput<String>('localGatewayRouteTableArn');
    localGatewayRouteTableId = registerOutput<String>('localGatewayRouteTableId');
    localGatewayVirtualInterfaceGroupId = registerOutput<String>('localGatewayVirtualInterfaceGroupId');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [LocalGatewayRouteTableVirtualInterfaceGroupAssociation] resource.
  LocalGatewayRouteTableVirtualInterfaceGroupAssociation.reference(String urn)
    : super(
        'aws:ec2/localGatewayRouteTableVirtualInterfaceGroupAssociation:LocalGatewayRouteTableVirtualInterfaceGroupAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    localGatewayId = registerOutput<String>('localGatewayId');
    localGatewayRouteTableArn = registerOutput<String>('localGatewayRouteTableArn');
    localGatewayRouteTableId = registerOutput<String>('localGatewayRouteTableId');
    localGatewayVirtualInterfaceGroupId = registerOutput<String>('localGatewayVirtualInterfaceGroupId');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
