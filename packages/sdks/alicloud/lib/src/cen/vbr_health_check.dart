import 'package:pulumi/pulumi.dart' as pulumi;
import 'vbr_health_check_args.dart';
import 'vbr_health_check_state.dart';

/// This topic describes how to configure the health check feature for a Cloud Enterprise Network (CEN) instance.
/// After you attach a Virtual Border Router (VBR) to the CEN instance and configure the health check feature, you can monitor the network conditions of the on-premises data center connected to the VBR.
///
/// For information about CEN VBR HealthCheck and how to use it, see [Manage CEN VBR HealthCheck](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-enablecenvbrhealthcheck).
///
/// > **NOTE:** Available since v1.88.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultGetPhysicalConnections = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING",
/// });
/// const vlanId = new random.index.Integer("vlan_id", {
///     max: 2999,
///     min: 1,
/// });
/// const example = new alicloud.expressconnect.VirtualBorderRouter("example", {
///     localGatewayIp: "10.0.0.1",
///     peerGatewayIp: "10.0.0.2",
///     peeringSubnetMask: "255.255.255.252",
///     physicalConnectionId: defaultGetPhysicalConnections.then(defaultGetPhysicalConnections => defaultGetPhysicalConnections.connections?.[0]?.id),
///     virtualBorderRouterName: name,
///     vlanId: vlanId.id,
///     minRxInterval: 1000,
///     minTxInterval: 1000,
///     detectMultiplier: 10,
/// });
/// const exampleInstance = new alicloud.cen.Instance("example", {
///     cenInstanceName: name,
///     protectionLevel: "REDUCED",
/// });
/// const exampleInstanceAttachment = new alicloud.cen.InstanceAttachment("example", {
///     instanceId: exampleInstance.id,
///     childInstanceId: example.id,
///     childInstanceType: "VBR",
///     childInstanceRegionId: _default.then(_default => _default.regions?.[0]?.id),
/// });
/// const exampleVbrHealthCheck = new alicloud.cen.VbrHealthCheck("example", {
///     cenId: exampleInstance.id,
///     healthCheckSourceIp: "192.168.1.2",
///     healthCheckTargetIp: "10.0.0.2",
///     vbrInstanceId: example.id,
///     vbrInstanceRegionId: exampleInstanceAttachment.childInstanceRegionId,
///     healthCheckInterval: 2,
///     healthyThreshold: 8,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_regions(current=True)
/// default_get_physical_connections = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING")
/// vlan_id = random.index.Integer("vlan_id",
///     max=2999,
///     min=1)
/// example = alicloud.expressconnect.VirtualBorderRouter("example",
///     local_gateway_ip="10.0.0.1",
///     peer_gateway_ip="10.0.0.2",
///     peering_subnet_mask="255.255.255.252",
///     physical_connection_id=default_get_physical_connections.connections[0].id,
///     virtual_border_router_name=name,
///     vlan_id=vlan_id["id"],
///     min_rx_interval=1000,
///     min_tx_interval=1000,
///     detect_multiplier=10)
/// example_instance = alicloud.cen.Instance("example",
///     cen_instance_name=name,
///     protection_level="REDUCED")
/// example_instance_attachment = alicloud.cen.InstanceAttachment("example",
///     instance_id=example_instance.id,
///     child_instance_id=example.id,
///     child_instance_type="VBR",
///     child_instance_region_id=default.regions[0].id)
/// example_vbr_health_check = alicloud.cen.VbrHealthCheck("example",
///     cen_id=example_instance.id,
///     health_check_source_ip="192.168.1.2",
///     health_check_target_ip="10.0.0.2",
///     vbr_instance_id=example.id,
///     vbr_instance_region_id=example_instance_attachment.child_instance_region_id,
///     health_check_interval=2,
///     healthy_threshold=8)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultGetPhysicalConnections = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING",
///     });
///
///     var vlanId = new Random.Index.Integer("vlan_id", new()
///     {
///         Max = 2999,
///         Min = 1,
///     });
///
///     var example = new AliCloud.ExpressConnect.VirtualBorderRouter("example", new()
///     {
///         LocalGatewayIp = "10.0.0.1",
///         PeerGatewayIp = "10.0.0.2",
///         PeeringSubnetMask = "255.255.255.252",
///         PhysicalConnectionId = defaultGetPhysicalConnections.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id),
///         VirtualBorderRouterName = name,
///         VlanId = vlanId.Id,
///         MinRxInterval = 1000,
///         MinTxInterval = 1000,
///         DetectMultiplier = 10,
///     });
///
///     var exampleInstance = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = name,
///         ProtectionLevel = "REDUCED",
///     });
///
///     var exampleInstanceAttachment = new AliCloud.Cen.InstanceAttachment("example", new()
///     {
///         InstanceId = exampleInstance.Id,
///         ChildInstanceId = example.Id,
///         ChildInstanceType = "VBR",
///         ChildInstanceRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///     });
///
///     var exampleVbrHealthCheck = new AliCloud.Cen.VbrHealthCheck("example", new()
///     {
///         CenId = exampleInstance.Id,
///         HealthCheckSourceIp = "192.168.1.2",
///         HealthCheckTargetIp = "10.0.0.2",
///         VbrInstanceId = example.Id,
///         VbrInstanceRegionId = exampleInstanceAttachment.ChildInstanceRegionId,
///         HealthCheckInterval = 2,
///         HealthyThreshold = 8,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetPhysicalConnections, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vlanId, err := random.NewInteger(ctx, "vlan_id", &random.IntegerArgs{
/// 			Max: 2999,
/// 			Min: 1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := expressconnect.NewVirtualBorderRouter(ctx, "example", &expressconnect.VirtualBorderRouterArgs{
/// 			LocalGatewayIp:          pulumi.String("10.0.0.1"),
/// 			PeerGatewayIp:           pulumi.String("10.0.0.2"),
/// 			PeeringSubnetMask:       pulumi.String("255.255.255.252"),
/// 			PhysicalConnectionId:    pulumi.String(defaultGetPhysicalConnections.Connections[0].Id),
/// 			VirtualBorderRouterName: pulumi.String(name),
/// 			VlanId:                  vlanId.Id,
/// 			MinRxInterval:           pulumi.Int(1000),
/// 			MinTxInterval:           pulumi.Int(1000),
/// 			DetectMultiplier:        pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			ProtectionLevel: pulumi.String("REDUCED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstanceAttachment, err := cen.NewInstanceAttachment(ctx, "example", &cen.InstanceAttachmentArgs{
/// 			InstanceId:            exampleInstance.ID(),
/// 			ChildInstanceId:       example.ID(),
/// 			ChildInstanceType:     pulumi.String("VBR"),
/// 			ChildInstanceRegionId: pulumi.String(_default.Regions[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewVbrHealthCheck(ctx, "example", &cen.VbrHealthCheckArgs{
/// 			CenId:               exampleInstance.ID(),
/// 			HealthCheckSourceIp: pulumi.String("192.168.1.2"),
/// 			HealthCheckTargetIp: pulumi.String("10.0.0.2"),
/// 			VbrInstanceId:       example.ID(),
/// 			VbrInstanceRegionId: exampleInstanceAttachment.ChildInstanceRegionId,
/// 			HealthCheckInterval: pulumi.Int(2),
/// 			HealthyThreshold:    pulumi.Int(8),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouter;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouterArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.InstanceAttachment;
/// import com.pulumi.alicloud.cen.InstanceAttachmentArgs;
/// import com.pulumi.alicloud.cen.VbrHealthCheck;
/// import com.pulumi.alicloud.cen.VbrHealthCheckArgs;
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
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var defaultGetPhysicalConnections = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^preserved-NODELETING")
///             .build());
///
///         var vlanId = new Integer("vlanId", IntegerArgs.builder()
///             .max(2999)
///             .min(1)
///             .build());
///
///         var example = new VirtualBorderRouter("example", VirtualBorderRouterArgs.builder()
///             .localGatewayIp("10.0.0.1")
///             .peerGatewayIp("10.0.0.2")
///             .peeringSubnetMask("255.255.255.252")
///             .physicalConnectionId(defaultGetPhysicalConnections.connections()[0].id())
///             .virtualBorderRouterName(name)
///             .vlanId(vlanId.id())
///             .minRxInterval(1000)
///             .minTxInterval(1000)
///             .detectMultiplier(10)
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         var exampleInstanceAttachment = new InstanceAttachment("exampleInstanceAttachment", InstanceAttachmentArgs.builder()
///             .instanceId(exampleInstance.id())
///             .childInstanceId(example.id())
///             .childInstanceType("VBR")
///             .childInstanceRegionId(default_.regions()[0].id())
///             .build());
///
///         var exampleVbrHealthCheck = new VbrHealthCheck("exampleVbrHealthCheck", VbrHealthCheckArgs.builder()
///             .cenId(exampleInstance.id())
///             .healthCheckSourceIp("192.168.1.2")
///             .healthCheckTargetIp("10.0.0.2")
///             .vbrInstanceId(example.id())
///             .vbrInstanceRegionId(exampleInstanceAttachment.childInstanceRegionId())
///             .healthCheckInterval(2)
///             .healthyThreshold(8)
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
///   vlanId:
///     type: random:Integer
///     name: vlan_id
///     properties:
///       max: 2999
///       min: 1
///   example:
///     type: alicloud:expressconnect:VirtualBorderRouter
///     properties:
///       localGatewayIp: 10.0.0.1
///       peerGatewayIp: 10.0.0.2
///       peeringSubnetMask: 255.255.255.252
///       physicalConnectionId: ${defaultGetPhysicalConnections.connections[0].id}
///       virtualBorderRouterName: ${name}
///       vlanId: ${vlanId.id}
///       minRxInterval: 1000
///       minTxInterval: 1000
///       detectMultiplier: 10
///   exampleInstance:
///     type: alicloud:cen:Instance
///     name: example
///     properties:
///       cenInstanceName: ${name}
///       protectionLevel: REDUCED
///   exampleInstanceAttachment:
///     type: alicloud:cen:InstanceAttachment
///     name: example
///     properties:
///       instanceId: ${exampleInstance.id}
///       childInstanceId: ${example.id}
///       childInstanceType: VBR
///       childInstanceRegionId: ${default.regions[0].id}
///   exampleVbrHealthCheck:
///     type: alicloud:cen:VbrHealthCheck
///     name: example
///     properties:
///       cenId: ${exampleInstance.id}
///       healthCheckSourceIp: 192.168.1.2
///       healthCheckTargetIp: 10.0.0.2
///       vbrInstanceId: ${example.id}
///       vbrInstanceRegionId: ${exampleInstanceAttachment.childInstanceRegionId}
///       healthCheckInterval: 2
///       healthyThreshold: 8
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   defaultGetPhysicalConnections:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         nameRegex: ^preserved-NODELETING
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CEN VBR HealthCheck can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/vbrHealthCheck:VbrHealthCheck example vbr-xxxxx:cn-hangzhou
/// ```
class VbrHealthCheck extends pulumi.CustomResource {
  /// The ID of the CEN instance.
  late final pulumi.Output<String> cenId;
  /// Specifies the interval at which the health check sends continuous detection packets. Default value: 2. Value range: 2 to 3.
  late final pulumi.Output<int?> healthCheckInterval;
  /// The source IP address of health checks.
  late final pulumi.Output<String> healthCheckSourceIp;
  /// The destination IP address of health checks.
  late final pulumi.Output<String> healthCheckTargetIp;
  /// Specifies the number of probe messages sent by the health check. Default value: 8. Value range: 3 to 8.
  late final pulumi.Output<int?> healthyThreshold;
  /// The ID of the VBR.
  late final pulumi.Output<String> vbrInstanceId;
  /// The ID of the account to which the VBR belongs.
  late final pulumi.Output<int?> vbrInstanceOwnerId;
  /// The ID of the region to which the VBR belongs.
  ///
  /// ->**NOTE:** The `alicloud.cen.VbrHealthCheck` resource depends on the related `alicloud.cen.InstanceAttachment` resource.
  late final pulumi.Output<String> vbrInstanceRegionId;

  /// Creates a new [VbrHealthCheck].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VbrHealthCheck]. {@macro pulumi_cen_vbr_health_check_vbr_health_check_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VbrHealthCheck(
    String name, {
    VbrHealthCheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/vbrHealthCheck:VbrHealthCheck',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenId = registerOutput<String>('cenId');
    this.healthCheckInterval = registerOutput<int?>('healthCheckInterval');
    this.healthCheckSourceIp = registerOutput<String>('healthCheckSourceIp');
    this.healthCheckTargetIp = registerOutput<String>('healthCheckTargetIp');
    this.healthyThreshold = registerOutput<int?>('healthyThreshold');
    this.vbrInstanceId = registerOutput<String>('vbrInstanceId');
    this.vbrInstanceOwnerId = registerOutput<int?>('vbrInstanceOwnerId');
    this.vbrInstanceRegionId = registerOutput<String>('vbrInstanceRegionId');
  }

  /// Gets an existing [VbrHealthCheck] resource's state with the given [name] and [id].
  static VbrHealthCheck get(
    String name,
    pulumi.Input<String> id, {
    VbrHealthCheckState? state,
  }) {
    return VbrHealthCheck._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VbrHealthCheck._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/vbrHealthCheck:VbrHealthCheck',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenId = registerOutput<String>('cenId');
    this.healthCheckInterval = registerOutput<int?>('healthCheckInterval');
    this.healthCheckSourceIp = registerOutput<String>('healthCheckSourceIp');
    this.healthCheckTargetIp = registerOutput<String>('healthCheckTargetIp');
    this.healthyThreshold = registerOutput<int?>('healthyThreshold');
    this.vbrInstanceId = registerOutput<String>('vbrInstanceId');
    this.vbrInstanceOwnerId = registerOutput<int?>('vbrInstanceOwnerId');
    this.vbrInstanceRegionId = registerOutput<String>('vbrInstanceRegionId');
  }
}
