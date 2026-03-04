import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_interface_args.dart';
import 'router_interface_state.dart';

/// Provides a VPC router interface resource aim to build a connection between two VPCs.
///
/// &gt; **DEPRECATED:**  This resource  has been deprecated from version `1.199.0`. Please use new resource alicloud_express_connect_router_interface.
///
/// &gt; **NOTE:** Only one pair of connected router interfaces can exist between two routers. Up to 5 router interfaces can be created for each router and each account.
///
/// &gt; **NOTE:** The router interface is not connected when it is created. It can be connected by means of resource alicloud_router_interface_connection.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const foo = new alicloud.vpc.Network("foo", {
///     vpcName: "tf_test_foo12345",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const _interface = new alicloud.vpc.RouterInterface("interface", {
///     oppositeRegion: "cn-beijing",
///     routerType: "VRouter",
///     routerId: foo.routerId,
///     role: "InitiatingSide",
///     specification: "Large.2",
///     name: "test1",
///     description: "test1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.vpc.Network("foo",
///     vpc_name="tf_test_foo12345",
///     cidr_block="172.16.0.0/12")
/// interface = alicloud.vpc.RouterInterface("interface",
///     opposite_region="cn-beijing",
///     router_type="VRouter",
///     router_id=foo.router_id,
///     role="InitiatingSide",
///     specification="Large.2",
///     name="test1",
///     description="test1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new AliCloud.Vpc.Network("foo", new()
///     {
///         VpcName = "tf_test_foo12345",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var @interface = new AliCloud.Vpc.RouterInterface("interface", new()
///     {
///         OppositeRegion = "cn-beijing",
///         RouterType = "VRouter",
///         RouterId = foo.RouterId,
///         Role = "InitiatingSide",
///         Specification = "Large.2",
///         Name = "test1",
///         Description = "test1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := vpc.NewNetwork(ctx, "foo", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("tf_test_foo12345"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewRouterInterface(ctx, "interface", &vpc.RouterInterfaceArgs{
/// 			OppositeRegion: pulumi.String("cn-beijing"),
/// 			RouterType:     pulumi.String("VRouter"),
/// 			RouterId:       foo.RouterId,
/// 			Role:           pulumi.String("InitiatingSide"),
/// 			Specification:  pulumi.String("Large.2"),
/// 			Name:           pulumi.String("test1"),
/// 			Description:    pulumi.String("test1"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.RouterInterface;
/// import com.pulumi.alicloud.vpc.RouterInterfaceArgs;
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
///         var foo = new Network("foo", NetworkArgs.builder()
///             .vpcName("tf_test_foo12345")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var interface_ = new RouterInterface("interface", RouterInterfaceArgs.builder()
///             .oppositeRegion("cn-beijing")
///             .routerType("VRouter")
///             .routerId(foo.routerId())
///             .role("InitiatingSide")
///             .specification("Large.2")
///             .name("test1")
///             .description("test1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: tf_test_foo12345
///       cidrBlock: 172.16.0.0/12
///   interface:
///     type: alicloud:vpc:RouterInterface
///     properties:
///       oppositeRegion: cn-beijing
///       routerType: VRouter
///       routerId: ${foo.routerId}
///       role: InitiatingSide
///       specification: Large.2
///       name: test1
///       description: test1
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The router interface can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/routerInterface:RouterInterface interface ri-abc123456
/// ```
class RouterInterface extends pulumi.CustomResource {
  /// It has been deprecated from version 1.11.0.
  late final pulumi.Output<String> accessPointId;

  /// Description of the router interface. It can be 2-256 characters long or left blank. It cannot start with http:// and https://.
  late final pulumi.Output<String?> description;

  /// Used as the Packet Source IP of health check for disaster recovery or ECMP. It is only valid when `router_type` is `VBR`. The IP must be an unused IP in the local VPC. It and `health_check_target_ip` must be specified at the same time.
  late final pulumi.Output<String?> healthCheckSourceIp;

  /// Used as the Packet Target IP of health check for disaster recovery or ECMP. It is only valid when `router_type` is `VBR`. The IP must be an unused IP in the local VPC. It and `health_check_source_ip` must be specified at the same time.
  late final pulumi.Output<String?> healthCheckTargetIp;

  /// The billing method of the router interface. Valid values are "PrePaid" and "PostPaid". Default to "PostPaid". Router Interface doesn't support "PrePaid" when region and opposite_region are the same.
  late final pulumi.Output<String?> instanceChargeType;

  /// Name of the router interface. Length must be 2-80 characters long. Only Chinese characters, English letters, numbers, period (.), underline (_), or dash (-) are permitted.
  /// If it is not specified, the default value is interface ID. The name cannot start with http:// and https://.
  late final pulumi.Output<String> name;

  /// It has been deprecated from version 1.11.0.
  late final pulumi.Output<String?> oppositeAccessPointId;

  /// It has been deprecated from version 1.11.0. Use resource alicloud_router_interface_connection's 'opposite_router_id' instead.
  late final pulumi.Output<String> oppositeInterfaceId;

  /// It has been deprecated from version 1.11.0. Use resource alicloud_router_interface_connection's 'opposite_interface_id' instead.
  late final pulumi.Output<String> oppositeInterfaceOwnerId;

  /// The Region of peer side.
  late final pulumi.Output<String> oppositeRegion;

  /// It has been deprecated from version 1.11.0. Use resource alicloud_router_interface_connection's 'opposite_router_id' instead.
  late final pulumi.Output<String> oppositeRouterId;

  /// It has been deprecated from version 1.11.0. resource alicloud_router_interface_connection's 'opposite_router_type' instead.
  late final pulumi.Output<String> oppositeRouterType;

  /// The duration that you will buy the resource, in month. It is valid when `instance_charge_type` is `PrePaid`. Valid values: [1-9, 12, 24, 36]. At present, the provider does not support modify "period" and you can do that via web console.
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  late final pulumi.Output<int?> period;

  /// The role the router interface plays. Optional value: `InitiatingSide`, `AcceptingSide`.
  late final pulumi.Output<String> role;

  /// The Router ID.
  late final pulumi.Output<String> routerId;

  /// Router Type. Optional value: VRouter, VBR. Accepting side router interface type only be VRouter.
  late final pulumi.Output<String> routerType;

  /// Specification of router interfaces. It is valid when `role` is `InitiatingSide`. Accepting side's role is default to set as 'Negative'. For more about the specification, refer to [Router interface specification](https://www.alibabacloud.com/help/doc-detail/36037.htm).
  late final pulumi.Output<String?> specification;

  /// Creates a new [RouterInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterInterface]. {@macro pulumi_vpc_router_interface_router_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterInterface(
    String name, {
    RouterInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/routerInterface:RouterInterface',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessPointId = registerOutput<String>('accessPointId');
    description = registerOutput<String?>('description');
    healthCheckSourceIp = registerOutput<String?>('healthCheckSourceIp');
    healthCheckTargetIp = registerOutput<String?>('healthCheckTargetIp');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    this.name = registerOutput<String>('name');
    oppositeAccessPointId = registerOutput<String?>('oppositeAccessPointId');
    oppositeInterfaceId = registerOutput<String>('oppositeInterfaceId');
    oppositeInterfaceOwnerId = registerOutput<String>(
      'oppositeInterfaceOwnerId',
    );
    oppositeRegion = registerOutput<String>('oppositeRegion');
    oppositeRouterId = registerOutput<String>('oppositeRouterId');
    oppositeRouterType = registerOutput<String>('oppositeRouterType');
    period = registerOutput<int?>('period');
    role = registerOutput<String>('role');
    routerId = registerOutput<String>('routerId');
    routerType = registerOutput<String>('routerType');
    specification = registerOutput<String?>('specification');
  }

  /// Gets an existing [RouterInterface] resource's state with the given [name] and [id].
  static RouterInterface get(
    String name,
    pulumi.Input<String> id, {
    RouterInterfaceState? state,
  }) {
    return RouterInterface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterInterface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/routerInterface:RouterInterface',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessPointId = registerOutput<String>('accessPointId');
    description = registerOutput<String?>('description');
    healthCheckSourceIp = registerOutput<String?>('healthCheckSourceIp');
    healthCheckTargetIp = registerOutput<String?>('healthCheckTargetIp');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    this.name = registerOutput<String>('name');
    oppositeAccessPointId = registerOutput<String?>('oppositeAccessPointId');
    oppositeInterfaceId = registerOutput<String>('oppositeInterfaceId');
    oppositeInterfaceOwnerId = registerOutput<String>(
      'oppositeInterfaceOwnerId',
    );
    oppositeRegion = registerOutput<String>('oppositeRegion');
    oppositeRouterId = registerOutput<String>('oppositeRouterId');
    oppositeRouterType = registerOutput<String>('oppositeRouterType');
    period = registerOutput<int?>('period');
    role = registerOutput<String>('role');
    routerId = registerOutput<String>('routerId');
    routerType = registerOutput<String>('routerType');
    specification = registerOutput<String?>('specification');
  }
}
