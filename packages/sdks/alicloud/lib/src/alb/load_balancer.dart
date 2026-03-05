import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_access_log_config.dart';
import 'load_balancer_args.dart';
import 'load_balancer_deletion_protection_config.dart';
import 'load_balancer_load_balancer_billing_config.dart';
import 'load_balancer_modification_protection_config.dart';
import 'load_balancer_state.dart';

/// Provides a Application Load Balancer (ALB) Load Balancer resource.
///
/// Load Balancer Instance.
///
/// For information about Application Load Balancer (ALB) Load Balancer and how to use it, see [What is Load Balancer](https://www.alibabacloud.com/help/en/slb/application-load-balancer/developer-reference/api-alb-2020-06-16-createloadbalancer).
///
/// &gt; **NOTE:** Available since v1.132.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGetZones = alicloud.alb.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const default1 = new alicloud.vpc.Switch("default1", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "10.4.1.0/24",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///     vswitchName: `${name}_1`,
/// });
/// const default2 = new alicloud.vpc.Switch("default2", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "10.4.2.0/24",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[1]?.id),
///     vswitchName: `${name}_2`,
/// });
/// const defaultLoadBalancer = new alicloud.alb.LoadBalancer("default", {
///     loadBalancerEdition: "Basic",
///     addressType: "Internet",
///     vpcId: defaultNetwork.id,
///     addressAllocatedMode: "Fixed",
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
///     loadBalancerName: name,
///     loadBalancerBillingConfig: {
///         payType: "PayAsYouGo",
///     },
///     modificationProtectionConfig: {
///         status: "NonProtection",
///     },
///     zoneMappings: [
///         {
///             vswitchId: default1.id,
///             zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///         },
///         {
///             vswitchId: default2.id,
///             zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[1]?.id),
///         },
///     ],
///     tags: {
///         Created: "TF",
///     },
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
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_get_zones = alicloud.alb.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default1 = alicloud.vpc.Switch("default1",
///     vpc_id=default_network.id,
///     cidr_block="10.4.1.0/24",
///     zone_id=default_get_zones.zones[0].id,
///     vswitch_name=f"{name}_1")
/// default2 = alicloud.vpc.Switch("default2",
///     vpc_id=default_network.id,
///     cidr_block="10.4.2.0/24",
///     zone_id=default_get_zones.zones[1].id,
///     vswitch_name=f"{name}_2")
/// default_load_balancer = alicloud.alb.LoadBalancer("default",
///     load_balancer_edition="Basic",
///     address_type="Internet",
///     vpc_id=default_network.id,
///     address_allocated_mode="Fixed",
///     resource_group_id=default.groups[0].id,
///     load_balancer_name=name,
///     load_balancer_billing_config={
///         "pay_type": "PayAsYouGo",
///     },
///     modification_protection_config={
///         "status": "NonProtection",
///     },
///     zone_mappings=[
///         {
///             "vswitch_id": default1.id,
///             "zone_id": default_get_zones.zones[0].id,
///         },
///         {
///             "vswitch_id": default2.id,
///             "zone_id": default_get_zones.zones[1].id,
///         },
///     ],
///     tags={
///         "Created": "TF",
///     })
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultGetZones = AliCloud.Alb.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var default1 = new AliCloud.Vpc.Switch("default1", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "10.4.1.0/24",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = $"{name}_1",
///     });
///
///     var default2 = new AliCloud.Vpc.Switch("default2", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "10.4.2.0/24",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[1]?.Id),
///         VswitchName = $"{name}_2",
///     });
///
///     var defaultLoadBalancer = new AliCloud.Alb.LoadBalancer("default", new()
///     {
///         LoadBalancerEdition = "Basic",
///         AddressType = "Internet",
///         VpcId = defaultNetwork.Id,
///         AddressAllocatedMode = "Fixed",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///         LoadBalancerName = name,
///         LoadBalancerBillingConfig = new AliCloud.Alb.Inputs.LoadBalancerLoadBalancerBillingConfigArgs
///         {
///             PayType = "PayAsYouGo",
///         },
///         ModificationProtectionConfig = new AliCloud.Alb.Inputs.LoadBalancerModificationProtectionConfigArgs
///         {
///             Status = "NonProtection",
///         },
///         ZoneMappings = new[]
///         {
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = default1.Id,
///                 ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///             },
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = default2.Id,
///                 ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[1]?.Id),
///             },
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///         },
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alb.GetZones(ctx, &alb.GetZonesArgs{}, nil)
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
/// 		default1, err := vpc.NewSwitch(ctx, "default1", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("10.4.1.0/24"),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
/// 			VswitchName: pulumi.Sprintf("%v_1", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default2, err := vpc.NewSwitch(ctx, "default2", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("10.4.2.0/24"),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[1].Id),
/// 			VswitchName: pulumi.Sprintf("%v_2", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewLoadBalancer(ctx, "default", &alb.LoadBalancerArgs{
/// 			LoadBalancerEdition:  pulumi.String("Basic"),
/// 			AddressType:          pulumi.String("Internet"),
/// 			VpcId:                defaultNetwork.ID(),
/// 			AddressAllocatedMode: pulumi.String("Fixed"),
/// 			ResourceGroupId:      pulumi.String(_default.Groups[0].Id),
/// 			LoadBalancerName:     pulumi.String(name),
/// 			LoadBalancerBillingConfig: &alb.LoadBalancerLoadBalancerBillingConfigArgs{
/// 				PayType: pulumi.String("PayAsYouGo"),
/// 			},
/// 			ModificationProtectionConfig: &alb.LoadBalancerModificationProtectionConfigArgs{
/// 				Status: pulumi.String("NonProtection"),
/// 			},
/// 			ZoneMappings: alb.LoadBalancerZoneMappingArray{
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: default1.ID(),
/// 					ZoneId:    pulumi.String(defaultGetZones.Zones[0].Id),
/// 				},
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: default2.ID(),
/// 					ZoneId:    pulumi.String(defaultGetZones.Zones[1].Id),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.alb.AlbFunctions;
/// import com.pulumi.alicloud.alb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.alb.LoadBalancer;
/// import com.pulumi.alicloud.alb.LoadBalancerArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerLoadBalancerBillingConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerModificationProtectionConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerZoneMappingArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var defaultGetZones = AlbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var default1 = new Switch("default1", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("10.4.1.0/24")
///             .zoneId(defaultGetZones.zones()[0].id())
///             .vswitchName(String.format("%s_1", name))
///             .build());
///
///         var default2 = new Switch("default2", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("10.4.2.0/24")
///             .zoneId(defaultGetZones.zones()[1].id())
///             .vswitchName(String.format("%s_2", name))
///             .build());
///
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .loadBalancerEdition("Basic")
///             .addressType("Internet")
///             .vpcId(defaultNetwork.id())
///             .addressAllocatedMode("Fixed")
///             .resourceGroupId(default_.groups()[0].id())
///             .loadBalancerName(name)
///             .loadBalancerBillingConfig(LoadBalancerLoadBalancerBillingConfigArgs.builder()
///                 .payType("PayAsYouGo")
///                 .build())
///             .modificationProtectionConfig(LoadBalancerModificationProtectionConfigArgs.builder()
///                 .status("NonProtection")
///                 .build())
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(default1.id())
///                     .zoneId(defaultGetZones.zones()[0].id())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(default2.id())
///                     .zoneId(defaultGetZones.zones()[1].id())
///                     .build())
///             .tags(Map.of("Created", "TF"))
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   default1:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 10.4.1.0/24
///       zoneId: ${defaultGetZones.zones[0].id}
///       vswitchName: ${name}_1
///   default2:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 10.4.2.0/24
///       zoneId: ${defaultGetZones.zones[1].id}
///       vswitchName: ${name}_2
///   defaultLoadBalancer:
///     type: alicloud:alb:LoadBalancer
///     name: default
///     properties:
///       loadBalancerEdition: Basic
///       addressType: Internet
///       vpcId: ${defaultNetwork.id}
///       addressAllocatedMode: Fixed
///       resourceGroupId: ${default.groups[0].id}
///       loadBalancerName: ${name}
///       loadBalancerBillingConfig:
///         payType: PayAsYouGo
///       modificationProtectionConfig:
///         status: NonProtection
///       zoneMappings:
///         - vswitchId: ${default1.id}
///           zoneId: ${defaultGetZones.zones[0].id}
///         - vswitchId: ${default2.id}
///           zoneId: ${defaultGetZones.zones[1].id}
///       tags:
///         Created: TF
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:alb:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Load Balancer (ALB) Load Balancer can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/loadBalancer:LoadBalancer example <id>
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// The configuration of the access log. See `access_log_config` below.
  late final pulumi.Output<LoadBalancerAccessLogConfig?> accessLogConfig;

  /// The method in which IP addresses are assigned. Valid values:  Fixed: The ALB instance uses a fixed IP address. Dynamic (default): An IP address is dynamically assigned to each zone of the ALB instance.
  late final pulumi.Output<String?> addressAllocatedMode;

  /// The protocol version. Value:
  /// - `IPv4`:IPv4 type.
  /// - `DualStack`: the dual-stack type.
  late final pulumi.Output<String> addressIpVersion;

  /// The type of IP address that the SLB instance uses to provide services.
  late final pulumi.Output<String> addressType;

  /// The ID of the EIP bandwidth plan which is associated with an ALB instance that uses a public IP address.
  late final pulumi.Output<String?> bandwidthPackageId;

  /// The creation time of the resource
  late final pulumi.Output<String> createTime;

  /// The Protection Configuration See `deletion_protection_config` below.
  late final pulumi.Output<LoadBalancerDeletionProtectionConfig>
  deletionProtectionConfig;

  /// Specifies whether to enable deletion protection. Default value: `false`. Valid values:
  late final pulumi.Output<bool> deletionProtectionEnabled;

  /// DNS Domain Name
  late final pulumi.Output<String> dnsName;

  /// Whether to PreCheck only this request, value:
  late final pulumi.Output<bool?> dryRun;

  /// The address type of Ipv6
  late final pulumi.Output<String> ipv6AddressType;

  /// The configuration of the billing method. See `load_balancer_billing_config` below.
  late final pulumi.Output<LoadBalancerLoadBalancerBillingConfig>
  loadBalancerBillingConfig;

  /// The edition of the ALB instance.
  late final pulumi.Output<String> loadBalancerEdition;

  /// The name of the resource
  late final pulumi.Output<String?> loadBalancerName;

  /// Modify the Protection Configuration See `modification_protection_config` below.
  late final pulumi.Output<LoadBalancerModificationProtectionConfig>
  modificationProtectionConfig;

  /// The region ID of the resource
  late final pulumi.Output<String> regionId;

  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;

  /// Server Load Balancer Instance Status:, indicating that the instance listener will no longer forward traffic.(default).
  late final pulumi.Output<String> status;

  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of the virtual private cloud (VPC) where the SLB instance is deployed.
  late final pulumi.Output<String> vpcId;

  /// The zones and vSwitches. You must specify at least two zones. See `zone_mappings` below.
  late final pulumi.Output<List<Map<String, dynamic>>> zoneMappings;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_alb_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/loadBalancer:LoadBalancer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessLogConfig = registerOutput<LoadBalancerAccessLogConfig?>(
      'accessLogConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerAccessLogConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    addressAllocatedMode = registerOutput<String?>('addressAllocatedMode');
    addressIpVersion = registerOutput<String>('addressIpVersion');
    addressType = registerOutput<String>('addressType');
    bandwidthPackageId = registerOutput<String?>('bandwidthPackageId');
    createTime = registerOutput<String>('createTime');
    deletionProtectionConfig =
        registerOutput<LoadBalancerDeletionProtectionConfig>(
          'deletionProtectionConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return LoadBalancerDeletionProtectionConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    deletionProtectionEnabled = registerOutput<bool>(
      'deletionProtectionEnabled',
    );
    dnsName = registerOutput<String>('dnsName');
    dryRun = registerOutput<bool?>('dryRun');
    ipv6AddressType = registerOutput<String>('ipv6AddressType');
    loadBalancerBillingConfig =
        registerOutput<LoadBalancerLoadBalancerBillingConfig>(
          'loadBalancerBillingConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return LoadBalancerLoadBalancerBillingConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    loadBalancerEdition = registerOutput<String>('loadBalancerEdition');
    loadBalancerName = registerOutput<String?>('loadBalancerName');
    modificationProtectionConfig =
        registerOutput<LoadBalancerModificationProtectionConfig>(
          'modificationProtectionConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return LoadBalancerModificationProtectionConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    zoneMappings = registerOutput<List<Map<String, dynamic>>>('zoneMappings');
  }

  /// Gets an existing [LoadBalancer] resource's state with the given [name] and [id].
  static LoadBalancer get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerState? state,
  }) {
    return LoadBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/loadBalancer:LoadBalancer',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessLogConfig = registerOutput<LoadBalancerAccessLogConfig?>(
      'accessLogConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerAccessLogConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    addressAllocatedMode = registerOutput<String?>('addressAllocatedMode');
    addressIpVersion = registerOutput<String>('addressIpVersion');
    addressType = registerOutput<String>('addressType');
    bandwidthPackageId = registerOutput<String?>('bandwidthPackageId');
    createTime = registerOutput<String>('createTime');
    deletionProtectionConfig =
        registerOutput<LoadBalancerDeletionProtectionConfig>(
          'deletionProtectionConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return LoadBalancerDeletionProtectionConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    deletionProtectionEnabled = registerOutput<bool>(
      'deletionProtectionEnabled',
    );
    dnsName = registerOutput<String>('dnsName');
    dryRun = registerOutput<bool?>('dryRun');
    ipv6AddressType = registerOutput<String>('ipv6AddressType');
    loadBalancerBillingConfig =
        registerOutput<LoadBalancerLoadBalancerBillingConfig>(
          'loadBalancerBillingConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return LoadBalancerLoadBalancerBillingConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    loadBalancerEdition = registerOutput<String>('loadBalancerEdition');
    loadBalancerName = registerOutput<String?>('loadBalancerName');
    modificationProtectionConfig =
        registerOutput<LoadBalancerModificationProtectionConfig>(
          'modificationProtectionConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return LoadBalancerModificationProtectionConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    zoneMappings = registerOutput<List<Map<String, dynamic>>>('zoneMappings');
  }
}
