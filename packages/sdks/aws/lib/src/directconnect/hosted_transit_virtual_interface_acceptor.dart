import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_transit_virtual_interface_acceptor_args.dart';
import 'hosted_transit_virtual_interface_acceptor_state.dart';

/// Provides a resource to manage the accepter's side of a Direct Connect hosted transit virtual interface.
/// This resource accepts ownership of a transit virtual interface created by another AWS account.
///
/// &gt; **NOTE:** AWS allows a Direct Connect hosted transit virtual interface to be deleted from either the allocator's or accepter's side. However, this provider only allows the Direct Connect hosted transit virtual interface to be deleted from the allocator's side by removing the corresponding `aws.directconnect.HostedTransitVirtualInterface` resource from your configuration. Removing a `aws.directconnect.HostedTransitVirtualInterfaceAcceptor` resource from your configuration will remove it from your statefile and management, **but will not delete the Direct Connect virtual interface.**
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const accepter = aws.getCallerIdentity({});
/// // Accepter's side of the VIF.
/// const example = new aws.directconnect.Gateway("example", {
///     name: "tf-dxg-example",
///     amazonSideAsn: "64512",
/// });
/// // Creator's side of the VIF
/// const creator = new aws.directconnect.HostedTransitVirtualInterface("creator", {
///     connectionId: "dxcon-zzzzzzzz",
///     ownerAccountId: accepter.then(accepter => accepter.accountId),
///     name: "tf-transit-vif-example",
///     vlan: 4094,
///     addressFamily: "ipv4",
///     bgpAsn: 65352,
/// }, {
///     dependsOn: [example],
/// });
/// const accepterHostedTransitVirtualInterfaceAcceptor = new aws.directconnect.HostedTransitVirtualInterfaceAcceptor("accepter", {
///     virtualInterfaceId: creator.id,
///     dxGatewayId: example.id,
///     tags: {
///         Side: "Accepter",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// accepter = aws.get_caller_identity()
/// # Accepter's side of the VIF.
/// example = aws.directconnect.Gateway("example",
///     name="tf-dxg-example",
///     amazon_side_asn="64512")
/// # Creator's side of the VIF
/// creator = aws.directconnect.HostedTransitVirtualInterface("creator",
///     connection_id="dxcon-zzzzzzzz",
///     owner_account_id=accepter.account_id,
///     name="tf-transit-vif-example",
///     vlan=4094,
///     address_family="ipv4",
///     bgp_asn=65352,
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// accepter_hosted_transit_virtual_interface_acceptor = aws.directconnect.HostedTransitVirtualInterfaceAcceptor("accepter",
///     virtual_interface_id=creator.id,
///     dx_gateway_id=example.id,
///     tags={
///         "Side": "Accepter",
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
///     var accepter = Aws.GetCallerIdentity.Invoke();
///
///     // Accepter's side of the VIF.
///     var example = new Aws.DirectConnect.Gateway("example", new()
///     {
///         Name = "tf-dxg-example",
///         AmazonSideAsn = "64512",
///     });
///
///     // Creator's side of the VIF
///     var creator = new Aws.DirectConnect.HostedTransitVirtualInterface("creator", new()
///     {
///         ConnectionId = "dxcon-zzzzzzzz",
///         OwnerAccountId = accepter.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///         Name = "tf-transit-vif-example",
///         Vlan = 4094,
///         AddressFamily = "ipv4",
///         BgpAsn = 65352,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
///     var accepterHostedTransitVirtualInterfaceAcceptor = new Aws.DirectConnect.HostedTransitVirtualInterfaceAcceptor("accepter", new()
///     {
///         VirtualInterfaceId = creator.Id,
///         DxGatewayId = example.Id,
///         Tags =
///         {
///             { "Side", "Accepter" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		accepter, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Accepter's side of the VIF.
/// 		example, err := directconnect.NewGateway(ctx, "example", &directconnect.GatewayArgs{
/// 			Name:          pulumi.String("tf-dxg-example"),
/// 			AmazonSideAsn: pulumi.String("64512"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Creator's side of the VIF
/// 		creator, err := directconnect.NewHostedTransitVirtualInterface(ctx, "creator", &directconnect.HostedTransitVirtualInterfaceArgs{
/// 			ConnectionId:   pulumi.String("dxcon-zzzzzzzz"),
/// 			OwnerAccountId: pulumi.String(accepter.AccountId),
/// 			Name:           pulumi.String("tf-transit-vif-example"),
/// 			Vlan:           pulumi.Int(4094),
/// 			AddressFamily:  pulumi.String("ipv4"),
/// 			BgpAsn:         pulumi.Int(65352),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directconnect.NewHostedTransitVirtualInterfaceAcceptor(ctx, "accepter", &directconnect.HostedTransitVirtualInterfaceAcceptorArgs{
/// 			VirtualInterfaceId: creator.ID(),
/// 			DxGatewayId:        example.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"Side": pulumi.String("Accepter"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.directconnect.Gateway;
/// import com.pulumi.aws.directconnect.GatewayArgs;
/// import com.pulumi.aws.directconnect.HostedTransitVirtualInterface;
/// import com.pulumi.aws.directconnect.HostedTransitVirtualInterfaceArgs;
/// import com.pulumi.aws.directconnect.HostedTransitVirtualInterfaceAcceptor;
/// import com.pulumi.aws.directconnect.HostedTransitVirtualInterfaceAcceptorArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var accepter = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         // Accepter's side of the VIF.
///         var example = new Gateway("example", GatewayArgs.builder()
///             .name("tf-dxg-example")
///             .amazonSideAsn("64512")
///             .build());
///
///         // Creator's side of the VIF
///         var creator = new HostedTransitVirtualInterface("creator", HostedTransitVirtualInterfaceArgs.builder()
///             .connectionId("dxcon-zzzzzzzz")
///             .ownerAccountId(accepter.accountId())
///             .name("tf-transit-vif-example")
///             .vlan(4094)
///             .addressFamily("ipv4")
///             .bgpAsn(65352)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var accepterHostedTransitVirtualInterfaceAcceptor = new HostedTransitVirtualInterfaceAcceptor("accepterHostedTransitVirtualInterfaceAcceptor", HostedTransitVirtualInterfaceAcceptorArgs.builder()
///             .virtualInterfaceId(creator.id())
///             .dxGatewayId(example.id())
///             .tags(Map.of("Side", "Accepter"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Creator's side of the VIF
///   creator:
///     type: aws:directconnect:HostedTransitVirtualInterface
///     properties:
///       connectionId: dxcon-zzzzzzzz
///       ownerAccountId: ${accepter.accountId}
///       name: tf-transit-vif-example
///       vlan: 4094
///       addressFamily: ipv4
///       bgpAsn: 65352 # The aws_dx_hosted_transit_virtual_interface
///       #   # must be destroyed before the aws_dx_gateway.
///     options:
///       dependsOn:
///         - ${example}
///   # Accepter's side of the VIF.
///   example:
///     type: aws:directconnect:Gateway
///     properties:
///       name: tf-dxg-example
///       amazonSideAsn: 64512
///   accepterHostedTransitVirtualInterfaceAcceptor:
///     type: aws:directconnect:HostedTransitVirtualInterfaceAcceptor
///     name: accepter
///     properties:
///       virtualInterfaceId: ${creator.id}
///       dxGatewayId: ${example.id}
///       tags:
///         Side: Accepter
/// variables:
///   accepter:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect hosted transit virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/hostedTransitVirtualInterfaceAcceptor:HostedTransitVirtualInterfaceAcceptor test dxvif-33cc44dd
/// ```
class HostedTransitVirtualInterfaceAcceptor extends pulumi.CustomResource {
  /// The ARN of the virtual interface.
  late final pulumi.Output<String> arn;

  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  late final pulumi.Output<String> dxGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the Direct Connect virtual interface to accept.
  late final pulumi.Output<String> virtualInterfaceId;

  /// Creates a new [HostedTransitVirtualInterfaceAcceptor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostedTransitVirtualInterfaceAcceptor]. {@macro pulumi_directconnect_hosted_transit_virtual_interface_acceptor_hosted_transit_virtual_interface_acceptor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostedTransitVirtualInterfaceAcceptor(
    String name, {
    HostedTransitVirtualInterfaceAcceptorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directconnect/hostedTransitVirtualInterfaceAcceptor:HostedTransitVirtualInterfaceAcceptor',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    dxGatewayId = registerOutput<String>('dxGatewayId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    virtualInterfaceId = registerOutput<String>('virtualInterfaceId');
  }

  /// Gets an existing [HostedTransitVirtualInterfaceAcceptor] resource's state with the given [name] and [id].
  static HostedTransitVirtualInterfaceAcceptor get(
    String name,
    pulumi.Input<String> id, {
    HostedTransitVirtualInterfaceAcceptorState? state,
  }) {
    return HostedTransitVirtualInterfaceAcceptor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostedTransitVirtualInterfaceAcceptor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directconnect/hostedTransitVirtualInterfaceAcceptor:HostedTransitVirtualInterfaceAcceptor',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    dxGatewayId = registerOutput<String>('dxGatewayId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    virtualInterfaceId = registerOutput<String>('virtualInterfaceId');
  }
}
