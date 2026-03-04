import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_books_args.dart';
import 'get_address_books_result.dart';
import 'get_control_policies_args.dart';
import 'get_control_policies_result.dart';
import 'get_instance_members_args.dart';
import 'get_instance_members_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_nat_firewalls_args.dart';
import 'get_nat_firewalls_result.dart';
import 'get_tls_inspect_ca_certificates_args.dart';
import 'get_tls_inspect_ca_certificates_result.dart';
import 'get_vpc_cen_tr_firewalls_args.dart';
import 'get_vpc_cen_tr_firewalls_result.dart';
import 'get_vpc_firewall_cens_args.dart';
import 'get_vpc_firewall_cens_result.dart';
import 'get_vpc_firewall_control_policies_args.dart';
import 'get_vpc_firewall_control_policies_result.dart';
import 'get_vpc_firewalls_args.dart';
import 'get_vpc_firewalls_result.dart';

/// This data source provides the Cloud Firewall Address Books of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.178.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = new alicloud.cloudfirewall.AddressBook("default", {
///     groupName: name,
///     groupType: "ip",
///     description: "tf-description",
///     autoAddTagEcs: 0,
///     addressLists: [
///         "10.21.0.0/16",
///         "10.168.0.0/16",
///     ],
/// });
/// const ids = alicloud.cloudfirewall.getAddressBooksOutput({
///     ids: [_default.id],
/// });
/// export const cloudFirewallAddressBookId1 = ids.apply(ids => ids.books?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.cloudfirewall.AddressBook("default",
///     group_name=name,
///     group_type="ip",
///     description="tf-description",
///     auto_add_tag_ecs=0,
///     address_lists=[
///         "10.21.0.0/16",
///         "10.168.0.0/16",
///     ])
/// ids = alicloud.cloudfirewall.get_address_books_output(ids=[default.id])
/// pulumi.export("cloudFirewallAddressBookId1", ids.books[0].id)
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new AliCloud.CloudFirewall.AddressBook("default", new()
///     {
///         GroupName = name,
///         GroupType = "ip",
///         Description = "tf-description",
///         AutoAddTagEcs = 0,
///         AddressLists = new[]
///         {
///             "10.21.0.0/16",
///             "10.168.0.0/16",
///         },
///     });
///
///     var ids = AliCloud.CloudFirewall.GetAddressBooks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudFirewallAddressBookId1"] = ids.Apply(getAddressBooksResult => getAddressBooksResult.Books[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := cloudfirewall.NewAddressBook(ctx, "default", &cloudfirewall.AddressBookArgs{
/// 			GroupName:     pulumi.String(name),
/// 			GroupType:     pulumi.String("ip"),
/// 			Description:   pulumi.String("tf-description"),
/// 			AutoAddTagEcs: pulumi.Int(0),
/// 			AddressLists: pulumi.StringArray{
/// 				pulumi.String("10.21.0.0/16"),
/// 				pulumi.String("10.168.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := cloudfirewall.GetAddressBooksOutput(ctx, cloudfirewall.GetAddressBooksOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("cloudFirewallAddressBookId1", ids.ApplyT(func(ids cloudfirewall.GetAddressBooksResult) (*string, error) {
/// 			return &ids.Books[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.cloudfirewall.AddressBook;
/// import com.pulumi.alicloud.cloudfirewall.AddressBookArgs;
/// import com.pulumi.alicloud.cloudfirewall.CloudfirewallFunctions;
/// import com.pulumi.alicloud.cloudfirewall.inputs.GetAddressBooksArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         var default_ = new AddressBook("default", AddressBookArgs.builder()
///             .groupName(name)
///             .groupType("ip")
///             .description("tf-description")
///             .autoAddTagEcs(0)
///             .addressLists(
///                 "10.21.0.0/16",
///                 "10.168.0.0/16")
///             .build());
///
///         final var ids = CloudfirewallFunctions.getAddressBooks(GetAddressBooksArgs.builder()
///             .ids(default_.id())
///             .build());
///
///         ctx.export("cloudFirewallAddressBookId1", ids.applyValue(_ids -> _ids.books()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   default:
///     type: alicloud:cloudfirewall:AddressBook
///     properties:
///       groupName: ${name}
///       groupType: ip
///       description: tf-description
///       autoAddTagEcs: 0
///       addressLists:
///         - 10.21.0.0/16
///         - 10.168.0.0/16
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudfirewall:getAddressBooks
///       arguments:
///         ids:
///           - ${default.id}
/// outputs:
///   cloudFirewallAddressBookId1: ${ids.books[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfirewall_get_address_books_get_address_books_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressBooksResult> getAddressBooks(
  GetAddressBooksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudfirewall/getAddressBooks:getAddressBooks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressBooksResult.fromMap(result);
}

/// This data source provides the Cloud Firewall Control Policies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.129.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.cloudfirewall.getControlPolicies({
///     direction: "in",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cloudfirewall.get_control_policies(direction="in")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.CloudFirewall.GetControlPolicies.Invoke(new()
///     {
///         Direction = "in",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfirewall.GetControlPolicies(ctx, &cloudfirewall.GetControlPoliciesArgs{
/// 			Direction: "in",
/// 		}, nil)
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
/// import com.pulumi.alicloud.cloudfirewall.CloudfirewallFunctions;
/// import com.pulumi.alicloud.cloudfirewall.inputs.GetControlPoliciesArgs;
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
///         final var example = CloudfirewallFunctions.getControlPolicies(GetControlPoliciesArgs.builder()
///             .direction("in")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cloudfirewall:getControlPolicies
///       arguments:
///         direction: in
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfirewall_get_control_policies_get_control_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlPoliciesResult> getControlPolicies(
  GetControlPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudfirewall/getControlPolicies:getControlPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlPoliciesResult.fromMap(result);
}

/// This data source provides Cloud Firewall Instance Member available to the user.[What is Instance Member](https://help.aliyun.com/document_detail/261237.html)
///
/// &gt; **NOTE:** Available since v1.194.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cloudfirewall.getInstanceMembers({
///     ids: [defaultAlicloudCloudFirewallInstanceMember.id],
/// });
/// export const alicloudCloudFirewallInstanceMemberExampleId = _default.then(_default => _default.members?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cloudfirewall.get_instance_members(ids=[default_alicloud_cloud_firewall_instance_member["id"]])
/// pulumi.export("alicloudCloudFirewallInstanceMemberExampleId", default.members[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.CloudFirewall.GetInstanceMembers.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudCloudFirewallInstanceMember.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCloudFirewallInstanceMemberExampleId"] = @default.Apply(@default => @default.Apply(getInstanceMembersResult => getInstanceMembersResult.Members[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := cloudfirewall.GetInstanceMembers(ctx, &cloudfirewall.GetInstanceMembersArgs{
/// Ids: interface{}{
/// defaultAlicloudCloudFirewallInstanceMember.Id,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudCloudFirewallInstanceMemberExampleId", _default.Members[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cloudfirewall.CloudfirewallFunctions;
/// import com.pulumi.alicloud.cloudfirewall.inputs.GetInstanceMembersArgs;
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
///         final var default = CloudfirewallFunctions.getInstanceMembers(GetInstanceMembersArgs.builder()
///             .ids(defaultAlicloudCloudFirewallInstanceMember.id())
///             .build());
///
///         ctx.export("alicloudCloudFirewallInstanceMemberExampleId", default_.members()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudfirewall:getInstanceMembers
///       arguments:
///         ids:
///           - ${defaultAlicloudCloudFirewallInstanceMember.id}
/// outputs:
///   alicloudCloudFirewallInstanceMemberExampleId: ${default.members[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfirewall_get_instance_members_get_instance_members_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceMembersResult> getInstanceMembers(
  GetInstanceMembersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudfirewall/getInstanceMembers:getInstanceMembers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceMembersResult.fromMap(result);
}

/// This data source provides the Cloud Firewall Instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.139.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudfirewall.getInstances({});
/// export const cloudFirewallInstanceId1 = ids.then(ids => ids.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudfirewall.get_instances()
/// pulumi.export("cloudFirewallInstanceId1", ids.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudFirewall.GetInstances.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudFirewallInstanceId1"] = ids.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudfirewall.GetInstances(ctx, &cloudfirewall.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudFirewallInstanceId1", ids.Instances[0].Id)
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
/// import com.pulumi.alicloud.cloudfirewall.CloudfirewallFunctions;
/// import com.pulumi.alicloud.cloudfirewall.inputs.GetInstancesArgs;
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
///         final var ids = CloudfirewallFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         ctx.export("cloudFirewallInstanceId1", ids.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudfirewall:getInstances
///       arguments: {}
/// outputs:
///   cloudFirewallInstanceId1: ${ids.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfirewall_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudfirewall/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides Cloud Firewall Nat Firewall available to the user.[What is Nat Firewall](https://next.api.alibabacloud.com/document/Cloudfw/2017-12-07/CreateSecurityProxy)
///
/// &gt; **NOTE:** Available since v1.243.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultikZ0gD = new alicloud.vpc.Network("defaultikZ0gD", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const defaultp4O7qi = new alicloud.vpc.Switch("defaultp4O7qi", {
///     vpcId: defaultikZ0gD.id,
///     cidrBlock: "172.16.6.0/24",
///     vswitchName: name,
///     zoneId: "cn-shenzhen-e",
/// });
/// const default2iRZpC = new alicloud.vpc.NatGateway("default2iRZpC", {
///     description: name,
///     natGatewayName: name,
///     eipBindMode: "MULTI_BINDED",
///     natType: "Enhanced",
///     vpcId: defaultikZ0gD.id,
///     paymentType: "PayAsYouGo",
///     networkType: "internet",
/// });
/// const defaultyiRwgs = new alicloud.ecs.EipAddress("defaultyiRwgs", {});
/// const defaults2MTuO = new alicloud.ecs.EipAssociation("defaults2MTuO", {
///     instanceId: default2iRZpC.id,
///     allocationId: defaultyiRwgs.allocationId,
///     mode: "NAT",
///     instanceType: "NAT",
///     vpcId: default2iRZpC.vpcId,
/// });
/// const defaultAKE43g = new alicloud.vpc.SnatEntry("defaultAKE43g", {
///     snatIp: defaultyiRwgs.ipAddress,
///     snatTableId: default2iRZpC.snatTableIds[0],
///     eipAffinity: 1,
///     sourceVswitchId: defaultp4O7qi.id,
/// });
/// const defaultNatFirewall = new alicloud.cloudfirewall.NatFirewall("default", {
///     regionNo: "cn-shenzhen",
///     vswitchAuto: "true",
///     strictMode: 0,
///     vpcId: defaultikZ0gD.id,
///     proxyName: name,
///     lang: "zh",
///     natGatewayId: default2iRZpC.id,
///     natRouteEntryLists: [{
///         nexthopId: default2iRZpC.id,
///         destinationCidr: "0.0.0.0/0",
///         nexthopType: "NatGateway",
///         routeTableId: defaultp4O7qi.routeTableId,
///     }],
///     firewallSwitch: "close",
///     vswitchCidr: "172.16.5.0/24",
///     status: "closed",
///     vswitchId: defaultp4O7qi.id,
/// });
/// const _default = alicloud.cloudfirewall.getNatFirewallsOutput({
///     ids: [defaultNatFirewall.id],
///     lang: "zh",
///     natGatewayId: default2iRZpC.id,
///     proxyName: name,
///     regionNo: "cn-shenzhen",
///     status: "closed",
///     vpcId: defaultikZ0gD.id,
/// });
/// export const alicloudCloudFirewallNatFirewallExampleId = _default.apply(_default => _default.firewalls?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// defaultik_z0g_d = alicloud.vpc.Network("defaultikZ0gD",
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// defaultp4_o7qi = alicloud.vpc.Switch("defaultp4O7qi",
///     vpc_id=defaultik_z0g_d.id,
///     cidr_block="172.16.6.0/24",
///     vswitch_name=name,
///     zone_id="cn-shenzhen-e")
/// default2i_r_zp_c = alicloud.vpc.NatGateway("default2iRZpC",
///     description=name,
///     nat_gateway_name=name,
///     eip_bind_mode="MULTI_BINDED",
///     nat_type="Enhanced",
///     vpc_id=defaultik_z0g_d.id,
///     payment_type="PayAsYouGo",
///     network_type="internet")
/// defaultyi_rwgs = alicloud.ecs.EipAddress("defaultyiRwgs")
/// defaults2_m_tu_o = alicloud.ecs.EipAssociation("defaults2MTuO",
///     instance_id=default2i_r_zp_c.id,
///     allocation_id=defaultyi_rwgs.allocation_id,
///     mode="NAT",
///     instance_type="NAT",
///     vpc_id=default2i_r_zp_c.vpc_id)
/// default_ake43g = alicloud.vpc.SnatEntry("defaultAKE43g",
///     snat_ip=defaultyi_rwgs.ip_address,
///     snat_table_id=default2i_r_zp_c.snat_table_ids[0],
///     eip_affinity=1,
///     source_vswitch_id=defaultp4_o7qi.id)
/// default_nat_firewall = alicloud.cloudfirewall.NatFirewall("default",
///     region_no="cn-shenzhen",
///     vswitch_auto="true",
///     strict_mode=0,
///     vpc_id=defaultik_z0g_d.id,
///     proxy_name=name,
///     lang="zh",
///     nat_gateway_id=default2i_r_zp_c.id,
///     nat_route_entry_lists=[{
///         "nexthop_id": default2i_r_zp_c.id,
///         "destination_cidr": "0.0.0.0/0",
///         "nexthop_type": "NatGateway",
///         "route_table_id": defaultp4_o7qi.route_table_id,
///     }],
///     firewall_switch="close",
///     vswitch_cidr="172.16.5.0/24",
///     status="closed",
///     vswitch_id=defaultp4_o7qi.id)
/// default = alicloud.cloudfirewall.get_nat_firewalls_output(ids=[default_nat_firewall.id],
///     lang="zh",
///     nat_gateway_id=default2i_r_zp_c.id,
///     proxy_name=name,
///     region_no="cn-shenzhen",
///     status="closed",
///     vpc_id=defaultik_z0g_d.id)
/// pulumi.export("alicloudCloudFirewallNatFirewallExampleId", default.firewalls[0].id)
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
///     var defaultikZ0gD = new AliCloud.Vpc.Network("defaultikZ0gD", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var defaultp4O7qi = new AliCloud.Vpc.Switch("defaultp4O7qi", new()
///     {
///         VpcId = defaultikZ0gD.Id,
///         CidrBlock = "172.16.6.0/24",
///         VswitchName = name,
///         ZoneId = "cn-shenzhen-e",
///     });
///
///     var default2iRZpC = new AliCloud.Vpc.NatGateway("default2iRZpC", new()
///     {
///         Description = name,
///         NatGatewayName = name,
///         EipBindMode = "MULTI_BINDED",
///         NatType = "Enhanced",
///         VpcId = defaultikZ0gD.Id,
///         PaymentType = "PayAsYouGo",
///         NetworkType = "internet",
///     });
///
///     var defaultyiRwgs = new AliCloud.Ecs.EipAddress("defaultyiRwgs");
///
///     var defaults2MTuO = new AliCloud.Ecs.EipAssociation("defaults2MTuO", new()
///     {
///         InstanceId = default2iRZpC.Id,
///         AllocationId = defaultyiRwgs.AllocationId,
///         Mode = "NAT",
///         InstanceType = "NAT",
///         VpcId = default2iRZpC.VpcId,
///     });
///
///     var defaultAKE43g = new AliCloud.Vpc.SnatEntry("defaultAKE43g", new()
///     {
///         SnatIp = defaultyiRwgs.IpAddress,
///         SnatTableId = default2iRZpC.SnatTableIds.Apply(snatTableIds => snatTableIds[0]),
///         EipAffinity = 1,
///         SourceVswitchId = defaultp4O7qi.Id,
///     });
///
///     var defaultNatFirewall = new AliCloud.CloudFirewall.NatFirewall("default", new()
///     {
///         RegionNo = "cn-shenzhen",
///         VswitchAuto = "true",
///         StrictMode = 0,
///         VpcId = defaultikZ0gD.Id,
///         ProxyName = name,
///         Lang = "zh",
///         NatGatewayId = default2iRZpC.Id,
///         NatRouteEntryLists = new[]
///         {
///             new AliCloud.CloudFirewall.Inputs.NatFirewallNatRouteEntryListArgs
///             {
///                 NexthopId = default2iRZpC.Id,
///                 DestinationCidr = "0.0.0.0/0",
///                 NexthopType = "NatGateway",
///                 RouteTableId = defaultp4O7qi.RouteTableId,
///             },
///         },
///         FirewallSwitch = "close",
///         VswitchCidr = "172.16.5.0/24",
///         Status = "closed",
///         VswitchId = defaultp4O7qi.Id,
///     });
///
///     var @default = AliCloud.CloudFirewall.GetNatFirewalls.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultNatFirewall.Id,
///         },
///         Lang = "zh",
///         NatGatewayId = default2iRZpC.Id,
///         ProxyName = name,
///         RegionNo = "cn-shenzhen",
///         Status = "closed",
///         VpcId = defaultikZ0gD.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCloudFirewallNatFirewallExampleId"] = @default.Apply(@default => @default.Apply(getNatFirewallsResult => getNatFirewallsResult.Firewalls[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultikZ0gD, err := vpc.NewNetwork(ctx, "defaultikZ0gD", &vpc.NetworkArgs{
/// CidrBlock: pulumi.String("172.16.0.0/12"),
/// VpcName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// defaultp4O7qi, err := vpc.NewSwitch(ctx, "defaultp4O7qi", &vpc.SwitchArgs{
/// VpcId: defaultikZ0gD.ID(),
/// CidrBlock: pulumi.String("172.16.6.0/24"),
/// VswitchName: pulumi.String(name),
/// ZoneId: pulumi.String("cn-shenzhen-e"),
/// })
/// if err != nil {
/// return err
/// }
/// default2iRZpC, err := vpc.NewNatGateway(ctx, "default2iRZpC", &vpc.NatGatewayArgs{
/// Description: pulumi.String(name),
/// NatGatewayName: pulumi.String(name),
/// EipBindMode: pulumi.String("MULTI_BINDED"),
/// NatType: pulumi.String("Enhanced"),
/// VpcId: defaultikZ0gD.ID(),
/// PaymentType: pulumi.String("PayAsYouGo"),
/// NetworkType: pulumi.String("internet"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultyiRwgs, err := ecs.NewEipAddress(ctx, "defaultyiRwgs", nil)
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewEipAssociation(ctx, "defaults2MTuO", &ecs.EipAssociationArgs{
/// InstanceId: default2iRZpC.ID(),
/// AllocationId: defaultyiRwgs.AllocationId,
/// Mode: pulumi.String("NAT"),
/// InstanceType: pulumi.String("NAT"),
/// VpcId: default2iRZpC.VpcId,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vpc.NewSnatEntry(ctx, "defaultAKE43g", &vpc.SnatEntryArgs{
/// SnatIp: defaultyiRwgs.IpAddress,
/// SnatTableId: pulumi.String(default2iRZpC.SnatTableIds.ApplyT(func(snatTableIds string) (interface{}, error) {
/// return snatTableIds[0], nil
/// }).(pulumi.Interface{}Output)),
/// EipAffinity: pulumi.Int(1),
/// SourceVswitchId: defaultp4O7qi.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNatFirewall, err := cloudfirewall.NewNatFirewall(ctx, "default", &cloudfirewall.NatFirewallArgs{
/// RegionNo: pulumi.String("cn-shenzhen"),
/// VswitchAuto: pulumi.String("true"),
/// StrictMode: pulumi.Int(0),
/// VpcId: defaultikZ0gD.ID(),
/// ProxyName: pulumi.String(name),
/// Lang: pulumi.String("zh"),
/// NatGatewayId: default2iRZpC.ID(),
/// NatRouteEntryLists: cloudfirewall.NatFirewallNatRouteEntryListArray{
/// &cloudfirewall.NatFirewallNatRouteEntryListArgs{
/// NexthopId: default2iRZpC.ID(),
/// DestinationCidr: pulumi.String("0.0.0.0/0"),
/// NexthopType: pulumi.String("NatGateway"),
/// RouteTableId: defaultp4O7qi.RouteTableId,
/// },
/// },
/// FirewallSwitch: pulumi.String("close"),
/// VswitchCidr: pulumi.String("172.16.5.0/24"),
/// Status: pulumi.String("closed"),
/// VswitchId: defaultp4O7qi.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _default := cloudfirewall.GetNatFirewallsOutput(ctx, cloudfirewall.GetNatFirewallsOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultNatFirewall.ID(),
/// },
/// Lang: pulumi.String("zh"),
/// NatGatewayId: default2iRZpC.ID(),
/// ProxyName: pulumi.String(name),
/// RegionNo: pulumi.String("cn-shenzhen"),
/// Status: pulumi.String("closed"),
/// VpcId: defaultikZ0gD.ID(),
/// }, nil);
/// ctx.Export("alicloudCloudFirewallNatFirewallExampleId", _default.ApplyT(func(_default cloudfirewall.GetNatFirewallsResult) (*string, error) {
/// return &default.Firewalls[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
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
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.NatGateway;
/// import com.pulumi.alicloud.vpc.NatGatewayArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAssociation;
/// import com.pulumi.alicloud.ecs.EipAssociationArgs;
/// import com.pulumi.alicloud.vpc.SnatEntry;
/// import com.pulumi.alicloud.vpc.SnatEntryArgs;
/// import com.pulumi.alicloud.cloudfirewall.NatFirewall;
/// import com.pulumi.alicloud.cloudfirewall.NatFirewallArgs;
/// import com.pulumi.alicloud.cloudfirewall.inputs.NatFirewallNatRouteEntryListArgs;
/// import com.pulumi.alicloud.cloudfirewall.CloudfirewallFunctions;
/// import com.pulumi.alicloud.cloudfirewall.inputs.GetNatFirewallsArgs;
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
///         var defaultikZ0gD = new Network("defaultikZ0gD", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         var defaultp4O7qi = new Switch("defaultp4O7qi", SwitchArgs.builder()
///             .vpcId(defaultikZ0gD.id())
///             .cidrBlock("172.16.6.0/24")
///             .vswitchName(name)
///             .zoneId("cn-shenzhen-e")
///             .build());
///
///         var default2iRZpC = new NatGateway("default2iRZpC", NatGatewayArgs.builder()
///             .description(name)
///             .natGatewayName(name)
///             .eipBindMode("MULTI_BINDED")
///             .natType("Enhanced")
///             .vpcId(defaultikZ0gD.id())
///             .paymentType("PayAsYouGo")
///             .networkType("internet")
///             .build());
///
///         var defaultyiRwgs = new EipAddress("defaultyiRwgs");
///
///         var defaults2MTuO = new EipAssociation("defaults2MTuO", EipAssociationArgs.builder()
///             .instanceId(default2iRZpC.id())
///             .allocationId(defaultyiRwgs.allocationId())
///             .mode("NAT")
///             .instanceType("NAT")
///             .vpcId(default2iRZpC.vpcId())
///             .build());
///
///         var defaultAKE43g = new SnatEntry("defaultAKE43g", SnatEntryArgs.builder()
///             .snatIp(defaultyiRwgs.ipAddress())
///             .snatTableId(default2iRZpC.snatTableIds().applyValue(_snatTableIds -> _snatTableIds[0]))
///             .eipAffinity(1)
///             .sourceVswitchId(defaultp4O7qi.id())
///             .build());
///
///         var defaultNatFirewall = new NatFirewall("defaultNatFirewall", NatFirewallArgs.builder()
///             .regionNo("cn-shenzhen")
///             .vswitchAuto("true")
///             .strictMode(0)
///             .vpcId(defaultikZ0gD.id())
///             .proxyName(name)
///             .lang("zh")
///             .natGatewayId(default2iRZpC.id())
///             .natRouteEntryLists(NatFirewallNatRouteEntryListArgs.builder()
///                 .nexthopId(default2iRZpC.id())
///                 .destinationCidr("0.0.0.0/0")
///                 .nexthopType("NatGateway")
///                 .routeTableId(defaultp4O7qi.routeTableId())
///                 .build())
///             .firewallSwitch("close")
///             .vswitchCidr("172.16.5.0/24")
///             .status("closed")
///             .vswitchId(defaultp4O7qi.id())
///             .build());
///
///         final var default = CloudfirewallFunctions.getNatFirewalls(GetNatFirewallsArgs.builder()
///             .ids(defaultNatFirewall.id())
///             .lang("zh")
///             .natGatewayId(default2iRZpC.id())
///             .proxyName(name)
///             .regionNo("cn-shenzhen")
///             .status("closed")
///             .vpcId(defaultikZ0gD.id())
///             .build());
///
///         ctx.export("alicloudCloudFirewallNatFirewallExampleId", default_.applyValue(_default_ -> _default_.firewalls()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultikZ0gD:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   defaultp4O7qi:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultikZ0gD.id}
///       cidrBlock: 172.16.6.0/24
///       vswitchName: ${name}
///       zoneId: cn-shenzhen-e
///   default2iRZpC:
///     type: alicloud:vpc:NatGateway
///     properties:
///       description: ${name}
///       natGatewayName: ${name}
///       eipBindMode: MULTI_BINDED
///       natType: Enhanced
///       vpcId: ${defaultikZ0gD.id}
///       paymentType: PayAsYouGo
///       networkType: internet
///   defaultyiRwgs:
///     type: alicloud:ecs:EipAddress
///   defaults2MTuO:
///     type: alicloud:ecs:EipAssociation
///     properties:
///       instanceId: ${default2iRZpC.id}
///       allocationId: ${defaultyiRwgs.allocationId}
///       mode: NAT
///       instanceType: NAT
///       vpcId: ${default2iRZpC.vpcId}
///   defaultAKE43g:
///     type: alicloud:vpc:SnatEntry
///     properties:
///       snatIp: ${defaultyiRwgs.ipAddress}
///       snatTableId: ${default2iRZpC.snatTableIds[0]}
///       eipAffinity: '1'
///       sourceVswitchId: ${defaultp4O7qi.id}
///   defaultNatFirewall:
///     type: alicloud:cloudfirewall:NatFirewall
///     name: default
///     properties:
///       regionNo: cn-shenzhen
///       vswitchAuto: 'true'
///       strictMode: '0'
///       vpcId: ${defaultikZ0gD.id}
///       proxyName: ${name}
///       lang: zh
///       natGatewayId: ${default2iRZpC.id}
///       natRouteEntryLists:
///         - nexthopId: ${default2iRZpC.id}
///           destinationCidr: 0.0.0.0/0
///           nexthopType: NatGateway
///           routeTableId: ${defaultp4O7qi.routeTableId}
///       firewallSwitch: close
///       vswitchCidr: 172.16.5.0/24
///       status: closed
///       vswitchId: ${defaultp4O7qi.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudfirewall:getNatFirewalls
///       arguments:
///         ids:
///           - ${defaultNatFirewall.id}
///         lang: zh
///         natGatewayId: ${default2iRZpC.id}
///         proxyName: ${name}
///         regionNo: cn-shenzhen
///         status: closed
///         vpcId: ${defaultikZ0gD.id}
/// outputs:
///   alicloudCloudFirewallNatFirewallExampleId: ${default.firewalls[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfirewall_get_nat_firewalls_get_nat_firewalls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatFirewallsResult> getNatFirewalls(
  GetNatFirewallsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudfirewall/getNatFirewalls:getNatFirewalls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatFirewallsResult.fromMap(result);
}

/// This data source provides Cloud Firewall Tls Inspect Ca Certificate available to the user.[What is Tls Inspect Ca Certificate](https://next.api.alibabacloud.com/document/Cloudfw/2017-12-07/GetTlsInspectCertificateDownloadUrl)
///
/// &gt; **NOTE:** Available since v1.262.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultCloudFirewallTlsInspectCaCertificate = new alicloud.index.CloudFirewallTlsInspectCaCertificate("default", {});
/// const _default = alicloud.cloudfirewall.getTlsInspectCaCertificates({
///     ids: [defaultCloudFirewallTlsInspectCaCertificate.id],
/// });
/// export const alicloudCloudFirewallTlsInspectCaCertificateExampleId = _default.then(_default => _default.certificates?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_cloud_firewall_tls_inspect_ca_certificate = alicloud.index.CloudFirewallTlsInspectCaCertificate("default")
/// default = alicloud.cloudfirewall.get_tls_inspect_ca_certificates(ids=[default_cloud_firewall_tls_inspect_ca_certificate["id"]])
/// pulumi.export("alicloudCloudFirewallTlsInspectCaCertificateExampleId", default.certificates[0].id)
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
///     var defaultCloudFirewallTlsInspectCaCertificate = new AliCloud.Index.CloudFirewallTlsInspectCaCertificate("default");
///
///     var @default = AliCloud.CloudFirewall.GetTlsInspectCaCertificates.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultCloudFirewallTlsInspectCaCertificate.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCloudFirewallTlsInspectCaCertificateExampleId"] = @default.Apply(@default => @default.Apply(getTlsInspectCaCertificatesResult => getTlsInspectCaCertificatesResult.Certificates[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultCloudFirewallTlsInspectCaCertificate, err := alicloud.NewCloudFirewallTlsInspectCaCertificate(ctx, "default", nil)
/// if err != nil {
/// return err
/// }
/// _default, err := cloudfirewall.GetTlsInspectCaCertificates(ctx, &cloudfirewall.GetTlsInspectCaCertificatesArgs{
/// Ids: interface{}{
/// defaultCloudFirewallTlsInspectCaCertificate.Id,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudCloudFirewallTlsInspectCaCertificateExampleId", _default.Certificates[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.CloudFirewallTlsInspectCaCertificate;
/// import com.pulumi.alicloud.cloudfirewall.CloudfirewallFunctions;
/// import com.pulumi.alicloud.cloudfirewall.inputs.GetTlsInspectCaCertificatesArgs;
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
///         var defaultCloudFirewallTlsInspectCaCertificate = new CloudFirewallTlsInspectCaCertificate("defaultCloudFirewallTlsInspectCaCertificate");
///
///         final var default = CloudfirewallFunctions.getTlsInspectCaCertificates(GetTlsInspectCaCertificatesArgs.builder()
///             .ids(defaultCloudFirewallTlsInspectCaCertificate.id())
///             .build());
///
///         ctx.export("alicloudCloudFirewallTlsInspectCaCertificateExampleId", default_.certificates()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultCloudFirewallTlsInspectCaCertificate:
///     type: alicloud:CloudFirewallTlsInspectCaCertificate
///     name: default
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudfirewall:getTlsInspectCaCertificates
///       arguments:
///         ids:
///           - ${defaultCloudFirewallTlsInspectCaCertificate.id}
/// outputs:
///   alicloudCloudFirewallTlsInspectCaCertificateExampleId: ${default.certificates[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfirewall_get_tls_inspect_ca_certificates_get_tls_inspect_ca_certificates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTlsInspectCaCertificatesResult> getTlsInspectCaCertificates(
  GetTlsInspectCaCertificatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudfirewall/getTlsInspectCaCertificates:getTlsInspectCaCertificates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTlsInspectCaCertificatesResult.fromMap(result);
}

/// This data source provides Cloud Firewall Vpc Cen Tr Firewall available to the user.[What is Vpc Cen Tr Firewall](https://next.api.alibabacloud.com/document/Cloudfw/2017-12-07/CreateTrFirewallV2)
///
/// &gt; **NOTE:** Available since v1.243.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
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
/// const cen = new alicloud.cen.Instance("cen", {
///     description: "terraform example",
///     cenInstanceName: "Cen_Terraform_example01",
/// });
/// const tr = new alicloud.cen.TransitRouter("tr", {
///     supportMulticast: false,
///     transitRouterName: "CEN_TR_Terraform",
///     transitRouterDescription: "tr-created-by-terraform",
///     cenId: cen.id,
/// });
/// const vpc1 = new alicloud.vpc.Network("vpc1", {
///     description: "created by terraform",
///     cidrBlock: "192.168.1.0/24",
///     vpcName: "vpc1-Terraform",
/// });
/// const vpc1vsw1 = new alicloud.vpc.Switch("vpc1vsw1", {
///     cidrBlock: "192.168.1.0/25",
///     vswitchName: "vpc1-vsw1",
///     vpcId: vpc1.id,
///     zoneId: zone1,
/// });
/// const vpc1vsw2 = new alicloud.vpc.Switch("vpc1vsw2", {
///     vpcId: vpc1.id,
///     cidrBlock: "192.168.1.128/26",
///     vswitchName: "vpc1-vsw2",
///     zoneId: zone2,
/// });
/// const vpc2 = new alicloud.vpc.Network("vpc2", {
///     description: "created by terraform",
///     cidrBlock: "192.168.2.0/24",
///     vpcName: "vpc2-Terraform",
/// });
/// const vpc2vsw1 = new alicloud.vpc.Switch("vpc2vsw1", {
///     cidrBlock: "192.168.2.0/25",
///     vswitchName: "vpc2-vsw1",
///     vpcId: vpc2.id,
///     zoneId: zone1,
/// });
/// const vpc2vsw2 = new alicloud.vpc.Switch("vpc2vsw2", {
///     cidrBlock: "192.168.2.128/26",
///     vswitchName: "vpc2-vsw2",
///     vpcId: vpc2.id,
///     zoneId: zone2,
/// });
/// const tr_vpc1 = new alicloud.cen.TransitRouterVpcAttachment("tr-vpc1", {
///     autoPublishRouteEnabled: false,
///     zoneMappings: [
///         {
///             vswitchId: vpc1vsw1.id,
///             zoneId: vpc1vsw1.zoneId,
///         },
///         {
///             zoneId: vpc1vsw2.zoneId,
///             vswitchId: vpc1vsw2.id,
///         },
///     ],
///     vpcId: vpc1.id,
///     cenId: cen.id,
/// });
/// const tr_vpc2 = new alicloud.cen.TransitRouterVpcAttachment("tr-vpc2", {
///     autoPublishRouteEnabled: false,
///     vpcId: vpc2.id,
///     zoneMappings: [
///         {
///             vswitchId: vpc2vsw1.id,
///             zoneId: vpc2vsw1.zoneId,
///         },
///         {
///             vswitchId: vpc2vsw2.id,
///             zoneId: vpc2vsw2.zoneId,
///         },
///     ],
///     cenId: cen.id,
/// });
/// const defaultVpcCenTrFirewall = new alicloud.cloudfirewall.VpcCenTrFirewall("default", {
///     firewallDescription: "VpcCenTrFirewall created by terraform",
///     regionNo: region,
///     routeMode: "managed",
///     cenId: cen.id,
///     firewallVpcCidr: firewallVpcCidr,
///     transitRouterId: tr.transitRouterId,
///     trAttachmentMasterCidr: trAttachmentMasterCidr,
///     firewallName: firewallName,
///     firewallSubnetCidr: firewallSubnetCidr,
///     trAttachmentSlaveCidr: trAttachmentSlaveCidr,
/// });
/// const _default = alicloud.cloudfirewall.getVpcCenTrFirewallsOutput({
///     ids: [defaultVpcCenTrFirewall.id],
///     cenId: cen.id,
///     firewallName: firewallName,
///     regionNo: region,
///     routeMode: "managed",
///     transitRouterId: tr.transitRouterId,
/// });
/// export const alicloudCloudFirewallVpcCenTrFirewallExampleId = _default.apply(_default => _default.firewalls?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
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
/// cen = alicloud.cen.Instance("cen",
///     description="terraform example",
///     cen_instance_name="Cen_Terraform_example01")
/// tr = alicloud.cen.TransitRouter("tr",
///     support_multicast=False,
///     transit_router_name="CEN_TR_Terraform",
///     transit_router_description="tr-created-by-terraform",
///     cen_id=cen.id)
/// vpc1 = alicloud.vpc.Network("vpc1",
///     description="created by terraform",
///     cidr_block="192.168.1.0/24",
///     vpc_name="vpc1-Terraform")
/// vpc1vsw1 = alicloud.vpc.Switch("vpc1vsw1",
///     cidr_block="192.168.1.0/25",
///     vswitch_name="vpc1-vsw1",
///     vpc_id=vpc1.id,
///     zone_id=zone1)
/// vpc1vsw2 = alicloud.vpc.Switch("vpc1vsw2",
///     vpc_id=vpc1.id,
///     cidr_block="192.168.1.128/26",
///     vswitch_name="vpc1-vsw2",
///     zone_id=zone2)
/// vpc2 = alicloud.vpc.Network("vpc2",
///     description="created by terraform",
///     cidr_block="192.168.2.0/24",
///     vpc_name="vpc2-Terraform")
/// vpc2vsw1 = alicloud.vpc.Switch("vpc2vsw1",
///     cidr_block="192.168.2.0/25",
///     vswitch_name="vpc2-vsw1",
///     vpc_id=vpc2.id,
///     zone_id=zone1)
/// vpc2vsw2 = alicloud.vpc.Switch("vpc2vsw2",
///     cidr_block="192.168.2.128/26",
///     vswitch_name="vpc2-vsw2",
///     vpc_id=vpc2.id,
///     zone_id=zone2)
/// tr_vpc1 = alicloud.cen.TransitRouterVpcAttachment("tr-vpc1",
///     auto_publish_route_enabled=False,
///     zone_mappings=[
///         {
///             "vswitch_id": vpc1vsw1.id,
///             "zone_id": vpc1vsw1.zone_id,
///         },
///         {
///             "zone_id": vpc1vsw2.zone_id,
///             "vswitch_id": vpc1vsw2.id,
///         },
///     ],
///     vpc_id=vpc1.id,
///     cen_id=cen.id)
/// tr_vpc2 = alicloud.cen.TransitRouterVpcAttachment("tr-vpc2",
///     auto_publish_route_enabled=False,
///     vpc_id=vpc2.id,
///     zone_mappings=[
///         {
///             "vswitch_id": vpc2vsw1.id,
///             "zone_id": vpc2vsw1.zone_id,
///         },
///         {
///             "vswitch_id": vpc2vsw2.id,
///             "zone_id": vpc2vsw2.zone_id,
///         },
///     ],
///     cen_id=cen.id)
/// default_vpc_cen_tr_firewall = alicloud.cloudfirewall.VpcCenTrFirewall("default",
///     firewall_description="VpcCenTrFirewall created by terraform",
///     region_no=region,
///     route_mode="managed",
///     cen_id=cen.id,
///     firewall_vpc_cidr=firewall_vpc_cidr,
///     transit_router_id=tr.transit_router_id,
///     tr_attachment_master_cidr=tr_attachment_master_cidr,
///     firewall_name=firewall_name,
///     firewall_subnet_cidr=firewall_subnet_cidr,
///     tr_attachment_slave_cidr=tr_attachment_slave_cidr)
/// default = alicloud.cloudfirewall.get_vpc_cen_tr_firewalls_output(ids=[default_vpc_cen_tr_firewall.id],
///     cen_id=cen.id,
///     firewall_name=firewall_name,
///     region_no=region,
///     route_mode="managed",
///     transit_router_id=tr.transit_router_id)
/// pulumi.export("alicloudCloudFirewallVpcCenTrFirewallExampleId", default.firewalls[0].id)
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
///     var cen = new AliCloud.Cen.Instance("cen", new()
///     {
///         Description = "terraform example",
///         CenInstanceName = "Cen_Terraform_example01",
///     });
///
///     var tr = new AliCloud.Cen.TransitRouter("tr", new()
///     {
///         SupportMulticast = false,
///         TransitRouterName = "CEN_TR_Terraform",
///         TransitRouterDescription = "tr-created-by-terraform",
///         CenId = cen.Id,
///     });
///
///     var vpc1 = new AliCloud.Vpc.Network("vpc1", new()
///     {
///         Description = "created by terraform",
///         CidrBlock = "192.168.1.0/24",
///         VpcName = "vpc1-Terraform",
///     });
///
///     var vpc1vsw1 = new AliCloud.Vpc.Switch("vpc1vsw1", new()
///     {
///         CidrBlock = "192.168.1.0/25",
///         VswitchName = "vpc1-vsw1",
///         VpcId = vpc1.Id,
///         ZoneId = zone1,
///     });
///
///     var vpc1vsw2 = new AliCloud.Vpc.Switch("vpc1vsw2", new()
///     {
///         VpcId = vpc1.Id,
///         CidrBlock = "192.168.1.128/26",
///         VswitchName = "vpc1-vsw2",
///         ZoneId = zone2,
///     });
///
///     var vpc2 = new AliCloud.Vpc.Network("vpc2", new()
///     {
///         Description = "created by terraform",
///         CidrBlock = "192.168.2.0/24",
///         VpcName = "vpc2-Terraform",
///     });
///
///     var vpc2vsw1 = new AliCloud.Vpc.Switch("vpc2vsw1", new()
///     {
///         CidrBlock = "192.168.2.0/25",
///         VswitchName = "vpc2-vsw1",
///         VpcId = vpc2.Id,
///         ZoneId = zone1,
///     });
///
///     var vpc2vsw2 = new AliCloud.Vpc.Switch("vpc2vsw2", new()
///     {
///         CidrBlock = "192.168.2.128/26",
///         VswitchName = "vpc2-vsw2",
///         VpcId = vpc2.Id,
///         ZoneId = zone2,
///     });
///
///     var tr_vpc1 = new AliCloud.Cen.TransitRouterVpcAttachment("tr-vpc1", new()
///     {
///         AutoPublishRouteEnabled = false,
///         ZoneMappings = new[]
///         {
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 VswitchId = vpc1vsw1.Id,
///                 ZoneId = vpc1vsw1.ZoneId,
///             },
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 ZoneId = vpc1vsw2.ZoneId,
///                 VswitchId = vpc1vsw2.Id,
///             },
///         },
///         VpcId = vpc1.Id,
///         CenId = cen.Id,
///     });
///
///     var tr_vpc2 = new AliCloud.Cen.TransitRouterVpcAttachment("tr-vpc2", new()
///     {
///         AutoPublishRouteEnabled = false,
///         VpcId = vpc2.Id,
///         ZoneMappings = new[]
///         {
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 VswitchId = vpc2vsw1.Id,
///                 ZoneId = vpc2vsw1.ZoneId,
///             },
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 VswitchId = vpc2vsw2.Id,
///                 ZoneId = vpc2vsw2.ZoneId,
///             },
///         },
///         CenId = cen.Id,
///     });
///
///     var defaultVpcCenTrFirewall = new AliCloud.CloudFirewall.VpcCenTrFirewall("default", new()
///     {
///         FirewallDescription = "VpcCenTrFirewall created by terraform",
///         RegionNo = region,
///         RouteMode = "managed",
///         CenId = cen.Id,
///         FirewallVpcCidr = firewallVpcCidr,
///         TransitRouterId = tr.TransitRouterId,
///         TrAttachmentMasterCidr = trAttachmentMasterCidr,
///         FirewallName = firewallName,
///         FirewallSubnetCidr = firewallSubnetCidr,
///         TrAttachmentSlaveCidr = trAttachmentSlaveCidr,
///     });
///
///     var @default = AliCloud.CloudFirewall.GetVpcCenTrFirewalls.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultVpcCenTrFirewall.Id,
///         },
///         CenId = cen.Id,
///         FirewallName = firewallName,
///         RegionNo = region,
///         RouteMode = "managed",
///         TransitRouterId = tr.TransitRouterId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCloudFirewallVpcCenTrFirewallExampleId"] = @default.Apply(@default => @default.Apply(getVpcCenTrFirewallsResult => getVpcCenTrFirewallsResult.Firewalls[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// description := "Created by Terraform";
/// if param := cfg.Get("description"); param != ""{
/// description = param
/// }
/// firewallName := "tf-example";
/// if param := cfg.Get("firewallName"); param != ""{
/// firewallName = param
/// }
/// trAttachmentMasterCidr := "192.168.3.192/26";
/// if param := cfg.Get("trAttachmentMasterCidr"); param != ""{
/// trAttachmentMasterCidr = param
/// }
/// firewallSubnetCidr := "192.168.3.0/25";
/// if param := cfg.Get("firewallSubnetCidr"); param != ""{
/// firewallSubnetCidr = param
/// }
/// region := "cn-hangzhou";
/// if param := cfg.Get("region"); param != ""{
/// region = param
/// }
/// trAttachmentSlaveCidr := "192.168.3.128/26";
/// if param := cfg.Get("trAttachmentSlaveCidr"); param != ""{
/// trAttachmentSlaveCidr = param
/// }
/// firewallVpcCidr := "192.168.3.0/24";
/// if param := cfg.Get("firewallVpcCidr"); param != ""{
/// firewallVpcCidr = param
/// }
/// zone1 := "cn-hangzhou-h";
/// if param := cfg.Get("zone1"); param != ""{
/// zone1 = param
/// }
/// firewallNameUpdate := "tf-example-1";
/// if param := cfg.Get("firewallNameUpdate"); param != ""{
/// firewallNameUpdate = param
/// }
/// zone2 := "cn-hangzhou-i";
/// if param := cfg.Get("zone2"); param != ""{
/// zone2 = param
/// }
/// cen, err := cen.NewInstance(ctx, "cen", &cen.InstanceArgs{
/// Description: pulumi.String("terraform example"),
/// CenInstanceName: pulumi.String("Cen_Terraform_example01"),
/// })
/// if err != nil {
/// return err
/// }
/// tr, err := cen.NewTransitRouter(ctx, "tr", &cen.TransitRouterArgs{
/// SupportMulticast: pulumi.Bool(false),
/// TransitRouterName: pulumi.String("CEN_TR_Terraform"),
/// TransitRouterDescription: pulumi.String("tr-created-by-terraform"),
/// CenId: cen.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// vpc1, err := vpc.NewNetwork(ctx, "vpc1", &vpc.NetworkArgs{
/// Description: pulumi.String("created by terraform"),
/// CidrBlock: pulumi.String("192.168.1.0/24"),
/// VpcName: pulumi.String("vpc1-Terraform"),
/// })
/// if err != nil {
/// return err
/// }
/// vpc1vsw1, err := vpc.NewSwitch(ctx, "vpc1vsw1", &vpc.SwitchArgs{
/// CidrBlock: pulumi.String("192.168.1.0/25"),
/// VswitchName: pulumi.String("vpc1-vsw1"),
/// VpcId: vpc1.ID(),
/// ZoneId: pulumi.String(zone1),
/// })
/// if err != nil {
/// return err
/// }
/// vpc1vsw2, err := vpc.NewSwitch(ctx, "vpc1vsw2", &vpc.SwitchArgs{
/// VpcId: vpc1.ID(),
/// CidrBlock: pulumi.String("192.168.1.128/26"),
/// VswitchName: pulumi.String("vpc1-vsw2"),
/// ZoneId: pulumi.String(zone2),
/// })
/// if err != nil {
/// return err
/// }
/// vpc2, err := vpc.NewNetwork(ctx, "vpc2", &vpc.NetworkArgs{
/// Description: pulumi.String("created by terraform"),
/// CidrBlock: pulumi.String("192.168.2.0/24"),
/// VpcName: pulumi.String("vpc2-Terraform"),
/// })
/// if err != nil {
/// return err
/// }
/// vpc2vsw1, err := vpc.NewSwitch(ctx, "vpc2vsw1", &vpc.SwitchArgs{
/// CidrBlock: pulumi.String("192.168.2.0/25"),
/// VswitchName: pulumi.String("vpc2-vsw1"),
/// VpcId: vpc2.ID(),
/// ZoneId: pulumi.String(zone1),
/// })
/// if err != nil {
/// return err
/// }
/// vpc2vsw2, err := vpc.NewSwitch(ctx, "vpc2vsw2", &vpc.SwitchArgs{
/// CidrBlock: pulumi.String("192.168.2.128/26"),
/// VswitchName: pulumi.String("vpc2-vsw2"),
/// VpcId: vpc2.ID(),
/// ZoneId: pulumi.String(zone2),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cen.NewTransitRouterVpcAttachment(ctx, "tr-vpc1", &cen.TransitRouterVpcAttachmentArgs{
/// AutoPublishRouteEnabled: pulumi.Bool(false),
/// ZoneMappings: cen.TransitRouterVpcAttachmentZoneMappingArray{
/// &cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// VswitchId: vpc1vsw1.ID(),
/// ZoneId: vpc1vsw1.ZoneId,
/// },
/// &cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// ZoneId: vpc1vsw2.ZoneId,
/// VswitchId: vpc1vsw2.ID(),
/// },
/// },
/// VpcId: vpc1.ID(),
/// CenId: cen.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cen.NewTransitRouterVpcAttachment(ctx, "tr-vpc2", &cen.TransitRouterVpcAttachmentArgs{
/// AutoPublishRouteEnabled: pulumi.Bool(false),
/// VpcId: vpc2.ID(),
/// ZoneMappings: cen.TransitRouterVpcAttachmentZoneMappingArray{
/// &cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// VswitchId: vpc2vsw1.ID(),
/// ZoneId: vpc2vsw1.ZoneId,
/// },
/// &cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// VswitchId: vpc2vsw2.ID(),
/// ZoneId: vpc2vsw2.ZoneId,
/// },
/// },
/// CenId: cen.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultVpcCenTrFirewall, err := cloudfirewall.NewVpcCenTrFirewall(ctx, "default", &cloudfirewall.VpcCenTrFirewallArgs{
/// FirewallDescription: pulumi.String("VpcCenTrFirewall created by terraform"),
/// RegionNo: pulumi.String(region),
/// RouteMode: pulumi.String("managed"),
/// CenId: cen.ID(),
/// FirewallVpcCidr: pulumi.String(firewallVpcCidr),
/// TransitRouterId: tr.TransitRouterId,
/// TrAttachmentMasterCidr: pulumi.String(trAttachmentMasterCidr),
/// FirewallName: pulumi.String(firewallName),
/// FirewallSubnetCidr: pulumi.String(firewallSubnetCidr),
/// TrAttachmentSlaveCidr: pulumi.String(trAttachmentSlaveCidr),
/// })
/// if err != nil {
/// return err
/// }
/// _default := cloudfirewall.GetVpcCenTrFirewallsOutput(ctx, cloudfirewall.GetVpcCenTrFirewallsOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultVpcCenTrFirewall.ID(),
/// },
/// CenId: cen.ID(),
/// FirewallName: pulumi.String(firewallName),
/// RegionNo: pulumi.String(region),
/// RouteMode: pulumi.String("managed"),
/// TransitRouterId: tr.TransitRouterId,
/// }, nil);
/// ctx.Export("alicloudCloudFirewallVpcCenTrFirewallExampleId", _default.ApplyT(func(_default cloudfirewall.GetVpcCenTrFirewallsResult) (*string, error) {
/// return &default.Firewalls[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachmentArgs;
/// import com.pulumi.alicloud.cen.inputs.TransitRouterVpcAttachmentZoneMappingArgs;
/// import com.pulumi.alicloud.cloudfirewall.VpcCenTrFirewall;
/// import com.pulumi.alicloud.cloudfirewall.VpcCenTrFirewallArgs;
/// import com.pulumi.alicloud.cloudfirewall.CloudfirewallFunctions;
/// import com.pulumi.alicloud.cloudfirewall.inputs.GetVpcCenTrFirewallsArgs;
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
///         var cen = new Instance("cen", InstanceArgs.builder()
///             .description("terraform example")
///             .cenInstanceName("Cen_Terraform_example01")
///             .build());
///
///         var tr = new TransitRouter("tr", TransitRouterArgs.builder()
///             .supportMulticast(false)
///             .transitRouterName("CEN_TR_Terraform")
///             .transitRouterDescription("tr-created-by-terraform")
///             .cenId(cen.id())
///             .build());
///
///         var vpc1 = new Network("vpc1", NetworkArgs.builder()
///             .description("created by terraform")
///             .cidrBlock("192.168.1.0/24")
///             .vpcName("vpc1-Terraform")
///             .build());
///
///         var vpc1vsw1 = new Switch("vpc1vsw1", SwitchArgs.builder()
///             .cidrBlock("192.168.1.0/25")
///             .vswitchName("vpc1-vsw1")
///             .vpcId(vpc1.id())
///             .zoneId(zone1)
///             .build());
///
///         var vpc1vsw2 = new Switch("vpc1vsw2", SwitchArgs.builder()
///             .vpcId(vpc1.id())
///             .cidrBlock("192.168.1.128/26")
///             .vswitchName("vpc1-vsw2")
///             .zoneId(zone2)
///             .build());
///
///         var vpc2 = new Network("vpc2", NetworkArgs.builder()
///             .description("created by terraform")
///             .cidrBlock("192.168.2.0/24")
///             .vpcName("vpc2-Terraform")
///             .build());
///
///         var vpc2vsw1 = new Switch("vpc2vsw1", SwitchArgs.builder()
///             .cidrBlock("192.168.2.0/25")
///             .vswitchName("vpc2-vsw1")
///             .vpcId(vpc2.id())
///             .zoneId(zone1)
///             .build());
///
///         var vpc2vsw2 = new Switch("vpc2vsw2", SwitchArgs.builder()
///             .cidrBlock("192.168.2.128/26")
///             .vswitchName("vpc2-vsw2")
///             .vpcId(vpc2.id())
///             .zoneId(zone2)
///             .build());
///
///         var tr_vpc1 = new TransitRouterVpcAttachment("tr-vpc1", TransitRouterVpcAttachmentArgs.builder()
///             .autoPublishRouteEnabled(false)
///             .zoneMappings(
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .vswitchId(vpc1vsw1.id())
///                     .zoneId(vpc1vsw1.zoneId())
///                     .build(),
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .zoneId(vpc1vsw2.zoneId())
///                     .vswitchId(vpc1vsw2.id())
///                     .build())
///             .vpcId(vpc1.id())
///             .cenId(cen.id())
///             .build());
///
///         var tr_vpc2 = new TransitRouterVpcAttachment("tr-vpc2", TransitRouterVpcAttachmentArgs.builder()
///             .autoPublishRouteEnabled(false)
///             .vpcId(vpc2.id())
///             .zoneMappings(
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .vswitchId(vpc2vsw1.id())
///                     .zoneId(vpc2vsw1.zoneId())
///                     .build(),
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .vswitchId(vpc2vsw2.id())
///                     .zoneId(vpc2vsw2.zoneId())
///                     .build())
///             .cenId(cen.id())
///             .build());
///
///         var defaultVpcCenTrFirewall = new VpcCenTrFirewall("defaultVpcCenTrFirewall", VpcCenTrFirewallArgs.builder()
///             .firewallDescription("VpcCenTrFirewall created by terraform")
///             .regionNo(region)
///             .routeMode("managed")
///             .cenId(cen.id())
///             .firewallVpcCidr(firewallVpcCidr)
///             .transitRouterId(tr.transitRouterId())
///             .trAttachmentMasterCidr(trAttachmentMasterCidr)
///             .firewallName(firewallName)
///             .firewallSubnetCidr(firewallSubnetCidr)
///             .trAttachmentSlaveCidr(trAttachmentSlaveCidr)
///             .build());
///
///         final var default = CloudfirewallFunctions.getVpcCenTrFirewalls(GetVpcCenTrFirewallsArgs.builder()
///             .ids(defaultVpcCenTrFirewall.id())
///             .cenId(cen.id())
///             .firewallName(firewallName)
///             .regionNo(region)
///             .routeMode("managed")
///             .transitRouterId(tr.transitRouterId())
///             .build());
///
///         ctx.export("alicloudCloudFirewallVpcCenTrFirewallExampleId", default_.applyValue(_default_ -> _default_.firewalls()[0].id()));
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
///       cenInstanceName: Cen_Terraform_example01
///   tr:
///     type: alicloud:cen:TransitRouter
///     properties:
///       supportMulticast: false
///       transitRouterName: CEN_TR_Terraform
///       transitRouterDescription: tr-created-by-terraform
///       cenId: ${cen.id}
///   vpc1:
///     type: alicloud:vpc:Network
///     properties:
///       description: created by terraform
///       cidrBlock: 192.168.1.0/24
///       vpcName: vpc1-Terraform
///   vpc1vsw1:
///     type: alicloud:vpc:Switch
///     properties:
///       cidrBlock: 192.168.1.0/25
///       vswitchName: vpc1-vsw1
///       vpcId: ${vpc1.id}
///       zoneId: ${zone1}
///   vpc1vsw2:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${vpc1.id}
///       cidrBlock: 192.168.1.128/26
///       vswitchName: vpc1-vsw2
///       zoneId: ${zone2}
///   vpc2:
///     type: alicloud:vpc:Network
///     properties:
///       description: created by terraform
///       cidrBlock: 192.168.2.0/24
///       vpcName: vpc2-Terraform
///   vpc2vsw1:
///     type: alicloud:vpc:Switch
///     properties:
///       cidrBlock: 192.168.2.0/25
///       vswitchName: vpc2-vsw1
///       vpcId: ${vpc2.id}
///       zoneId: ${zone1}
///   vpc2vsw2:
///     type: alicloud:vpc:Switch
///     properties:
///       cidrBlock: 192.168.2.128/26
///       vswitchName: vpc2-vsw2
///       vpcId: ${vpc2.id}
///       zoneId: ${zone2}
///   tr-vpc1:
///     type: alicloud:cen:TransitRouterVpcAttachment
///     properties:
///       autoPublishRouteEnabled: false
///       zoneMappings:
///         - vswitchId: ${vpc1vsw1.id}
///           zoneId: ${vpc1vsw1.zoneId}
///         - zoneId: ${vpc1vsw2.zoneId}
///           vswitchId: ${vpc1vsw2.id}
///       vpcId: ${vpc1.id}
///       cenId: ${cen.id}
///   tr-vpc2:
///     type: alicloud:cen:TransitRouterVpcAttachment
///     properties:
///       autoPublishRouteEnabled: false
///       vpcId: ${vpc2.id}
///       zoneMappings:
///         - vswitchId: ${vpc2vsw1.id}
///           zoneId: ${vpc2vsw1.zoneId}
///         - vswitchId: ${vpc2vsw2.id}
///           zoneId: ${vpc2vsw2.zoneId}
///       cenId: ${cen.id}
///   defaultVpcCenTrFirewall:
///     type: alicloud:cloudfirewall:VpcCenTrFirewall
///     name: default
///     properties:
///       firewallDescription: VpcCenTrFirewall created by terraform
///       regionNo: ${region}
///       routeMode: managed
///       cenId: ${cen.id}
///       firewallVpcCidr: ${firewallVpcCidr}
///       transitRouterId: ${tr.transitRouterId}
///       trAttachmentMasterCidr: ${trAttachmentMasterCidr}
///       firewallName: ${firewallName}
///       firewallSubnetCidr: ${firewallSubnetCidr}
///       trAttachmentSlaveCidr: ${trAttachmentSlaveCidr}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudfirewall:getVpcCenTrFirewalls
///       arguments:
///         ids:
///           - ${defaultVpcCenTrFirewall.id}
///         cenId: ${cen.id}
///         firewallName: ${firewallName}
///         regionNo: ${region}
///         routeMode: managed
///         transitRouterId: ${tr.transitRouterId}
/// outputs:
///   alicloudCloudFirewallVpcCenTrFirewallExampleId: ${default.firewalls[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfirewall_get_vpc_cen_tr_firewalls_get_vpc_cen_tr_firewalls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcCenTrFirewallsResult> getVpcCenTrFirewalls(
  GetVpcCenTrFirewallsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudfirewall/getVpcCenTrFirewalls:getVpcCenTrFirewalls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcCenTrFirewallsResult.fromMap(result);
}

/// This data source provides Cloud Firewall Vpc Firewall Cen available to the user.[What is Vpc Firewall Cen](https://www.alibabacloud.com/help/en/cloud-firewall/latest/describevpcfirewallcenlist)
///
/// &gt; **NOTE:** Available since v1.194.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cloudfirewall.getVpcFirewallCens({
///     ids: [defaultAlicloudCloudFirewallVpcFirewallCen.id],
///     cenId: "cen-cjok7uyb5w2b27573v",
///     memberUid: "1415189284827022",
///     status: "closed",
///     vpcFirewallName: "tf-test",
/// });
/// export const alicloudCloudFirewallVpcFirewallCenExampleId = _default.then(_default => _default.cens?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cloudfirewall.get_vpc_firewall_cens(ids=[default_alicloud_cloud_firewall_vpc_firewall_cen["id"]],
///     cen_id="cen-cjok7uyb5w2b27573v",
///     member_uid="1415189284827022",
///     status="closed",
///     vpc_firewall_name="tf-test")
/// pulumi.export("alicloudCloudFirewallVpcFirewallCenExampleId", default.cens[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.CloudFirewall.GetVpcFirewallCens.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudCloudFirewallVpcFirewallCen.Id,
///         },
///         CenId = "cen-cjok7uyb5w2b27573v",
///         MemberUid = "1415189284827022",
///         Status = "closed",
///         VpcFirewallName = "tf-test",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCloudFirewallVpcFirewallCenExampleId"] = @default.Apply(@default => @default.Apply(getVpcFirewallCensResult => getVpcFirewallCensResult.Cens[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := cloudfirewall.GetVpcFirewallCens(ctx, &cloudfirewall.GetVpcFirewallCensArgs{
/// Ids: interface{}{
/// defaultAlicloudCloudFirewallVpcFirewallCen.Id,
/// },
/// CenId: pulumi.StringRef("cen-cjok7uyb5w2b27573v"),
/// MemberUid: pulumi.StringRef("1415189284827022"),
/// Status: pulumi.StringRef("closed"),
/// VpcFirewallName: pulumi.StringRef("tf-test"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudCloudFirewallVpcFirewallCenExampleId", _default.Cens[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cloudfirewall.CloudfirewallFunctions;
/// import com.pulumi.alicloud.cloudfirewall.inputs.GetVpcFirewallCensArgs;
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
///         final var default = CloudfirewallFunctions.getVpcFirewallCens(GetVpcFirewallCensArgs.builder()
///             .ids(defaultAlicloudCloudFirewallVpcFirewallCen.id())
///             .cenId("cen-cjok7uyb5w2b27573v")
///             .memberUid("1415189284827022")
///             .status("closed")
///             .vpcFirewallName("tf-test")
///             .build());
///
///         ctx.export("alicloudCloudFirewallVpcFirewallCenExampleId", default_.cens()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudfirewall:getVpcFirewallCens
///       arguments:
///         ids:
///           - ${defaultAlicloudCloudFirewallVpcFirewallCen.id}
///         cenId: cen-cjok7uyb5w2b27573v
///         memberUid: '1415189284827022'
///         status: closed
///         vpcFirewallName: tf-test
/// outputs:
///   alicloudCloudFirewallVpcFirewallCenExampleId: ${default.cens[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfirewall_get_vpc_firewall_cens_get_vpc_firewall_cens_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcFirewallCensResult> getVpcFirewallCens(
  GetVpcFirewallCensArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudfirewall/getVpcFirewallCens:getVpcFirewallCens',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcFirewallCensResult.fromMap(result);
}

/// This data source provides the Cloud Firewall Vpc Firewall Control Policies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.194.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudfirewall.getVpcFirewallControlPolicies({
///     vpcFirewallId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const alicloudCloudFirewallVpcFirewallControlPoliciesId1 = ids.then(ids => ids.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudfirewall.get_vpc_firewall_control_policies(vpc_firewall_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("alicloudCloudFirewallVpcFirewallControlPoliciesId1", ids.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudFirewall.GetVpcFirewallControlPolicies.Invoke(new()
///     {
///         VpcFirewallId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCloudFirewallVpcFirewallControlPoliciesId1"] = ids.Apply(getVpcFirewallControlPoliciesResult => getVpcFirewallControlPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudfirewall.GetVpcFirewallControlPolicies(ctx, &cloudfirewall.GetVpcFirewallControlPoliciesArgs{
/// 			VpcFirewallId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudCloudFirewallVpcFirewallControlPoliciesId1", ids.Policies[0].Id)
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
/// import com.pulumi.alicloud.cloudfirewall.CloudfirewallFunctions;
/// import com.pulumi.alicloud.cloudfirewall.inputs.GetVpcFirewallControlPoliciesArgs;
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
///         final var ids = CloudfirewallFunctions.getVpcFirewallControlPolicies(GetVpcFirewallControlPoliciesArgs.builder()
///             .vpcFirewallId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("alicloudCloudFirewallVpcFirewallControlPoliciesId1", ids.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudfirewall:getVpcFirewallControlPolicies
///       arguments:
///         vpcFirewallId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   alicloudCloudFirewallVpcFirewallControlPoliciesId1: ${ids.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfirewall_get_vpc_firewall_control_policies_get_vpc_firewall_control_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcFirewallControlPoliciesResult> getVpcFirewallControlPolicies(
  GetVpcFirewallControlPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudfirewall/getVpcFirewallControlPolicies:getVpcFirewallControlPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcFirewallControlPoliciesResult.fromMap(result);
}

/// This data source provides Cloud Firewall Vpc Firewall available to the user.[What is Vpc Firewall](https://help.aliyun.com/document_detail/342932.html)
///
/// &gt; **NOTE:** Available since v1.194.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cloudfirewall.getVpcFirewalls({
///     ids: ["id-example"],
///     memberUid: "1415189284827022",
///     status: "closed",
///     vpcFirewallName: "tf-test",
/// });
/// export const alicloudCfwVpcFirewallExampleId = _default.then(_default => _default.firewalls?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cloudfirewall.get_vpc_firewalls(ids=["id-example"],
///     member_uid="1415189284827022",
///     status="closed",
///     vpc_firewall_name="tf-test")
/// pulumi.export("alicloudCfwVpcFirewallExampleId", default.firewalls[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.CloudFirewall.GetVpcFirewalls.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "id-example",
///         },
///         MemberUid = "1415189284827022",
///         Status = "closed",
///         VpcFirewallName = "tf-test",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCfwVpcFirewallExampleId"] = @default.Apply(@default => @default.Apply(getVpcFirewallsResult => getVpcFirewallsResult.Firewalls[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cloudfirewall.GetVpcFirewalls(ctx, &cloudfirewall.GetVpcFirewallsArgs{
/// 			Ids: []string{
/// 				"id-example",
/// 			},
/// 			MemberUid:       pulumi.StringRef("1415189284827022"),
/// 			Status:          pulumi.StringRef("closed"),
/// 			VpcFirewallName: pulumi.StringRef("tf-test"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudCfwVpcFirewallExampleId", _default.Firewalls[0].Id)
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
/// import com.pulumi.alicloud.cloudfirewall.CloudfirewallFunctions;
/// import com.pulumi.alicloud.cloudfirewall.inputs.GetVpcFirewallsArgs;
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
///         final var default = CloudfirewallFunctions.getVpcFirewalls(GetVpcFirewallsArgs.builder()
///             .ids("id-example")
///             .memberUid("1415189284827022")
///             .status("closed")
///             .vpcFirewallName("tf-test")
///             .build());
///
///         ctx.export("alicloudCfwVpcFirewallExampleId", default_.firewalls()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudfirewall:getVpcFirewalls
///       arguments:
///         ids:
///           - id-example
///         memberUid: '1415189284827022'
///         status: closed
///         vpcFirewallName: tf-test
/// outputs:
///   alicloudCfwVpcFirewallExampleId: ${default.firewalls[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfirewall_get_vpc_firewalls_get_vpc_firewalls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcFirewallsResult> getVpcFirewalls(
  GetVpcFirewallsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudfirewall/getVpcFirewalls:getVpcFirewalls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcFirewallsResult.fromMap(result);
}
