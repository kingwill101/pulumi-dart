import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_common_bandwidth_package_attachment_args.dart';
import 'load_balancer_common_bandwidth_package_attachment_state.dart';

/// Provides a Alb Load Balancer Common Bandwidth Package Attachment resource.
///
/// For information about Alb Load Balancer Common Bandwidth Package Attachment and how to use it, see [What is Load Balancer Common Bandwidth Package Attachment](https://www.alibabacloud.com/help/en/slb/application-load-balancer/developer-reference/api-alb-2020-06-16-attachcommonbandwidthpackagetoloadbalancer).
///
/// &gt; **NOTE:** Available since v1.200.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.alb.getZones({});
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultSwitch.push(new alicloud.vpc.Switch(`default-${range.value}`, {
///         vpcId: defaultNetwork.id,
///         cidrBlock: std.format({
///             input: "10.4.%d.0/24",
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         zoneId: _default.then(_default => _default.zones[range.value].id),
///         vswitchName: std.format({
///             input: `${name}_%d`,
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///     }));
/// }
/// const defaultLoadBalancer = new alicloud.alb.LoadBalancer("default", {
///     vpcId: defaultNetwork.id,
///     addressType: "Internet",
///     addressAllocatedMode: "Fixed",
///     loadBalancerName: name,
///     loadBalancerEdition: "Basic",
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
///     loadBalancerBillingConfig: {
///         payType: "PayAsYouGo",
///     },
///     tags: {
///         Created: "TF",
///     },
///     zoneMappings: [
///         {
///             vswitchId: defaultSwitch[0].id,
///             zoneId: _default.then(_default => _default.zones?.[0]?.id),
///         },
///         {
///             vswitchId: defaultSwitch[1].id,
///             zoneId: _default.then(_default => _default.zones?.[1]?.id),
///         },
///     ],
///     modificationProtectionConfig: {
///         status: "NonProtection",
///     },
/// });
/// const defaultCommonBandwithPackage = new alicloud.vpc.CommonBandwithPackage("default", {
///     bandwidth: "3",
///     internetChargeType: "PayByBandwidth",
/// });
/// const defaultLoadBalancerCommonBandwidthPackageAttachment = new alicloud.alb.LoadBalancerCommonBandwidthPackageAttachment("default", {
///     bandwidthPackageId: defaultCommonBandwithPackage.id,
///     loadBalancerId: defaultLoadBalancer.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.alb.get_zones()
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_switch.append(alicloud.vpc.Switch(f"default-{range['value']}",
///         vpc_id=default_network.id,
///         cidr_block=std.format(input="10.4.%d.0/24",
///             args=[range["value"] + 1]).result,
///         zone_id=default.zones[range["value"]].id,
///         vswitch_name=std.format(input=f"{name}_%d",
///             args=[range["value"] + 1]).result))
/// default_load_balancer = alicloud.alb.LoadBalancer("default",
///     vpc_id=default_network.id,
///     address_type="Internet",
///     address_allocated_mode="Fixed",
///     load_balancer_name=name,
///     load_balancer_edition="Basic",
///     resource_group_id=default_get_resource_groups.groups[0].id,
///     load_balancer_billing_config={
///         "pay_type": "PayAsYouGo",
///     },
///     tags={
///         "Created": "TF",
///     },
///     zone_mappings=[
///         {
///             "vswitch_id": default_switch[0].id,
///             "zone_id": default.zones[0].id,
///         },
///         {
///             "vswitch_id": default_switch[1].id,
///             "zone_id": default.zones[1].id,
///         },
///     ],
///     modification_protection_config={
///         "status": "NonProtection",
///     })
/// default_common_bandwith_package = alicloud.vpc.CommonBandwithPackage("default",
///     bandwidth="3",
///     internet_charge_type="PayByBandwidth")
/// default_load_balancer_common_bandwidth_package_attachment = alicloud.alb.LoadBalancerCommonBandwidthPackageAttachment("default",
///     bandwidth_package_id=default_common_bandwith_package.id,
///     load_balancer_id=default_load_balancer.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.Alb.GetZones.Invoke();
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultSwitch.Add(new AliCloud.Vpc.Switch($"default-{range.Value}", new()
///         {
///             VpcId = defaultNetwork.Id,
///             CidrBlock = Std.Format.Invoke(new()
///             {
///                 Input = "10.4.%d.0/24",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)[range.Value].Id),
///             VswitchName = Std.Format.Invoke(new()
///             {
///                 Input = $"{name}_%d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///         }));
///     }
///     var defaultLoadBalancer = new AliCloud.Alb.LoadBalancer("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         AddressType = "Internet",
///         AddressAllocatedMode = "Fixed",
///         LoadBalancerName = name,
///         LoadBalancerEdition = "Basic",
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         LoadBalancerBillingConfig = new AliCloud.Alb.Inputs.LoadBalancerLoadBalancerBillingConfigArgs
///         {
///             PayType = "PayAsYouGo",
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///         },
///         ZoneMappings = new[]
///         {
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultSwitch[0].Id,
///                 ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///             },
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultSwitch[1].Id,
///                 ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[1]?.Id)),
///             },
///         },
///         ModificationProtectionConfig = new AliCloud.Alb.Inputs.LoadBalancerModificationProtectionConfigArgs
///         {
///             Status = "NonProtection",
///         },
///     });
///
///     var defaultCommonBandwithPackage = new AliCloud.Vpc.CommonBandwithPackage("default", new()
///     {
///         Bandwidth = "3",
///         InternetChargeType = "PayByBandwidth",
///     });
///
///     var defaultLoadBalancerCommonBandwidthPackageAttachment = new AliCloud.Alb.LoadBalancerCommonBandwidthPackageAttachment("default", new()
///     {
///         BandwidthPackageId = defaultCommonBandwithPackage.Id,
///         LoadBalancerId = defaultLoadBalancer.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alb.GetZones(ctx, &alb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "10.4.%d.0/24",
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: fmt.Sprintf("%v%v", name, "_%d"),
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var defaultSwitch []*vpc.Switch
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := vpc.NewSwitch(ctx, fmt.Sprintf("default-%v", key0), &vpc.SwitchArgs{
/// 				VpcId:       defaultNetwork.ID(),
/// 				CidrBlock:   pulumi.String(invokeFormat.Result),
/// 				ZoneId:      _default.Zones[val0].Id,
/// 				VswitchName: pulumi.String(invokeFormat1.Result),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultSwitch = append(defaultSwitch, __res)
/// 		}
/// 		defaultLoadBalancer, err := alb.NewLoadBalancer(ctx, "default", &alb.LoadBalancerArgs{
/// 			VpcId:                defaultNetwork.ID(),
/// 			AddressType:          pulumi.String("Internet"),
/// 			AddressAllocatedMode: pulumi.String("Fixed"),
/// 			LoadBalancerName:     pulumi.String(name),
/// 			LoadBalancerEdition:  pulumi.String("Basic"),
/// 			ResourceGroupId:      pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 			LoadBalancerBillingConfig: &alb.LoadBalancerLoadBalancerBillingConfigArgs{
/// 				PayType: pulumi.String("PayAsYouGo"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 			},
/// 			ZoneMappings: alb.LoadBalancerZoneMappingArray{
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultSwitch[0].ID(),
/// 					ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 				},
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultSwitch[1].ID(),
/// 					ZoneId:    pulumi.String(_default.Zones[1].Id),
/// 				},
/// 			},
/// 			ModificationProtectionConfig: &alb.LoadBalancerModificationProtectionConfigArgs{
/// 				Status: pulumi.String("NonProtection"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCommonBandwithPackage, err := vpc.NewCommonBandwithPackage(ctx, "default", &vpc.CommonBandwithPackageArgs{
/// 			Bandwidth:          pulumi.String("3"),
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewLoadBalancerCommonBandwidthPackageAttachment(ctx, "default", &alb.LoadBalancerCommonBandwidthPackageAttachmentArgs{
/// 			BandwidthPackageId: defaultCommonBandwithPackage.ID(),
/// 			LoadBalancerId:     defaultLoadBalancer.ID(),
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
/// import com.pulumi.alicloud.alb.AlbFunctions;
/// import com.pulumi.alicloud.alb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.alb.LoadBalancer;
/// import com.pulumi.alicloud.alb.LoadBalancerArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerLoadBalancerBillingConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerZoneMappingArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerModificationProtectionConfigArgs;
/// import com.pulumi.alicloud.vpc.CommonBandwithPackage;
/// import com.pulumi.alicloud.vpc.CommonBandwithPackageArgs;
/// import com.pulumi.alicloud.alb.LoadBalancerCommonBandwidthPackageAttachment;
/// import com.pulumi.alicloud.alb.LoadBalancerCommonBandwidthPackageAttachmentArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = AlbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Switch("defaultSwitch-" + i, SwitchArgs.builder()
///                 .vpcId(defaultNetwork.id())
///                 .cidrBlock(StdFunctions.format(FormatArgs.builder()
///                     .input("10.4.%d.0/24")
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .zoneId(default_.zones()[range.value()].id())
///                 .vswitchName(StdFunctions.format(FormatArgs.builder()
///                     .input(String.format("%s_%d", name))
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .build());
///
///
/// }
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .addressType("Internet")
///             .addressAllocatedMode("Fixed")
///             .loadBalancerName(name)
///             .loadBalancerEdition("Basic")
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .loadBalancerBillingConfig(LoadBalancerLoadBalancerBillingConfigArgs.builder()
///                 .payType("PayAsYouGo")
///                 .build())
///             .tags(Map.of("Created", "TF"))
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(defaultSwitch[0].id())
///                     .zoneId(default_.zones()[0].id())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(defaultSwitch[1].id())
///                     .zoneId(default_.zones()[1].id())
///                     .build())
///             .modificationProtectionConfig(LoadBalancerModificationProtectionConfigArgs.builder()
///                 .status("NonProtection")
///                 .build())
///             .build());
///
///         var defaultCommonBandwithPackage = new CommonBandwithPackage("defaultCommonBandwithPackage", CommonBandwithPackageArgs.builder()
///             .bandwidth("3")
///             .internetChargeType("PayByBandwidth")
///             .build());
///
///         var defaultLoadBalancerCommonBandwidthPackageAttachment = new LoadBalancerCommonBandwidthPackageAttachment("defaultLoadBalancerCommonBandwidthPackageAttachment", LoadBalancerCommonBandwidthPackageAttachmentArgs.builder()
///             .bandwidthPackageId(defaultCommonBandwithPackage.id())
///             .loadBalancerId(defaultLoadBalancer.id())
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Alb Load Balancer Common Bandwidth Package Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/loadBalancerCommonBandwidthPackageAttachment:LoadBalancerCommonBandwidthPackageAttachment example <load_balancer_id>:<bandwidth_package_id>
/// ```
class LoadBalancerCommonBandwidthPackageAttachment extends pulumi.CustomResource {
  /// The ID of the bound shared bandwidth package.
  late final pulumi.Output<String> bandwidthPackageId;
  /// Whether to PreCheck this request only. Value:-**true**: sends a check request and does not bind the shared bandwidth package to the load balancing instance. Check items include whether required parameters, request format, and business restrictions have been filled in. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.-**false** (default): Sends a normal request, returns the HTTP 2xx status code after the check, and directly performs the operation.
  late final pulumi.Output<bool?> dryRun;
  /// The ID of the applied server load balancer instance.
  late final pulumi.Output<String> loadBalancerId;
  /// The status of the Application Load balancing instance. Value:-**Inactive**: Stopped, indicating that the instance listener will no longer forward traffic.-**Active**: running.-**Provisioning**: The project is being created.-**Configuring**: The configuration is being changed.-**CreateFailed**: The instance cannot be deleted without any charge.
  late final pulumi.Output<String> status;

  /// Creates a new [LoadBalancerCommonBandwidthPackageAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerCommonBandwidthPackageAttachment]. {@macro pulumi_alb_load_balancer_common_bandwidth_package_attachment_load_balancer_common_bandwidth_package_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerCommonBandwidthPackageAttachment(
    String name, {
    LoadBalancerCommonBandwidthPackageAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/loadBalancerCommonBandwidthPackageAttachment:LoadBalancerCommonBandwidthPackageAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidthPackageId = registerOutput<String>('bandwidthPackageId');
    dryRun = registerOutput<bool?>('dryRun');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [LoadBalancerCommonBandwidthPackageAttachment] resource's state with the given [name] and [id].
  static LoadBalancerCommonBandwidthPackageAttachment get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerCommonBandwidthPackageAttachmentState? state,
  }) {
    return LoadBalancerCommonBandwidthPackageAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancerCommonBandwidthPackageAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/loadBalancerCommonBandwidthPackageAttachment:LoadBalancerCommonBandwidthPackageAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidthPackageId = registerOutput<String>('bandwidthPackageId');
    dryRun = registerOutput<bool?>('dryRun');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    status = registerOutput<String>('status');
  }
}
