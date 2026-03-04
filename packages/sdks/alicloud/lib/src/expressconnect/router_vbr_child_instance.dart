import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_vbr_child_instance_args.dart';
import 'router_vbr_child_instance_state.dart';

/// Provides a Express Connect Router Express Connect Router Vbr Child Instance resource.
///
/// For information about Express Connect Router Express Connect Router Vbr Child Instance and how to use it, see [What is Express Connect Router Vbr Child Instance](https://next.api.alibabacloud.com/api/ExpressConnectRouter/2023-09-01/AttachExpressConnectRouterChildInstance).
///
/// &gt; **NOTE:** Available since v1.224.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const nameRegex = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING",
/// });
/// const defaultydbbk3 = new alicloud.expressconnect.VirtualBorderRouter("defaultydbbk3", {
///     physicalConnectionId: nameRegex.then(nameRegex => nameRegex.connections?.[0]?.id),
///     vlanId: 1000,
///     peerGatewayIp: "192.168.254.2",
///     peeringSubnetMask: "255.255.255.0",
///     localGatewayIp: "192.168.254.1",
/// });
/// const defaultAAlhUy = new alicloud.expressconnect.RouterExpressConnectRouter("defaultAAlhUy", {alibabaSideAsn: 65532});
/// const current = alicloud.getAccount({});
/// const _default = new alicloud.expressconnect.RouterVbrChildInstance("default", {
///     childInstanceId: defaultydbbk3.id,
///     childInstanceRegionId: "cn-hangzhou",
///     ecrId: defaultAAlhUy.id,
///     childInstanceType: "VBR",
///     childInstanceOwnerId: current.then(current => current.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// name_regex = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING")
/// defaultydbbk3 = alicloud.expressconnect.VirtualBorderRouter("defaultydbbk3",
///     physical_connection_id=name_regex.connections[0].id,
///     vlan_id=1000,
///     peer_gateway_ip="192.168.254.2",
///     peering_subnet_mask="255.255.255.0",
///     local_gateway_ip="192.168.254.1")
/// default_a_alh_uy = alicloud.expressconnect.RouterExpressConnectRouter("defaultAAlhUy", alibaba_side_asn=65532)
/// current = alicloud.get_account()
/// default = alicloud.expressconnect.RouterVbrChildInstance("default",
///     child_instance_id=defaultydbbk3.id,
///     child_instance_region_id="cn-hangzhou",
///     ecr_id=default_a_alh_uy.id,
///     child_instance_type="VBR",
///     child_instance_owner_id=current.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var nameRegex = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING",
///     });
///
///     var defaultydbbk3 = new AliCloud.ExpressConnect.VirtualBorderRouter("defaultydbbk3", new()
///     {
///         PhysicalConnectionId = nameRegex.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id),
///         VlanId = 1000,
///         PeerGatewayIp = "192.168.254.2",
///         PeeringSubnetMask = "255.255.255.0",
///         LocalGatewayIp = "192.168.254.1",
///     });
///
///     var defaultAAlhUy = new AliCloud.ExpressConnect.RouterExpressConnectRouter("defaultAAlhUy", new()
///     {
///         AlibabaSideAsn = 65532,
///     });
///
///     var current = AliCloud.GetAccount.Invoke();
///
///     var @default = new AliCloud.ExpressConnect.RouterVbrChildInstance("default", new()
///     {
///         ChildInstanceId = defaultydbbk3.Id,
///         ChildInstanceRegionId = "cn-hangzhou",
///         EcrId = defaultAAlhUy.Id,
///         ChildInstanceType = "VBR",
///         ChildInstanceOwnerId = current.Apply(getAccountResult => getAccountResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		nameRegex, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultydbbk3, err := expressconnect.NewVirtualBorderRouter(ctx, "defaultydbbk3", &expressconnect.VirtualBorderRouterArgs{
/// 			PhysicalConnectionId: pulumi.String(nameRegex.Connections[0].Id),
/// 			VlanId:               pulumi.Int(1000),
/// 			PeerGatewayIp:        pulumi.String("192.168.254.2"),
/// 			PeeringSubnetMask:    pulumi.String("255.255.255.0"),
/// 			LocalGatewayIp:       pulumi.String("192.168.254.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAAlhUy, err := expressconnect.NewRouterExpressConnectRouter(ctx, "defaultAAlhUy", &expressconnect.RouterExpressConnectRouterArgs{
/// 			AlibabaSideAsn: pulumi.Int(65532),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = expressconnect.NewRouterVbrChildInstance(ctx, "default", &expressconnect.RouterVbrChildInstanceArgs{
/// 			ChildInstanceId:       defaultydbbk3.ID(),
/// 			ChildInstanceRegionId: pulumi.String("cn-hangzhou"),
/// 			EcrId:                 defaultAAlhUy.ID(),
/// 			ChildInstanceType:     pulumi.String("VBR"),
/// 			ChildInstanceOwnerId:  pulumi.String(current.Id),
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouter;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouterArgs;
/// import com.pulumi.alicloud.expressconnect.RouterExpressConnectRouter;
/// import com.pulumi.alicloud.expressconnect.RouterExpressConnectRouterArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.expressconnect.RouterVbrChildInstance;
/// import com.pulumi.alicloud.expressconnect.RouterVbrChildInstanceArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var nameRegex = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^preserved-NODELETING")
///             .build());
///
///         var defaultydbbk3 = new VirtualBorderRouter("defaultydbbk3", VirtualBorderRouterArgs.builder()
///             .physicalConnectionId(nameRegex.connections()[0].id())
///             .vlanId(1000)
///             .peerGatewayIp("192.168.254.2")
///             .peeringSubnetMask("255.255.255.0")
///             .localGatewayIp("192.168.254.1")
///             .build());
///
///         var defaultAAlhUy = new RouterExpressConnectRouter("defaultAAlhUy", RouterExpressConnectRouterArgs.builder()
///             .alibabaSideAsn(65532)
///             .build());
///
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var default_ = new RouterVbrChildInstance("default", RouterVbrChildInstanceArgs.builder()
///             .childInstanceId(defaultydbbk3.id())
///             .childInstanceRegionId("cn-hangzhou")
///             .ecrId(defaultAAlhUy.id())
///             .childInstanceType("VBR")
///             .childInstanceOwnerId(current.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultydbbk3:
///     type: alicloud:expressconnect:VirtualBorderRouter
///     properties:
///       physicalConnectionId: ${nameRegex.connections[0].id}
///       vlanId: '1000'
///       peerGatewayIp: 192.168.254.2
///       peeringSubnetMask: 255.255.255.0
///       localGatewayIp: 192.168.254.1
///   defaultAAlhUy:
///     type: alicloud:expressconnect:RouterExpressConnectRouter
///     properties:
///       alibabaSideAsn: '65532'
///   default:
///     type: alicloud:expressconnect:RouterVbrChildInstance
///     properties:
///       childInstanceId: ${defaultydbbk3.id}
///       childInstanceRegionId: cn-hangzhou
///       ecrId: ${defaultAAlhUy.id}
///       childInstanceType: VBR
///       childInstanceOwnerId: ${current.id}
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         nameRegex: ^preserved-NODELETING
///   current:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Express Connect Router Express Connect Router Vbr Child Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/routerVbrChildInstance:RouterVbrChildInstance example <ecr_id>:<child_instance_id>:<child_instance_type>
/// ```
class RouterVbrChildInstance extends pulumi.CustomResource {
  /// The ID of the leased line gateway subinstance.
  late final pulumi.Output<String> childInstanceId;

  /// The ID of the Alibaba Cloud account (primary account) to which the VBR instance belongs.
  ///
  /// &gt; **NOTE:**  This parameter is required if you want to load a cross-account network instance.
  late final pulumi.Output<String> childInstanceOwnerId;

  /// Region of the leased line gateway sub-instance
  late final pulumi.Output<String> childInstanceRegionId;

  /// The type of the network instance. Value: `VBR`: VBR instance.
  late final pulumi.Output<String> childInstanceType;

  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;

  /// Resource attribute fields that represent descriptive information
  late final pulumi.Output<String?> description;

  /// ID of the representative leased line gateway instance.
  late final pulumi.Output<String> ecrId;

  /// Binding relationship status of leased line gateway subinstances.
  late final pulumi.Output<String> status;

  /// Creates a new [RouterVbrChildInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterVbrChildInstance]. {@macro pulumi_expressconnect_router_vbr_child_instance_router_vbr_child_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterVbrChildInstance(
    String name, {
    RouterVbrChildInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/routerVbrChildInstance:RouterVbrChildInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    childInstanceId = registerOutput<String>('childInstanceId');
    childInstanceOwnerId = registerOutput<String>('childInstanceOwnerId');
    childInstanceRegionId = registerOutput<String>('childInstanceRegionId');
    childInstanceType = registerOutput<String>('childInstanceType');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    ecrId = registerOutput<String>('ecrId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [RouterVbrChildInstance] resource's state with the given [name] and [id].
  static RouterVbrChildInstance get(
    String name,
    pulumi.Input<String> id, {
    RouterVbrChildInstanceState? state,
  }) {
    return RouterVbrChildInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterVbrChildInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/routerVbrChildInstance:RouterVbrChildInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    childInstanceId = registerOutput<String>('childInstanceId');
    childInstanceOwnerId = registerOutput<String>('childInstanceOwnerId');
    childInstanceRegionId = registerOutput<String>('childInstanceRegionId');
    childInstanceType = registerOutput<String>('childInstanceType');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    ecrId = registerOutput<String>('ecrId');
    status = registerOutput<String>('status');
  }
}
