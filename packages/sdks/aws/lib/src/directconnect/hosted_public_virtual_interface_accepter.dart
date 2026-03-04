import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_public_virtual_interface_accepter_args.dart';
import 'hosted_public_virtual_interface_accepter_state.dart';

/// Provides a resource to manage the accepter's side of a Direct Connect hosted public virtual interface.
/// This resource accepts ownership of a public virtual interface created by another AWS account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const accepter = aws.getCallerIdentity({});
/// // Creator's side of the VIF
/// const creator = new aws.directconnect.HostedPublicVirtualInterface("creator", {
///     connectionId: "dxcon-zzzzzzzz",
///     ownerAccountId: accepter.then(accepter => accepter.accountId),
///     name: "vif-foo",
///     vlan: 4094,
///     addressFamily: "ipv4",
///     bgpAsn: 65352,
///     customerAddress: "175.45.176.1/30",
///     amazonAddress: "175.45.176.2/30",
///     routeFilterPrefixes: [
///         "210.52.109.0/24",
///         "175.45.176.0/22",
///     ],
/// });
/// // Accepter's side of the VIF.
/// const accepterHostedPublicVirtualInterfaceAccepter = new aws.directconnect.HostedPublicVirtualInterfaceAccepter("accepter", {
///     virtualInterfaceId: creator.id,
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
/// # Creator's side of the VIF
/// creator = aws.directconnect.HostedPublicVirtualInterface("creator",
///     connection_id="dxcon-zzzzzzzz",
///     owner_account_id=accepter.account_id,
///     name="vif-foo",
///     vlan=4094,
///     address_family="ipv4",
///     bgp_asn=65352,
///     customer_address="175.45.176.1/30",
///     amazon_address="175.45.176.2/30",
///     route_filter_prefixes=[
///         "210.52.109.0/24",
///         "175.45.176.0/22",
///     ])
/// # Accepter's side of the VIF.
/// accepter_hosted_public_virtual_interface_accepter = aws.directconnect.HostedPublicVirtualInterfaceAccepter("accepter",
///     virtual_interface_id=creator.id,
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
///     // Creator's side of the VIF
///     var creator = new Aws.DirectConnect.HostedPublicVirtualInterface("creator", new()
///     {
///         ConnectionId = "dxcon-zzzzzzzz",
///         OwnerAccountId = accepter.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///         Name = "vif-foo",
///         Vlan = 4094,
///         AddressFamily = "ipv4",
///         BgpAsn = 65352,
///         CustomerAddress = "175.45.176.1/30",
///         AmazonAddress = "175.45.176.2/30",
///         RouteFilterPrefixes = new[]
///         {
///             "210.52.109.0/24",
///             "175.45.176.0/22",
///         },
///     });
///
///     // Accepter's side of the VIF.
///     var accepterHostedPublicVirtualInterfaceAccepter = new Aws.DirectConnect.HostedPublicVirtualInterfaceAccepter("accepter", new()
///     {
///         VirtualInterfaceId = creator.Id,
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
/// 		// Creator's side of the VIF
/// 		creator, err := directconnect.NewHostedPublicVirtualInterface(ctx, "creator", &directconnect.HostedPublicVirtualInterfaceArgs{
/// 			ConnectionId:    pulumi.String("dxcon-zzzzzzzz"),
/// 			OwnerAccountId:  pulumi.String(accepter.AccountId),
/// 			Name:            pulumi.String("vif-foo"),
/// 			Vlan:            pulumi.Int(4094),
/// 			AddressFamily:   pulumi.String("ipv4"),
/// 			BgpAsn:          pulumi.Int(65352),
/// 			CustomerAddress: pulumi.String("175.45.176.1/30"),
/// 			AmazonAddress:   pulumi.String("175.45.176.2/30"),
/// 			RouteFilterPrefixes: pulumi.StringArray{
/// 				pulumi.String("210.52.109.0/24"),
/// 				pulumi.String("175.45.176.0/22"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Accepter's side of the VIF.
/// 		_, err = directconnect.NewHostedPublicVirtualInterfaceAccepter(ctx, "accepter", &directconnect.HostedPublicVirtualInterfaceAccepterArgs{
/// 			VirtualInterfaceId: creator.ID(),
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
/// import com.pulumi.aws.directconnect.HostedPublicVirtualInterface;
/// import com.pulumi.aws.directconnect.HostedPublicVirtualInterfaceArgs;
/// import com.pulumi.aws.directconnect.HostedPublicVirtualInterfaceAccepter;
/// import com.pulumi.aws.directconnect.HostedPublicVirtualInterfaceAccepterArgs;
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
///         // Creator's side of the VIF
///         var creator = new HostedPublicVirtualInterface("creator", HostedPublicVirtualInterfaceArgs.builder()
///             .connectionId("dxcon-zzzzzzzz")
///             .ownerAccountId(accepter.accountId())
///             .name("vif-foo")
///             .vlan(4094)
///             .addressFamily("ipv4")
///             .bgpAsn(65352)
///             .customerAddress("175.45.176.1/30")
///             .amazonAddress("175.45.176.2/30")
///             .routeFilterPrefixes(
///                 "210.52.109.0/24",
///                 "175.45.176.0/22")
///             .build());
///
///         // Accepter's side of the VIF.
///         var accepterHostedPublicVirtualInterfaceAccepter = new HostedPublicVirtualInterfaceAccepter("accepterHostedPublicVirtualInterfaceAccepter", HostedPublicVirtualInterfaceAccepterArgs.builder()
///             .virtualInterfaceId(creator.id())
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
///     type: aws:directconnect:HostedPublicVirtualInterface
///     properties:
///       connectionId: dxcon-zzzzzzzz
///       ownerAccountId: ${accepter.accountId}
///       name: vif-foo
///       vlan: 4094
///       addressFamily: ipv4
///       bgpAsn: 65352
///       customerAddress: 175.45.176.1/30
///       amazonAddress: 175.45.176.2/30
///       routeFilterPrefixes:
///         - 210.52.109.0/24
///         - 175.45.176.0/22
///   # Accepter's side of the VIF.
///   accepterHostedPublicVirtualInterfaceAccepter:
///     type: aws:directconnect:HostedPublicVirtualInterfaceAccepter
///     name: accepter
///     properties:
///       virtualInterfaceId: ${creator.id}
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
/// Using `pulumi import`, import Direct Connect hosted public virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/hostedPublicVirtualInterfaceAccepter:HostedPublicVirtualInterfaceAccepter test dxvif-33cc44dd
/// ```
class HostedPublicVirtualInterfaceAccepter extends pulumi.CustomResource {
  /// The ARN of the virtual interface.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the Direct Connect virtual interface to accept.
  late final pulumi.Output<String> virtualInterfaceId;

  /// Creates a new [HostedPublicVirtualInterfaceAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostedPublicVirtualInterfaceAccepter]. {@macro pulumi_directconnect_hosted_public_virtual_interface_accepter_hosted_public_virtual_interface_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostedPublicVirtualInterfaceAccepter(
    String name, {
    HostedPublicVirtualInterfaceAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directconnect/hostedPublicVirtualInterfaceAccepter:HostedPublicVirtualInterfaceAccepter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    virtualInterfaceId = registerOutput<String>('virtualInterfaceId');
  }

  /// Gets an existing [HostedPublicVirtualInterfaceAccepter] resource's state with the given [name] and [id].
  static HostedPublicVirtualInterfaceAccepter get(
    String name,
    pulumi.Input<String> id, {
    HostedPublicVirtualInterfaceAccepterState? state,
  }) {
    return HostedPublicVirtualInterfaceAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostedPublicVirtualInterfaceAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directconnect/hostedPublicVirtualInterfaceAccepter:HostedPublicVirtualInterfaceAccepter',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    virtualInterfaceId = registerOutput<String>('virtualInterfaceId');
  }
}
