import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_cen_tr_firewall_args.dart';
import 'vpc_cen_tr_firewall_state.dart';

/// Provides a Cloud Firewall Vpc Cen Tr Firewall resource.
///
/// VPC firewall Cloud Enterprise Network Enterprise Edition.
///
/// For information about Cloud Firewall Vpc Cen Tr Firewall and how to use it, see [What is Vpc Cen Tr Firewall](https://www.alibabacloud.com/help/en/cloud-firewall/cloudfirewall/developer-reference/api-cloudfw-2017-12-07-createtrfirewallv2).
///
/// &gt; **NOTE:** Available since v1.228.0.
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
/// import * as time from "@pulumi/time";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const description = config.get("description") || "Created by Terraform";
/// const firewallName = config.get("firewallName") || "tf-example";
/// const trAttachmentMasterCidr = config.get("trAttachmentMasterCidr") || "192.168.3.192/26";
/// const firewallSubnetCidr = config.get("firewallSubnetCidr") || "192.168.3.0/25";
/// const region = config.get("region") || "cn-hangzhou";
/// const trAttachmentSlaveCidr = config.get("trAttachmentSlaveCidr") || "192.168.3.128/26";
/// const firewallVpcCidr = config.get("firewallVpcCidr") || "192.168.3.0/24";
/// const zone1 = config.get("zone1") || "cn-hangzhou-h";
/// const firewallNameUpdate = config.get("firewallNameUpdate") || "tf-example-1";
/// const zone2 = config.get("zone2") || "cn-hangzhou-i";
/// const _default = alicloud.cen.getTransitRouterAvailableResources({});
/// const defaultGetZones = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const cen = new alicloud.cen.Instance("cen", {
///     description: "terraform example",
///     cenInstanceName: name,
/// });
/// const tr = new alicloud.cen.TransitRouter("tr", {
///     transitRouterName: name,
///     transitRouterDescription: "tr-created-by-terraform",
///     cenId: cen.id,
/// });
/// const vpc1 = new alicloud.vpc.Network("vpc1", {
///     description: "created by terraform",
///     cidrBlock: "192.168.1.0/24",
///     vpcName: name,
/// });
/// const vpc1vsw1 = new alicloud.vpc.Switch("vpc1vsw1", {
///     cidrBlock: "192.168.1.0/25",
///     vswitchName: name,
///     vpcId: vpc1.id,
///     zoneId: _default.then(_default => _default.resources?.[0]?.masterZones?.[1]),
/// });
/// const vpc1vsw2 = new alicloud.vpc.Switch("vpc1vsw2", {
///     vpcId: vpc1.id,
///     cidrBlock: "192.168.1.128/26",
///     vswitchName: name,
///     zoneId: _default.then(_default => _default.resources?.[0]?.masterZones?.[2]),
/// });
/// const foo = new alicloud.vpc.RouteTable("foo", {
///     vpcId: vpc1.id,
///     routeTableName: name,
///     description: name,
/// });
/// const tr_vpc1 = new alicloud.cen.TransitRouterVpcAttachment("tr-vpc1", {
///     zoneMappings: [
///         {
///             vswitchId: vpc1vsw1.id,
///             zoneId: _default.then(_default => _default.resources?.[0]?.masterZones?.[1]),
///         },
///         {
///             zoneId: _default.then(_default => _default.resources?.[0]?.masterZones?.[2]),
///             vswitchId: vpc1vsw2.id,
///         },
///     ],
///     vpcId: vpc1.id,
///     cenId: cen.id,
///     transitRouterId: tr.transitRouterId,
/// }, {
///     dependsOn: [foo],
/// });
/// const wait10Minutes = new time.index.Sleep("wait_10_minutes", {createDuration: "10m"}, {
///     dependsOn: [tr_vpc1],
/// });
/// const defaultVpcCenTrFirewall = new alicloud.cloudfirewall.VpcCenTrFirewall("default", {
///     cenId: tr_vpc1.cenId,
///     firewallName: name,
///     firewallSubnetCidr: firewallSubnetCidr,
///     trAttachmentSlaveCidr: trAttachmentSlaveCidr,
///     firewallDescription: "VpcCenTrFirewall created by terraform",
///     regionNo: region,
///     trAttachmentMasterCidr: trAttachmentMasterCidr,
///     firewallVpcCidr: firewallVpcCidr,
///     transitRouterId: tr.transitRouterId,
///     routeMode: "managed",
/// }, {
///     dependsOn: [wait10Minutes],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_time as time
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// description = config.get("description")
/// if description is None:
///     description = "Created by Terraform"
/// firewall_name = config.get("firewallName")
/// if firewall_name is None:
///     firewall_name = "tf-example"
/// tr_attachment_master_cidr = config.get("trAttachmentMasterCidr")
/// if tr_attachment_master_cidr is None:
///     tr_attachment_master_cidr = "192.168.3.192/26"
/// firewall_subnet_cidr = config.get("firewallSubnetCidr")
/// if firewall_subnet_cidr is None:
///     firewall_subnet_cidr = "192.168.3.0/25"
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// tr_attachment_slave_cidr = config.get("trAttachmentSlaveCidr")
/// if tr_attachment_slave_cidr is None:
///     tr_attachment_slave_cidr = "192.168.3.128/26"
/// firewall_vpc_cidr = config.get("firewallVpcCidr")
/// if firewall_vpc_cidr is None:
///     firewall_vpc_cidr = "192.168.3.0/24"
/// zone1 = config.get("zone1")
/// if zone1 is None:
///     zone1 = "cn-hangzhou-h"
/// firewall_name_update = config.get("firewallNameUpdate")
/// if firewall_name_update is None:
///     firewall_name_update = "tf-example-1"
/// zone2 = config.get("zone2")
/// if zone2 is None:
///     zone2 = "cn-hangzhou-i"
/// default = alicloud.cen.get_transit_router_available_resources()
/// default_get_zones = alicloud.get_zones(available_resource_creation="VSwitch")
/// cen = alicloud.cen.Instance("cen",
///     description="terraform example",
///     cen_instance_name=name)
/// tr = alicloud.cen.TransitRouter("tr",
///     transit_router_name=name,
///     transit_router_description="tr-created-by-terraform",
///     cen_id=cen.id)
/// vpc1 = alicloud.vpc.Network("vpc1",
///     description="created by terraform",
///     cidr_block="192.168.1.0/24",
///     vpc_name=name)
/// vpc1vsw1 = alicloud.vpc.Switch("vpc1vsw1",
///     cidr_block="192.168.1.0/25",
///     vswitch_name=name,
///     vpc_id=vpc1.id,
///     zone_id=default.resources[0].master_zones[1])
/// vpc1vsw2 = alicloud.vpc.Switch("vpc1vsw2",
///     vpc_id=vpc1.id,
///     cidr_block="192.168.1.128/26",
///     vswitch_name=name,
///     zone_id=default.resources[0].master_zones[2])
/// foo = alicloud.vpc.RouteTable("foo",
///     vpc_id=vpc1.id,
///     route_table_name=name,
///     description=name)
/// tr_vpc1 = alicloud.cen.TransitRouterVpcAttachment("tr-vpc1",
///     zone_mappings=[
///         {
///             "vswitch_id": vpc1vsw1.id,
///             "zone_id": default.resources[0].master_zones[1],
///         },
///         {
///             "zone_id": default.resources[0].master_zones[2],
///             "vswitch_id": vpc1vsw2.id,
///         },
///     ],
///     vpc_id=vpc1.id,
///     cen_id=cen.id,
///     transit_router_id=tr.transit_router_id,
///     opts = pulumi.ResourceOptions(depends_on=[foo]))
/// wait10_minutes = time.index.Sleep("wait_10_minutes", create_duration=10m,
/// opts = pulumi.ResourceOptions(depends_on=[tr_vpc1]))
/// default_vpc_cen_tr_firewall = alicloud.cloudfirewall.VpcCenTrFirewall("default",
///     cen_id=tr_vpc1.cen_id,
///     firewall_name=name,
///     firewall_subnet_cidr=firewall_subnet_cidr,
///     tr_attachment_slave_cidr=tr_attachment_slave_cidr,
///     firewall_description="VpcCenTrFirewall created by terraform",
///     region_no=region,
///     tr_attachment_master_cidr=tr_attachment_master_cidr,
///     firewall_vpc_cidr=firewall_vpc_cidr,
///     transit_router_id=tr.transit_router_id,
///     route_mode="managed",
///     opts = pulumi.ResourceOptions(depends_on=[wait10_minutes]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Time = Pulumi.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var description = config.Get("description") ?? "Created by Terraform";
///     var firewallName = config.Get("firewallName") ?? "tf-example";
///     var trAttachmentMasterCidr = config.Get("trAttachmentMasterCidr") ?? "192.168.3.192/26";
///     var firewallSubnetCidr = config.Get("firewallSubnetCidr") ?? "192.168.3.0/25";
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var trAttachmentSlaveCidr = config.Get("trAttachmentSlaveCidr") ?? "192.168.3.128/26";
///     var firewallVpcCidr = config.Get("firewallVpcCidr") ?? "192.168.3.0/24";
///     var zone1 = config.Get("zone1") ?? "cn-hangzhou-h";
///     var firewallNameUpdate = config.Get("firewallNameUpdate") ?? "tf-example-1";
///     var zone2 = config.Get("zone2") ?? "cn-hangzhou-i";
///     var @default = AliCloud.Cen.GetTransitRouterAvailableResources.Invoke();
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var cen = new AliCloud.Cen.Instance("cen", new()
///     {
///         Description = "terraform example",
///         CenInstanceName = name,
///     });
///
///     var tr = new AliCloud.Cen.TransitRouter("tr", new()
///     {
///         TransitRouterName = name,
///         TransitRouterDescription = "tr-created-by-terraform",
///         CenId = cen.Id,
///     });
///
///     var vpc1 = new AliCloud.Vpc.Network("vpc1", new()
///     {
///         Description = "created by terraform",
///         CidrBlock = "192.168.1.0/24",
///         VpcName = name,
///     });
///
///     var vpc1vsw1 = new AliCloud.Vpc.Switch("vpc1vsw1", new()
///     {
///         CidrBlock = "192.168.1.0/25",
///         VswitchName = name,
///         VpcId = vpc1.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.MasterZones[1])),
///     });
///
///     var vpc1vsw2 = new AliCloud.Vpc.Switch("vpc1vsw2", new()
///     {
///         VpcId = vpc1.Id,
///         CidrBlock = "192.168.1.128/26",
///         VswitchName = name,
///         ZoneId = @default.Apply(@default => @default.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.MasterZones[2])),
///     });
///
///     var foo = new AliCloud.Vpc.RouteTable("foo", new()
///     {
///         VpcId = vpc1.Id,
///         RouteTableName = name,
///         Description = name,
///     });
///
///     var tr_vpc1 = new AliCloud.Cen.TransitRouterVpcAttachment("tr-vpc1", new()
///     {
///         ZoneMappings = new[]
///         {
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 VswitchId = vpc1vsw1.Id,
///                 ZoneId = @default.Apply(@default => @default.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.MasterZones[1])),
///             },
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 ZoneId = @default.Apply(@default => @default.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.MasterZones[2])),
///                 VswitchId = vpc1vsw2.Id,
///             },
///         },
///         VpcId = vpc1.Id,
///         CenId = cen.Id,
///         TransitRouterId = tr.TransitRouterId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             foo,
///         },
///     });
///
///     var wait10Minutes = new Time.Index.Sleep("wait_10_minutes", new()
///     {
///         CreateDuration = "10m",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             tr_vpc1,
///         },
///     });
///
///     var defaultVpcCenTrFirewall = new AliCloud.CloudFirewall.VpcCenTrFirewall("default", new()
///     {
///         CenId = tr_vpc1.CenId,
///         FirewallName = name,
///         FirewallSubnetCidr = firewallSubnetCidr,
///         TrAttachmentSlaveCidr = trAttachmentSlaveCidr,
///         FirewallDescription = "VpcCenTrFirewall created by terraform",
///         RegionNo = region,
///         TrAttachmentMasterCidr = trAttachmentMasterCidr,
///         FirewallVpcCidr = firewallVpcCidr,
///         TransitRouterId = tr.TransitRouterId,
///         RouteMode = "managed",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait10Minutes,
///         },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-time/sdk/go/time"
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
/// 		description := "Created by Terraform"
/// 		if param := cfg.Get("description"); param != "" {
/// 			description = param
/// 		}
/// 		firewallName := "tf-example"
/// 		if param := cfg.Get("firewallName"); param != "" {
/// 			firewallName = param
/// 		}
/// 		trAttachmentMasterCidr := "192.168.3.192/26"
/// 		if param := cfg.Get("trAttachmentMasterCidr"); param != "" {
/// 			trAttachmentMasterCidr = param
/// 		}
/// 		firewallSubnetCidr := "192.168.3.0/25"
/// 		if param := cfg.Get("firewallSubnetCidr"); param != "" {
/// 			firewallSubnetCidr = param
/// 		}
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		trAttachmentSlaveCidr := "192.168.3.128/26"
/// 		if param := cfg.Get("trAttachmentSlaveCidr"); param != "" {
/// 			trAttachmentSlaveCidr = param
/// 		}
/// 		firewallVpcCidr := "192.168.3.0/24"
/// 		if param := cfg.Get("firewallVpcCidr"); param != "" {
/// 			firewallVpcCidr = param
/// 		}
/// 		zone1 := "cn-hangzhou-h"
/// 		if param := cfg.Get("zone1"); param != "" {
/// 			zone1 = param
/// 		}
/// 		firewallNameUpdate := "tf-example-1"
/// 		if param := cfg.Get("firewallNameUpdate"); param != "" {
/// 			firewallNameUpdate = param
/// 		}
/// 		zone2 := "cn-hangzhou-i"
/// 		if param := cfg.Get("zone2"); param != "" {
/// 			zone2 = param
/// 		}
/// 		_default, err := cen.GetTransitRouterAvailableResources(ctx, &cen.GetTransitRouterAvailableResourcesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cen, err := cen.NewInstance(ctx, "cen", &cen.InstanceArgs{
/// 			Description:     pulumi.String("terraform example"),
/// 			CenInstanceName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tr, err := cen.NewTransitRouter(ctx, "tr", &cen.TransitRouterArgs{
/// 			TransitRouterName:        pulumi.String(name),
/// 			TransitRouterDescription: pulumi.String("tr-created-by-terraform"),
/// 			CenId:                    cen.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc1, err := vpc.NewNetwork(ctx, "vpc1", &vpc.NetworkArgs{
/// 			Description: pulumi.String("created by terraform"),
/// 			CidrBlock:   pulumi.String("192.168.1.0/24"),
/// 			VpcName:     pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc1vsw1, err := vpc.NewSwitch(ctx, "vpc1vsw1", &vpc.SwitchArgs{
/// 			CidrBlock:   pulumi.String("192.168.1.0/25"),
/// 			VswitchName: pulumi.String(name),
/// 			VpcId:       vpc1.ID(),
/// 			ZoneId:      pulumi.String(_default.Resources[0].MasterZones[1]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc1vsw2, err := vpc.NewSwitch(ctx, "vpc1vsw2", &vpc.SwitchArgs{
/// 			VpcId:       vpc1.ID(),
/// 			CidrBlock:   pulumi.String("192.168.1.128/26"),
/// 			VswitchName: pulumi.String(name),
/// 			ZoneId:      pulumi.String(_default.Resources[0].MasterZones[2]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := vpc.NewRouteTable(ctx, "foo", &vpc.RouteTableArgs{
/// 			VpcId:          vpc1.ID(),
/// 			RouteTableName: pulumi.String(name),
/// 			Description:    pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tr_vpc1, err := cen.NewTransitRouterVpcAttachment(ctx, "tr-vpc1", &cen.TransitRouterVpcAttachmentArgs{
/// 			ZoneMappings: cen.TransitRouterVpcAttachmentZoneMappingArray{
/// 				&cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// 					VswitchId: vpc1vsw1.ID(),
/// 					ZoneId:    pulumi.String(_default.Resources[0].MasterZones[1]),
/// 				},
/// 				&cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// 					ZoneId:    pulumi.String(_default.Resources[0].MasterZones[2]),
/// 					VswitchId: vpc1vsw2.ID(),
/// 				},
/// 			},
/// 			VpcId:           vpc1.ID(),
/// 			CenId:           cen.ID(),
/// 			TransitRouterId: tr.TransitRouterId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			foo,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait10Minutes, err := time.NewSleep(ctx, "wait_10_minutes", &time.SleepArgs{
/// 			CreateDuration: "10m",
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			tr_vpc1,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfirewall.NewVpcCenTrFirewall(ctx, "default", &cloudfirewall.VpcCenTrFirewallArgs{
/// 			CenId:                  tr_vpc1.CenId,
/// 			FirewallName:           pulumi.String(name),
/// 			FirewallSubnetCidr:     pulumi.String(firewallSubnetCidr),
/// 			TrAttachmentSlaveCidr:  pulumi.String(trAttachmentSlaveCidr),
/// 			FirewallDescription:    pulumi.String("VpcCenTrFirewall created by terraform"),
/// 			RegionNo:               pulumi.String(region),
/// 			TrAttachmentMasterCidr: pulumi.String(trAttachmentMasterCidr),
/// 			FirewallVpcCidr:        pulumi.String(firewallVpcCidr),
/// 			TransitRouterId:        tr.TransitRouterId,
/// 			RouteMode:              pulumi.String("managed"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait10Minutes,
/// 		}))
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
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterAvailableResourcesArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.RouteTable;
/// import com.pulumi.alicloud.vpc.RouteTableArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachmentArgs;
/// import com.pulumi.alicloud.cen.inputs.TransitRouterVpcAttachmentZoneMappingArgs;
/// import com.pulumi.time.Sleep;
/// import com.pulumi.time.SleepArgs;
/// import com.pulumi.alicloud.cloudfirewall.VpcCenTrFirewall;
/// import com.pulumi.alicloud.cloudfirewall.VpcCenTrFirewallArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var description = config.get("description").orElse("Created by Terraform");
///         final var firewallName = config.get("firewallName").orElse("tf-example");
///         final var trAttachmentMasterCidr = config.get("trAttachmentMasterCidr").orElse("192.168.3.192/26");
///         final var firewallSubnetCidr = config.get("firewallSubnetCidr").orElse("192.168.3.0/25");
///         final var region = config.get("region").orElse("cn-hangzhou");
///         final var trAttachmentSlaveCidr = config.get("trAttachmentSlaveCidr").orElse("192.168.3.128/26");
///         final var firewallVpcCidr = config.get("firewallVpcCidr").orElse("192.168.3.0/24");
///         final var zone1 = config.get("zone1").orElse("cn-hangzhou-h");
///         final var firewallNameUpdate = config.get("firewallNameUpdate").orElse("tf-example-1");
///         final var zone2 = config.get("zone2").orElse("cn-hangzhou-i");
///         final var default = CenFunctions.getTransitRouterAvailableResources(GetTransitRouterAvailableResourcesArgs.builder()
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var cen = new Instance("cen", InstanceArgs.builder()
///             .description("terraform example")
///             .cenInstanceName(name)
///             .build());
///
///         var tr = new TransitRouter("tr", TransitRouterArgs.builder()
///             .transitRouterName(name)
///             .transitRouterDescription("tr-created-by-terraform")
///             .cenId(cen.id())
///             .build());
///
///         var vpc1 = new Network("vpc1", NetworkArgs.builder()
///             .description("created by terraform")
///             .cidrBlock("192.168.1.0/24")
///             .vpcName(name)
///             .build());
///
///         var vpc1vsw1 = new Switch("vpc1vsw1", SwitchArgs.builder()
///             .cidrBlock("192.168.1.0/25")
///             .vswitchName(name)
///             .vpcId(vpc1.id())
///             .zoneId(default_.resources()[0].masterZones()[1])
///             .build());
///
///         var vpc1vsw2 = new Switch("vpc1vsw2", SwitchArgs.builder()
///             .vpcId(vpc1.id())
///             .cidrBlock("192.168.1.128/26")
///             .vswitchName(name)
///             .zoneId(default_.resources()[0].masterZones()[2])
///             .build());
///
///         var foo = new RouteTable("foo", RouteTableArgs.builder()
///             .vpcId(vpc1.id())
///             .routeTableName(name)
///             .description(name)
///             .build());
///
///         var tr_vpc1 = new TransitRouterVpcAttachment("tr-vpc1", TransitRouterVpcAttachmentArgs.builder()
///             .zoneMappings(
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .vswitchId(vpc1vsw1.id())
///                     .zoneId(default_.resources()[0].masterZones()[1])
///                     .build(),
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .zoneId(default_.resources()[0].masterZones()[2])
///                     .vswitchId(vpc1vsw2.id())
///                     .build())
///             .vpcId(vpc1.id())
///             .cenId(cen.id())
///             .transitRouterId(tr.transitRouterId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(foo)
///                 .build());
///
///         var wait10Minutes = new Sleep("wait10Minutes", SleepArgs.builder()
///             .createDuration("10m")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(List.of(tr_vpc1))
///                 .build());
///
///         var defaultVpcCenTrFirewall = new VpcCenTrFirewall("defaultVpcCenTrFirewall", VpcCenTrFirewallArgs.builder()
///             .cenId(tr_vpc1.cenId())
///             .firewallName(name)
///             .firewallSubnetCidr(firewallSubnetCidr)
///             .trAttachmentSlaveCidr(trAttachmentSlaveCidr)
///             .firewallDescription("VpcCenTrFirewall created by terraform")
///             .regionNo(region)
///             .trAttachmentMasterCidr(trAttachmentMasterCidr)
///             .firewallVpcCidr(firewallVpcCidr)
///             .transitRouterId(tr.transitRouterId())
///             .routeMode("managed")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait10Minutes)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   description:
///     type: string
///     default: Created by Terraform
///   firewallName:
///     type: string
///     default: tf-example
///   trAttachmentMasterCidr:
///     type: string
///     default: 192.168.3.192/26
///   firewallSubnetCidr:
///     type: string
///     default: 192.168.3.0/25
///   region:
///     type: string
///     default: cn-hangzhou
///   trAttachmentSlaveCidr:
///     type: string
///     default: 192.168.3.128/26
///   firewallVpcCidr:
///     type: string
///     default: 192.168.3.0/24
///   zone1:
///     type: string
///     default: cn-hangzhou-h
///   firewallNameUpdate:
///     type: string
///     default: tf-example-1
///   zone2:
///     type: string
///     default: cn-hangzhou-i
/// resources:
///   cen:
///     type: alicloud:cen:Instance
///     properties:
///       description: terraform example
///       cenInstanceName: ${name}
///   tr:
///     type: alicloud:cen:TransitRouter
///     properties:
///       transitRouterName: ${name}
///       transitRouterDescription: tr-created-by-terraform
///       cenId: ${cen.id}
///   vpc1:
///     type: alicloud:vpc:Network
///     properties:
///       description: created by terraform
///       cidrBlock: 192.168.1.0/24
///       vpcName: ${name}
///   vpc1vsw1:
///     type: alicloud:vpc:Switch
///     properties:
///       cidrBlock: 192.168.1.0/25
///       vswitchName: ${name}
///       vpcId: ${vpc1.id}
///       zoneId: ${default.resources[0].masterZones[1]}
///   vpc1vsw2:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${vpc1.id}
///       cidrBlock: 192.168.1.128/26
///       vswitchName: ${name}
///       zoneId: ${default.resources[0].masterZones[2]}
///   foo:
///     type: alicloud:vpc:RouteTable
///     properties:
///       vpcId: ${vpc1.id}
///       routeTableName: ${name}
///       description: ${name}
///   tr-vpc1:
///     type: alicloud:cen:TransitRouterVpcAttachment
///     properties:
///       zoneMappings:
///         - vswitchId: ${vpc1vsw1.id}
///           zoneId: ${default.resources[0].masterZones[1]}
///         - zoneId: ${default.resources[0].masterZones[2]}
///           vswitchId: ${vpc1vsw2.id}
///       vpcId: ${vpc1.id}
///       cenId: ${cen.id}
///       transitRouterId: ${tr.transitRouterId}
///     options:
///       dependsOn:
///         - ${foo}
///   wait10Minutes:
///     type: time:Sleep
///     name: wait_10_minutes
///     properties:
///       createDuration: 10m
///     options:
///       dependsOn:
///         - ${["tr-vpc1"]}
///   defaultVpcCenTrFirewall:
///     type: alicloud:cloudfirewall:VpcCenTrFirewall
///     name: default
///     properties:
///       cenId: ${["tr-vpc1"].cenId}
///       firewallName: ${name}
///       firewallSubnetCidr: ${firewallSubnetCidr}
///       trAttachmentSlaveCidr: ${trAttachmentSlaveCidr}
///       firewallDescription: VpcCenTrFirewall created by terraform
///       regionNo: ${region}
///       trAttachmentMasterCidr: ${trAttachmentMasterCidr}
///       firewallVpcCidr: ${firewallVpcCidr}
///       transitRouterId: ${tr.transitRouterId}
///       routeMode: managed
///     options:
///       dependsOn:
///         - ${wait10Minutes}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterAvailableResources
///       arguments: {}
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Firewall Vpc Cen Tr Firewall can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/vpcCenTrFirewall:VpcCenTrFirewall example <firewall_id>
/// ```
class VpcCenTrFirewall extends pulumi.CustomResource {
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  late final pulumi.Output<String> cenId;

  /// The description of the firewall.
  late final pulumi.Output<String?> firewallDescription;

  /// The ID of the firewall ENI.
  late final pulumi.Output<String> firewallEniId;

  /// The ID of the VPC where the firewall ENI resides.
  late final pulumi.Output<String> firewallEniVpcId;

  /// The name of the Cloud Firewall.
  late final pulumi.Output<String> firewallName;

  /// The CIDR block of the subnet in the firewall VPC that hosts the firewall ENI in automatic mode.
  late final pulumi.Output<String> firewallSubnetCidr;

  /// The ID of the firewall VPC connection.
  late final pulumi.Output<String> firewallVpcAttachmentId;

  /// The CIDR block of the firewall VPC in automatic mode.
  late final pulumi.Output<String> firewallVpcCidr;

  /// The region ID of the transit router instance.
  late final pulumi.Output<String> regionNo;

  /// The routing mode. Valid values:
  late final pulumi.Output<String> routeMode;

  /// The status of the firewall.
  late final pulumi.Output<String> status;

  /// The primary CIDR block of the subnet in the firewall VPC used to connect to the transit router (TR) in automatic mode.
  late final pulumi.Output<String> trAttachmentMasterCidr;

  /// The primary zone of the vSwitch.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> trAttachmentMasterZone;

  /// The secondary CIDR block of the subnet in the firewall VPC used to connect to TR in automatic mode.
  late final pulumi.Output<String> trAttachmentSlaveCidr;

  /// The secondary zone of the vSwitch.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> trAttachmentSlaveZone;

  /// The ID of the Transit Router instance.
  late final pulumi.Output<String> transitRouterId;

  /// Creates a new [VpcCenTrFirewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcCenTrFirewall]. {@macro pulumi_cloudfirewall_vpc_cen_tr_firewall_vpc_cen_tr_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcCenTrFirewall(
    String name, {
    VpcCenTrFirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudfirewall/vpcCenTrFirewall:VpcCenTrFirewall',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cenId = registerOutput<String>('cenId');
    firewallDescription = registerOutput<String?>('firewallDescription');
    firewallEniId = registerOutput<String>('firewallEniId');
    firewallEniVpcId = registerOutput<String>('firewallEniVpcId');
    firewallName = registerOutput<String>('firewallName');
    firewallSubnetCidr = registerOutput<String>('firewallSubnetCidr');
    firewallVpcAttachmentId = registerOutput<String>('firewallVpcAttachmentId');
    firewallVpcCidr = registerOutput<String>('firewallVpcCidr');
    regionNo = registerOutput<String>('regionNo');
    routeMode = registerOutput<String>('routeMode');
    status = registerOutput<String>('status');
    trAttachmentMasterCidr = registerOutput<String>('trAttachmentMasterCidr');
    trAttachmentMasterZone = registerOutput<String?>('trAttachmentMasterZone');
    trAttachmentSlaveCidr = registerOutput<String>('trAttachmentSlaveCidr');
    trAttachmentSlaveZone = registerOutput<String?>('trAttachmentSlaveZone');
    transitRouterId = registerOutput<String>('transitRouterId');
  }

  /// Gets an existing [VpcCenTrFirewall] resource's state with the given [name] and [id].
  static VpcCenTrFirewall get(
    String name,
    pulumi.Input<String> id, {
    VpcCenTrFirewallState? state,
  }) {
    return VpcCenTrFirewall._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcCenTrFirewall._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudfirewall/vpcCenTrFirewall:VpcCenTrFirewall',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cenId = registerOutput<String>('cenId');
    firewallDescription = registerOutput<String?>('firewallDescription');
    firewallEniId = registerOutput<String>('firewallEniId');
    firewallEniVpcId = registerOutput<String>('firewallEniVpcId');
    firewallName = registerOutput<String>('firewallName');
    firewallSubnetCidr = registerOutput<String>('firewallSubnetCidr');
    firewallVpcAttachmentId = registerOutput<String>('firewallVpcAttachmentId');
    firewallVpcCidr = registerOutput<String>('firewallVpcCidr');
    regionNo = registerOutput<String>('regionNo');
    routeMode = registerOutput<String>('routeMode');
    status = registerOutput<String>('status');
    trAttachmentMasterCidr = registerOutput<String>('trAttachmentMasterCidr');
    trAttachmentMasterZone = registerOutput<String?>('trAttachmentMasterZone');
    trAttachmentSlaveCidr = registerOutput<String>('trAttachmentSlaveCidr');
    trAttachmentSlaveZone = registerOutput<String?>('trAttachmentSlaveZone');
    transitRouterId = registerOutput<String>('transitRouterId');
  }
}
