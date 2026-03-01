import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_firewall_control_policy_args.dart';

/// Provides a Cloud Firewall Nat Firewall Control Policy resource. Nat firewall access control policy.
///
/// For information about Cloud Firewall Nat Firewall Control Policy and how to use it, see [What is Nat Firewall Control Policy](https://www.alibabacloud.com/help/en/cloud-firewall/developer-reference/api-cloudfw-2017-12-07-createnatfirewallcontrolpolicy).
///
/// > **NOTE:** Available since v1.224.0.
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
/// const name = config.get("name") || "terraform-example";
/// const direction = config.get("direction") || "out";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultDEiWfM = new alicloud.vpc.Network("defaultDEiWfM", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const defaultFHDM3F = new alicloud.vpc.Switch("defaultFHDM3F", {
///     vpcId: defaultDEiWfM.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     cidrBlock: "172.16.2.0/24",
/// });
/// const defaultMbS2Ts = new alicloud.vpc.NatGateway("defaultMbS2Ts", {
///     vpcId: defaultDEiWfM.id,
///     natGatewayName: name,
///     paymentType: "PayAsYouGo",
///     vswitchId: defaultFHDM3F.id,
///     natType: "Enhanced",
/// });
/// const port = new alicloud.cloudfirewall.AddressBook("port", {
///     description: std.format({
///         input: "%s%s",
///         args: [
///             name,
///             "port",
///         ],
///     }).then(invoke => invoke.result),
///     groupName: std.format({
///         input: "%s%s",
///         args: [
///             name,
///             "port",
///         ],
///     }).then(invoke => invoke.result),
///     groupType: "port",
///     addressLists: [
///         "22/22",
///         "23/23",
///         "24/24",
///     ],
/// });
/// const port_update = new alicloud.cloudfirewall.AddressBook("port-update", {
///     description: std.format({
///         input: "%s%s",
///         args: [
///             name,
///             "port-update",
///         ],
///     }).then(invoke => invoke.result),
///     groupName: std.format({
///         input: "%s%s",
///         args: [
///             name,
///             "port-update",
///         ],
///     }).then(invoke => invoke.result),
///     groupType: "port",
///     addressLists: [
///         "22/22",
///         "23/23",
///         "24/24",
///     ],
/// });
/// const domain = new alicloud.cloudfirewall.AddressBook("domain", {
///     description: std.format({
///         input: "%s%s",
///         args: [
///             name,
///             "domain",
///         ],
///     }).then(invoke => invoke.result),
///     groupName: std.format({
///         input: "%s%s",
///         args: [
///             name,
///             "domain",
///         ],
///     }).then(invoke => invoke.result),
///     groupType: "domain",
///     addressLists: [
///         "alibaba.com",
///         "aliyun.com",
///         "alicloud.com",
///     ],
/// });
/// const ip = new alicloud.cloudfirewall.AddressBook("ip", {
///     description: name,
///     groupName: name,
///     groupType: "ip",
///     addressLists: [
///         "1.1.1.1/32",
///         "2.2.2.2/32",
///     ],
/// });
/// const defaultNatFirewallControlPolicy = new alicloud.cloudfirewall.NatFirewallControlPolicy("default", {
///     applicationNameLists: ["ANY"],
///     description: name,
///     release: "false",
///     ipVersion: "4",
///     repeatDays: [
///         1,
///         2,
///         3,
///     ],
///     repeatStartTime: "21:00",
///     aclAction: "log",
///     destPortGroup: port.groupName,
///     repeatType: "Weekly",
///     natGatewayId: defaultMbS2Ts.id,
///     source: "1.1.1.1/32",
///     direction: "out",
///     repeatEndTime: "21:30",
///     startTime: 1699156800,
///     destination: "1.1.1.1/32",
///     endTime: 1888545600,
///     sourceType: "net",
///     proto: "TCP",
///     newOrder: "1",
///     destinationType: "net",
///     destPortType: "group",
///     domainResolveType: 0,
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
///     name = "terraform-example"
/// direction = config.get("direction")
/// if direction is None:
///     direction = "out"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_d_ei_wf_m = alicloud.vpc.Network("defaultDEiWfM",
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// default_fhdm3_f = alicloud.vpc.Switch("defaultFHDM3F",
///     vpc_id=default_d_ei_wf_m.id,
///     zone_id=default.zones[0].id,
///     cidr_block="172.16.2.0/24")
/// default_mb_s2_ts = alicloud.vpc.NatGateway("defaultMbS2Ts",
///     vpc_id=default_d_ei_wf_m.id,
///     nat_gateway_name=name,
///     payment_type="PayAsYouGo",
///     vswitch_id=default_fhdm3_f.id,
///     nat_type="Enhanced")
/// port = alicloud.cloudfirewall.AddressBook("port",
///     description=std.format(input="%s%s",
///         args=[
///             name,
///             "port",
///         ]).result,
///     group_name=std.format(input="%s%s",
///         args=[
///             name,
///             "port",
///         ]).result,
///     group_type="port",
///     address_lists=[
///         "22/22",
///         "23/23",
///         "24/24",
///     ])
/// port_update = alicloud.cloudfirewall.AddressBook("port-update",
///     description=std.format(input="%s%s",
///         args=[
///             name,
///             "port-update",
///         ]).result,
///     group_name=std.format(input="%s%s",
///         args=[
///             name,
///             "port-update",
///         ]).result,
///     group_type="port",
///     address_lists=[
///         "22/22",
///         "23/23",
///         "24/24",
///     ])
/// domain = alicloud.cloudfirewall.AddressBook("domain",
///     description=std.format(input="%s%s",
///         args=[
///             name,
///             "domain",
///         ]).result,
///     group_name=std.format(input="%s%s",
///         args=[
///             name,
///             "domain",
///         ]).result,
///     group_type="domain",
///     address_lists=[
///         "alibaba.com",
///         "aliyun.com",
///         "alicloud.com",
///     ])
/// ip = alicloud.cloudfirewall.AddressBook("ip",
///     description=name,
///     group_name=name,
///     group_type="ip",
///     address_lists=[
///         "1.1.1.1/32",
///         "2.2.2.2/32",
///     ])
/// default_nat_firewall_control_policy = alicloud.cloudfirewall.NatFirewallControlPolicy("default",
///     application_name_lists=["ANY"],
///     description=name,
///     release="false",
///     ip_version="4",
///     repeat_days=[
///         1,
///         2,
///         3,
///     ],
///     repeat_start_time="21:00",
///     acl_action="log",
///     dest_port_group=port.group_name,
///     repeat_type="Weekly",
///     nat_gateway_id=default_mb_s2_ts.id,
///     source="1.1.1.1/32",
///     direction="out",
///     repeat_end_time="21:30",
///     start_time=1699156800,
///     destination="1.1.1.1/32",
///     end_time=1888545600,
///     source_type="net",
///     proto="TCP",
///     new_order="1",
///     destination_type="net",
///     dest_port_type="group",
///     domain_resolve_type=0)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var direction = config.Get("direction") ?? "out";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultDEiWfM = new AliCloud.Vpc.Network("defaultDEiWfM", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var defaultFHDM3F = new AliCloud.Vpc.Switch("defaultFHDM3F", new()
///     {
///         VpcId = defaultDEiWfM.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         CidrBlock = "172.16.2.0/24",
///     });
///
///     var defaultMbS2Ts = new AliCloud.Vpc.NatGateway("defaultMbS2Ts", new()
///     {
///         VpcId = defaultDEiWfM.Id,
///         NatGatewayName = name,
///         PaymentType = "PayAsYouGo",
///         VswitchId = defaultFHDM3F.Id,
///         NatType = "Enhanced",
///     });
///
///     var port = new AliCloud.CloudFirewall.AddressBook("port", new()
///     {
///         Description = Std.Format.Invoke(new()
///         {
///             Input = "%s%s",
///             Args = new[]
///             {
///                 name,
///                 "port",
///             },
///         }).Apply(invoke => invoke.Result),
///         GroupName = Std.Format.Invoke(new()
///         {
///             Input = "%s%s",
///             Args = new[]
///             {
///                 name,
///                 "port",
///             },
///         }).Apply(invoke => invoke.Result),
///         GroupType = "port",
///         AddressLists = new[]
///         {
///             "22/22",
///             "23/23",
///             "24/24",
///         },
///     });
///
///     var port_update = new AliCloud.CloudFirewall.AddressBook("port-update", new()
///     {
///         Description = Std.Format.Invoke(new()
///         {
///             Input = "%s%s",
///             Args = new[]
///             {
///                 name,
///                 "port-update",
///             },
///         }).Apply(invoke => invoke.Result),
///         GroupName = Std.Format.Invoke(new()
///         {
///             Input = "%s%s",
///             Args = new[]
///             {
///                 name,
///                 "port-update",
///             },
///         }).Apply(invoke => invoke.Result),
///         GroupType = "port",
///         AddressLists = new[]
///         {
///             "22/22",
///             "23/23",
///             "24/24",
///         },
///     });
///
///     var domain = new AliCloud.CloudFirewall.AddressBook("domain", new()
///     {
///         Description = Std.Format.Invoke(new()
///         {
///             Input = "%s%s",
///             Args = new[]
///             {
///                 name,
///                 "domain",
///             },
///         }).Apply(invoke => invoke.Result),
///         GroupName = Std.Format.Invoke(new()
///         {
///             Input = "%s%s",
///             Args = new[]
///             {
///                 name,
///                 "domain",
///             },
///         }).Apply(invoke => invoke.Result),
///         GroupType = "domain",
///         AddressLists = new[]
///         {
///             "alibaba.com",
///             "aliyun.com",
///             "alicloud.com",
///         },
///     });
///
///     var ip = new AliCloud.CloudFirewall.AddressBook("ip", new()
///     {
///         Description = name,
///         GroupName = name,
///         GroupType = "ip",
///         AddressLists = new[]
///         {
///             "1.1.1.1/32",
///             "2.2.2.2/32",
///         },
///     });
///
///     var defaultNatFirewallControlPolicy = new AliCloud.CloudFirewall.NatFirewallControlPolicy("default", new()
///     {
///         ApplicationNameLists = new[]
///         {
///             "ANY",
///         },
///         Description = name,
///         Release = "false",
///         IpVersion = "4",
///         RepeatDays = new[]
///         {
///             1,
///             2,
///             3,
///         },
///         RepeatStartTime = "21:00",
///         AclAction = "log",
///         DestPortGroup = port.GroupName,
///         RepeatType = "Weekly",
///         NatGatewayId = defaultMbS2Ts.Id,
///         Source = "1.1.1.1/32",
///         Direction = "out",
///         RepeatEndTime = "21:30",
///         StartTime = 1699156800,
///         Destination = "1.1.1.1/32",
///         EndTime = 1888545600,
///         SourceType = "net",
///         Proto = "TCP",
///         NewOrder = "1",
///         DestinationType = "net",
///         DestPortType = "group",
///         DomainResolveType = 0,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		direction := "out"
/// 		if param := cfg.Get("direction"); param != "" {
/// 			direction = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDEiWfM, err := vpc.NewNetwork(ctx, "defaultDEiWfM", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultFHDM3F, err := vpc.NewSwitch(ctx, "defaultFHDM3F", &vpc.SwitchArgs{
/// 			VpcId:     defaultDEiWfM.ID(),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 			CidrBlock: pulumi.String("172.16.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMbS2Ts, err := vpc.NewNatGateway(ctx, "defaultMbS2Ts", &vpc.NatGatewayArgs{
/// 			VpcId:          defaultDEiWfM.ID(),
/// 			NatGatewayName: pulumi.String(name),
/// 			PaymentType:    pulumi.String("PayAsYouGo"),
/// 			VswitchId:      defaultFHDM3F.ID(),
/// 			NatType:        pulumi.String("Enhanced"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s%s",
/// 			Args: []string{
/// 				name,
/// 				"port",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s%s",
/// 			Args: []string{
/// 				name,
/// 				"port",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		port, err := cloudfirewall.NewAddressBook(ctx, "port", &cloudfirewall.AddressBookArgs{
/// 			Description: pulumi.String(invokeFormat.Result),
/// 			GroupName:   pulumi.String(invokeFormat1.Result),
/// 			GroupType:   pulumi.String("port"),
/// 			AddressLists: pulumi.StringArray{
/// 				pulumi.String("22/22"),
/// 				pulumi.String("23/23"),
/// 				pulumi.String("24/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s%s",
/// 			Args: []string{
/// 				name,
/// 				"port-update",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat3, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s%s",
/// 			Args: []string{
/// 				name,
/// 				"port-update",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfirewall.NewAddressBook(ctx, "port-update", &cloudfirewall.AddressBookArgs{
/// 			Description: pulumi.String(invokeFormat2.Result),
/// 			GroupName:   pulumi.String(invokeFormat3.Result),
/// 			GroupType:   pulumi.String("port"),
/// 			AddressLists: pulumi.StringArray{
/// 				pulumi.String("22/22"),
/// 				pulumi.String("23/23"),
/// 				pulumi.String("24/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat4, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s%s",
/// 			Args: []string{
/// 				name,
/// 				"domain",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat5, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s%s",
/// 			Args: []string{
/// 				name,
/// 				"domain",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfirewall.NewAddressBook(ctx, "domain", &cloudfirewall.AddressBookArgs{
/// 			Description: pulumi.String(invokeFormat4.Result),
/// 			GroupName:   pulumi.String(invokeFormat5.Result),
/// 			GroupType:   pulumi.String("domain"),
/// 			AddressLists: pulumi.StringArray{
/// 				pulumi.String("alibaba.com"),
/// 				pulumi.String("aliyun.com"),
/// 				pulumi.String("alicloud.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfirewall.NewAddressBook(ctx, "ip", &cloudfirewall.AddressBookArgs{
/// 			Description: pulumi.String(name),
/// 			GroupName:   pulumi.String(name),
/// 			GroupType:   pulumi.String("ip"),
/// 			AddressLists: pulumi.StringArray{
/// 				pulumi.String("1.1.1.1/32"),
/// 				pulumi.String("2.2.2.2/32"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfirewall.NewNatFirewallControlPolicy(ctx, "default", &cloudfirewall.NatFirewallControlPolicyArgs{
/// 			ApplicationNameLists: pulumi.StringArray{
/// 				pulumi.String("ANY"),
/// 			},
/// 			Description: pulumi.String(name),
/// 			Release:     pulumi.String("false"),
/// 			IpVersion:   pulumi.String("4"),
/// 			RepeatDays: pulumi.IntArray{
/// 				pulumi.Int(1),
/// 				pulumi.Int(2),
/// 				pulumi.Int(3),
/// 			},
/// 			RepeatStartTime:   pulumi.String("21:00"),
/// 			AclAction:         pulumi.String("log"),
/// 			DestPortGroup:     port.GroupName,
/// 			RepeatType:        pulumi.String("Weekly"),
/// 			NatGatewayId:      defaultMbS2Ts.ID(),
/// 			Source:            pulumi.String("1.1.1.1/32"),
/// 			Direction:         pulumi.String("out"),
/// 			RepeatEndTime:     pulumi.String("21:30"),
/// 			StartTime:         pulumi.Int(1699156800),
/// 			Destination:       pulumi.String("1.1.1.1/32"),
/// 			EndTime:           pulumi.Int(1888545600),
/// 			SourceType:        pulumi.String("net"),
/// 			Proto:             pulumi.String("TCP"),
/// 			NewOrder:          pulumi.String("1"),
/// 			DestinationType:   pulumi.String("net"),
/// 			DestPortType:      pulumi.String("group"),
/// 			DomainResolveType: pulumi.Int(0),
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
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.NatGateway;
/// import com.pulumi.alicloud.vpc.NatGatewayArgs;
/// import com.pulumi.alicloud.cloudfirewall.AddressBook;
/// import com.pulumi.alicloud.cloudfirewall.AddressBookArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.cloudfirewall.NatFirewallControlPolicy;
/// import com.pulumi.alicloud.cloudfirewall.NatFirewallControlPolicyArgs;
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
///         final var direction = config.get("direction").orElse("out");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultDEiWfM = new Network("defaultDEiWfM", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         var defaultFHDM3F = new Switch("defaultFHDM3F", SwitchArgs.builder()
///             .vpcId(defaultDEiWfM.id())
///             .zoneId(default_.zones()[0].id())
///             .cidrBlock("172.16.2.0/24")
///             .build());
///
///         var defaultMbS2Ts = new NatGateway("defaultMbS2Ts", NatGatewayArgs.builder()
///             .vpcId(defaultDEiWfM.id())
///             .natGatewayName(name)
///             .paymentType("PayAsYouGo")
///             .vswitchId(defaultFHDM3F.id())
///             .natType("Enhanced")
///             .build());
///
///         var port = new AddressBook("port", AddressBookArgs.builder()
///             .description(StdFunctions.format(FormatArgs.builder()
///                 .input("%s%s")
///                 .args(
///                     name,
///                     "port")
///                 .build()).result())
///             .groupName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s%s")
///                 .args(
///                     name,
///                     "port")
///                 .build()).result())
///             .groupType("port")
///             .addressLists(
///                 "22/22",
///                 "23/23",
///                 "24/24")
///             .build());
///
///         var port_update = new AddressBook("port-update", AddressBookArgs.builder()
///             .description(StdFunctions.format(FormatArgs.builder()
///                 .input("%s%s")
///                 .args(
///                     name,
///                     "port-update")
///                 .build()).result())
///             .groupName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s%s")
///                 .args(
///                     name,
///                     "port-update")
///                 .build()).result())
///             .groupType("port")
///             .addressLists(
///                 "22/22",
///                 "23/23",
///                 "24/24")
///             .build());
///
///         var domain = new AddressBook("domain", AddressBookArgs.builder()
///             .description(StdFunctions.format(FormatArgs.builder()
///                 .input("%s%s")
///                 .args(
///                     name,
///                     "domain")
///                 .build()).result())
///             .groupName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s%s")
///                 .args(
///                     name,
///                     "domain")
///                 .build()).result())
///             .groupType("domain")
///             .addressLists(
///                 "alibaba.com",
///                 "aliyun.com",
///                 "alicloud.com")
///             .build());
///
///         var ip = new AddressBook("ip", AddressBookArgs.builder()
///             .description(name)
///             .groupName(name)
///             .groupType("ip")
///             .addressLists(
///                 "1.1.1.1/32",
///                 "2.2.2.2/32")
///             .build());
///
///         var defaultNatFirewallControlPolicy = new NatFirewallControlPolicy("defaultNatFirewallControlPolicy", NatFirewallControlPolicyArgs.builder()
///             .applicationNameLists("ANY")
///             .description(name)
///             .release("false")
///             .ipVersion("4")
///             .repeatDays(
///                 1,
///                 2,
///                 3)
///             .repeatStartTime("21:00")
///             .aclAction("log")
///             .destPortGroup(port.groupName())
///             .repeatType("Weekly")
///             .natGatewayId(defaultMbS2Ts.id())
///             .source("1.1.1.1/32")
///             .direction("out")
///             .repeatEndTime("21:30")
///             .startTime(1699156800)
///             .destination("1.1.1.1/32")
///             .endTime(1888545600)
///             .sourceType("net")
///             .proto("TCP")
///             .newOrder("1")
///             .destinationType("net")
///             .destPortType("group")
///             .domainResolveType(0)
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
///   direction:
///     type: string
///     default: out
/// resources:
///   defaultDEiWfM:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   defaultFHDM3F:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultDEiWfM.id}
///       zoneId: ${default.zones[0].id}
///       cidrBlock: 172.16.2.0/24
///   defaultMbS2Ts:
///     type: alicloud:vpc:NatGateway
///     properties:
///       vpcId: ${defaultDEiWfM.id}
///       natGatewayName: ${name}
///       paymentType: PayAsYouGo
///       vswitchId: ${defaultFHDM3F.id}
///       natType: Enhanced
///   port:
///     type: alicloud:cloudfirewall:AddressBook
///     properties:
///       description:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s%s'
///             args:
///               - ${name}
///               - port
///           return: result
///       groupName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s%s'
///             args:
///               - ${name}
///               - port
///           return: result
///       groupType: port
///       addressLists:
///         - 22/22
///         - 23/23
///         - 24/24
///   port-update:
///     type: alicloud:cloudfirewall:AddressBook
///     properties:
///       description:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s%s'
///             args:
///               - ${name}
///               - port-update
///           return: result
///       groupName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s%s'
///             args:
///               - ${name}
///               - port-update
///           return: result
///       groupType: port
///       addressLists:
///         - 22/22
///         - 23/23
///         - 24/24
///   domain:
///     type: alicloud:cloudfirewall:AddressBook
///     properties:
///       description:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s%s'
///             args:
///               - ${name}
///               - domain
///           return: result
///       groupName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s%s'
///             args:
///               - ${name}
///               - domain
///           return: result
///       groupType: domain
///       addressLists:
///         - alibaba.com
///         - aliyun.com
///         - alicloud.com
///   ip:
///     type: alicloud:cloudfirewall:AddressBook
///     properties:
///       description: ${name}
///       groupName: ${name}
///       groupType: ip
///       addressLists:
///         - 1.1.1.1/32
///         - 2.2.2.2/32
///   defaultNatFirewallControlPolicy:
///     type: alicloud:cloudfirewall:NatFirewallControlPolicy
///     name: default
///     properties:
///       applicationNameLists:
///         - ANY
///       description: ${name}
///       release: 'false'
///       ipVersion: '4'
///       repeatDays:
///         - '1'
///         - '2'
///         - '3'
///       repeatStartTime: 21:00
///       aclAction: log
///       destPortGroup: ${port.groupName}
///       repeatType: Weekly
///       natGatewayId: ${defaultMbS2Ts.id}
///       source: 1.1.1.1/32
///       direction: out
///       repeatEndTime: 21:30
///       startTime: '1699156800'
///       destination: 1.1.1.1/32
///       endTime: '1888545600'
///       sourceType: net
///       proto: TCP
///       newOrder: '1'
///       destinationType: net
///       destPortType: group
///       domainResolveType: '0'
/// variables:
///   default:
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
/// Cloud Firewall Nat Firewall Control Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/natFirewallControlPolicy:NatFirewallControlPolicy example <acl_uuid>:<nat_gateway_id>:<direction>
/// ```
class NatFirewallControlPolicy extends pulumi.CustomResource {
  /// The method (action) of access traffic passing through Cloud Firewall in the security access control policy. Valid values:
  /// - **accept**: Release
  /// - **drop**: Refused
  /// - **log**: Observation.
  late final pulumi.Output<String> aclAction;
  /// The unique ID of the security access control policy.
  /// > **NOTE:**  To modify a security access control policy, you need to provide the unique ID of the policy. You can call the DescribeNatFirewallControlPolicy interface to obtain the ID.
  late final pulumi.Output<String> aclUuid;
  /// The list of application types supported by the access control policy.
  late final pulumi.Output<List<String>> applicationNameLists;
  /// The time when the policy was created.
  late final pulumi.Output<int> createTime;
  /// The description of the access control policy.
  late final pulumi.Output<String> description;
  /// The destination port of traffic access in the access control policy. Value:
  /// - When the protocol type is set to ICMP, the value of DestPort is null.
  /// > **NOTE:**  When the protocol type is ICMP, access control on the destination port is not supported.
  /// - When the protocol type is TCP, UDP, or ANY, and the destination port type (DestPortType) IS group, the value of DestPort is null.
  /// > **NOTE:**  When you select group (destination port address book) for the destination port type of the access control policy, you do not need to set a specific destination port number. All ports that need to be controlled by this access control policy are included in the destination port address book.
  /// - When the protocol type is TCP, UDP, or ANY, and the destination port type (DestPortType) is port, the value of DestPort is the destination port number.
  late final pulumi.Output<String> destPort;
  /// The address book name of the destination port of the access traffic in the access control policy.
  /// > **NOTE:**  When DestPortType is set to group, you need to set the destination port address book name.
  late final pulumi.Output<String?> destPortGroup;
  /// The destination port type of the access traffic in the security access control policy.
  /// - **port**: port
  /// - **group**: Port Address Book.
  late final pulumi.Output<String> destPortType;
  /// The destination address segment in the access control policy. Valid values:
  /// - When DestinationType is net, Destination is the Destination CIDR. For example: 1.2.XX.XX/24
  /// - When DestinationType IS group, Destination is the name of the Destination address book. For example: db_group
  /// - When DestinationType is domain, Destination is the Destination domain name. For example: * .aliyuncs.com
  /// - When DestinationType is location, Destination is the Destination region. For example: \["BJ11", "ZB"\].
  late final pulumi.Output<String> destination;
  /// The destination address type in the access control policy. Valid values:
  /// - **net**: Destination Network segment (CIDR address)
  /// - **group**: Destination Address Book
  /// - **domain**: the destination domain name.
  late final pulumi.Output<String> destinationType;
  /// The traffic direction of the access control policy. Valid values:
  /// - **out**: Internal and external traffic access control.
  late final pulumi.Output<String> direction;
  /// The domain name resolution method of the access control policy. The policy is enabled by default after it is created. Valid values:
  /// - **0**: Based on FQDN
  /// - **1**: DNS-based dynamic resolution
  /// - **2**: dynamic resolution based on FQDN and DNS.
  late final pulumi.Output<int?> domainResolveType;
  /// The end time of the policy validity period of the access control policy. Expresses using the second-level timestamp format. Must be full or half time and at least half an hour greater than the start time.
  /// > **NOTE:**  When RepeatType is set to permit, EndTime is null. When the RepeatType is None, Daily, Weekly, or Monthly, EndTime must have a value and you need to set the end time.
  late final pulumi.Output<int?> endTime;
  /// Supported IP address version. Value:
  /// - **4** (default): indicates the IPv4 address.
  late final pulumi.Output<String?> ipVersion;
  /// The ID of the NAT gateway instance.
  late final pulumi.Output<String> natGatewayId;
  /// The priority for the access control policy to take effect. The priority number increases sequentially from 1, and the smaller the priority number, the higher the priority.
  late final pulumi.Output<String> newOrder;
  /// The security protocol type for traffic access in the access control policy. Valid values:
  /// - ANY (indicates that all protocol types are queried)
  /// - TCP
  /// - UDP
  /// - ICMP.
  late final pulumi.Output<String> proto;
  /// The enabled status of the access control policy. The policy is enabled by default after it is created. Value:
  /// - **true**: Enable access control policy
  /// - **false**: Do not enable access control policies.
  late final pulumi.Output<String> release;
  /// Collection of recurring dates for the policy validity period of the access control policy.
  /// - When RepeatType is 'Permanent', 'None', 'Daily', RepeatDays is an empty collection. For example:[]
  /// - When RepeatType is Weekly, RepeatDays cannot be empty. For example:["0", "6"]. When the RepeatType is set to Weekly, RepeatDays cannot be repeated.
  /// - RepeatDays cannot be empty when RepeatType is 'Monthly. For example:[1, 31]. When RepeatType is set to Monthly, RepeatDays cannot be repeated.
  late final pulumi.Output<List<int>?> repeatDays;
  /// The recurring end time of the policy validity period of the access control policy. For example: 23:30, it must be the whole point or half point time, and at least half an hour greater than the repeat start time.
  /// > **NOTE:**  When RepeatType is set to normal or None, RepeatEndTime is null. When the RepeatType is Daily, Weekly, or Monthly, the RepeatEndTime must have a value, and you need to set the repeat end time.
  late final pulumi.Output<String?> repeatEndTime;
  /// The recurring start time of the policy validity period of the access control policy. For example: 08:00, it must be the whole point or half point time, and at least half an hour less than the repeat end time.
  /// > **NOTE:**  When RepeatType is set to permit or None, RepeatStartTime is empty. When the RepeatType is Daily, Weekly, or Monthly, the RepeatStartTime must have a value and you need to set the repeat start time.
  late final pulumi.Output<String?> repeatStartTime;
  /// The type of repetition for the policy validity period of the access control policy. Value:
  /// - **Permit** (default): Always
  /// - **None**: Specify a single time
  /// - **Daily**: Daily
  /// - **Weekly**: Weekly
  /// - **Monthly**: Monthly.
  late final pulumi.Output<String> repeatType;
  /// The source address in the access control policy. Valid values:
  /// - When **SourceType** is set to 'net', Source is the Source CIDR address. For example: 10.2.4.0/24
  /// - When **SourceType** is set to 'group', Source is the name of the Source address book. For example: db_group.
  late final pulumi.Output<String> source;
  /// The source address type in the access control policy. Valid values:
  /// - **net**: the source network segment (CIDR address)
  /// - **group**: source address book
  late final pulumi.Output<String> sourceType;
  /// The start time of the policy validity period of the access control policy. Expresses using the second-level timestamp format. It must be a full or half hour and at least half an hour less than the end time.
  /// > **NOTE:**  When RepeatType is set to normal, StartTime is null. When the RepeatType is None, Daily, Weekly, or Monthly, StartTime must have a value and you need to set the start time.
  late final pulumi.Output<int?> startTime;

  /// Creates a new [NatFirewallControlPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatFirewallControlPolicy]. {@macro pulumi_cloudfirewall_nat_firewall_control_policy_nat_firewall_control_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatFirewallControlPolicy(
    String name, {
    NatFirewallControlPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/natFirewallControlPolicy:NatFirewallControlPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclAction = registerOutput<String>('aclAction');
    this.aclUuid = registerOutput<String>('aclUuid');
    this.applicationNameLists = registerOutput<List<String>>('applicationNameLists');
    this.createTime = registerOutput<int>('createTime');
    this.description = registerOutput<String>('description');
    this.destPort = registerOutput<String>('destPort');
    this.destPortGroup = registerOutput<String?>('destPortGroup');
    this.destPortType = registerOutput<String>('destPortType');
    this.destination = registerOutput<String>('destination');
    this.destinationType = registerOutput<String>('destinationType');
    this.direction = registerOutput<String>('direction');
    this.domainResolveType = registerOutput<int?>('domainResolveType');
    this.endTime = registerOutput<int?>('endTime');
    this.ipVersion = registerOutput<String?>('ipVersion');
    this.natGatewayId = registerOutput<String>('natGatewayId');
    this.newOrder = registerOutput<String>('newOrder');
    this.proto = registerOutput<String>('proto');
    this.release = registerOutput<String>('release');
    this.repeatDays = registerOutput<List<int>?>('repeatDays');
    this.repeatEndTime = registerOutput<String?>('repeatEndTime');
    this.repeatStartTime = registerOutput<String?>('repeatStartTime');
    this.repeatType = registerOutput<String>('repeatType');
    this.source = registerOutput<String>('source');
    this.sourceType = registerOutput<String>('sourceType');
    this.startTime = registerOutput<int?>('startTime');
  }
}
