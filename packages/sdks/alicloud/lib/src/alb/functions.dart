import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acls_args.dart';
import 'get_acls_result.dart';
import 'get_ascripts_args.dart';
import 'get_ascripts_result.dart';
import 'get_health_check_templates_args.dart';
import 'get_health_check_templates_result.dart';
import 'get_listeners_args.dart';
import 'get_listeners_result.dart';
import 'get_load_balancers_args.dart';
import 'get_load_balancers_result.dart';
import 'get_rules_args.dart';
import 'get_rules_result.dart';
import 'get_security_policies_args.dart';
import 'get_security_policies_result.dart';
import 'get_server_groups_args.dart';
import 'get_server_groups_result.dart';
import 'get_system_security_policies_args.dart';
import 'get_system_security_policies_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Application Load Balancer (ALB) Acls of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.133.0+.
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
/// const ids = alicloud.alb.getAcls({});
/// export const albAclId1 = ids.then(ids => ids.acls?.[0]?.id);
/// const nameRegex = alicloud.alb.getAcls({
///     nameRegex: "^my-Acl",
/// });
/// export const albAclId2 = nameRegex.then(nameRegex => nameRegex.acls?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.alb.get_acls()
/// pulumi.export("albAclId1", ids.acls[0].id)
/// name_regex = alicloud.alb.get_acls(name_regex="^my-Acl")
/// pulumi.export("albAclId2", name_regex.acls[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Alb.GetAcls.Invoke();
///
///     var nameRegex = AliCloud.Alb.GetAcls.Invoke(new()
///     {
///         NameRegex = "^my-Acl",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["albAclId1"] = ids.Apply(getAclsResult => getAclsResult.Acls[0]?.Id),
///         ["albAclId2"] = nameRegex.Apply(getAclsResult => getAclsResult.Acls[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := alb.GetAcls(ctx, &alb.GetAclsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("albAclId1", ids.Acls[0].Id)
/// 		nameRegex, err := alb.GetAcls(ctx, &alb.GetAclsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Acl"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("albAclId2", nameRegex.Acls[0].Id)
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
/// import com.pulumi.alicloud.alb.inputs.GetAclsArgs;
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
///         final var ids = AlbFunctions.getAcls(GetAclsArgs.builder()
///             .build());
///
///         ctx.export("albAclId1", ids.acls()[0].id());
///         final var nameRegex = AlbFunctions.getAcls(GetAclsArgs.builder()
///             .nameRegex("^my-Acl")
///             .build());
///
///         ctx.export("albAclId2", nameRegex.acls()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:alb:getAcls
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:alb:getAcls
///       arguments:
///         nameRegex: ^my-Acl
/// outputs:
///   albAclId1: ${ids.acls[0].id}
///   albAclId2: ${nameRegex.acls[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_acls_get_acls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAclsResult> getAcls(
  GetAclsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:alb/getAcls:getAcls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAclsResult.fromMap(result);
}

/// This data source provides Alb Ascript available to the user.
///
/// > **NOTE:** Available in 1.195.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.alb.getAscripts({
///     ids: [defaultAlicloudAlbAscript.id],
///     nameRegex: defaultAlicloudAlbAscript.name,
///     ascriptName: "test",
///     listenerId: listenerId,
/// });
/// export const alicloudAlbAscriptExampleId = _default.then(_default => _default.ascripts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.alb.get_ascripts(ids=[default_alicloud_alb_ascript["id"]],
///     name_regex=default_alicloud_alb_ascript["name"],
///     ascript_name="test",
///     listener_id=listener_id)
/// pulumi.export("alicloudAlbAscriptExampleId", default.ascripts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Alb.GetAscripts.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudAlbAscript.Id,
///         },
///         NameRegex = defaultAlicloudAlbAscript.Name,
///         AscriptName = "test",
///         ListenerId = listenerId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudAlbAscriptExampleId"] = @default.Apply(@default => @default.Apply(getAscriptsResult => getAscriptsResult.Ascripts[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := alb.GetAscripts(ctx, &alb.GetAscriptsArgs{
/// Ids: interface{}{
/// defaultAlicloudAlbAscript.Id,
/// },
/// NameRegex: pulumi.StringRef(defaultAlicloudAlbAscript.Name),
/// AscriptName: pulumi.StringRef("test"),
/// ListenerId: pulumi.StringRef(listenerId),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudAlbAscriptExampleId", _default.Ascripts[0].Id)
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
/// import com.pulumi.alicloud.alb.AlbFunctions;
/// import com.pulumi.alicloud.alb.inputs.GetAscriptsArgs;
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
///         final var default = AlbFunctions.getAscripts(GetAscriptsArgs.builder()
///             .ids(defaultAlicloudAlbAscript.id())
///             .nameRegex(defaultAlicloudAlbAscript.name())
///             .ascriptName("test")
///             .listenerId(listenerId)
///             .build());
///
///         ctx.export("alicloudAlbAscriptExampleId", default_.ascripts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:alb:getAscripts
///       arguments:
///         ids:
///           - ${defaultAlicloudAlbAscript.id}
///         nameRegex: ${defaultAlicloudAlbAscript.name}
///         ascriptName: test
///         listenerId: ${listenerId}
/// outputs:
///   alicloudAlbAscriptExampleId: ${default.ascripts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_ascripts_get_ascripts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAscriptsResult> getAscripts(
  GetAscriptsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:alb/getAscripts:getAscripts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAscriptsResult.fromMap(result);
}

/// This data source provides the Alb Health Check Templates of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.134.0+.
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
/// const ids = alicloud.alb.getHealthCheckTemplates({
///     ids: ["example_id"],
/// });
/// export const albHealthCheckTemplateId1 = ids.then(ids => ids.templates?.[0]?.id);
/// const nameRegex = alicloud.alb.getHealthCheckTemplates({
///     nameRegex: "^my-HealthCheckTemplate",
/// });
/// export const albHealthCheckTemplateId2 = nameRegex.then(nameRegex => nameRegex.templates?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.alb.get_health_check_templates(ids=["example_id"])
/// pulumi.export("albHealthCheckTemplateId1", ids.templates[0].id)
/// name_regex = alicloud.alb.get_health_check_templates(name_regex="^my-HealthCheckTemplate")
/// pulumi.export("albHealthCheckTemplateId2", name_regex.templates[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Alb.GetHealthCheckTemplates.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Alb.GetHealthCheckTemplates.Invoke(new()
///     {
///         NameRegex = "^my-HealthCheckTemplate",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["albHealthCheckTemplateId1"] = ids.Apply(getHealthCheckTemplatesResult => getHealthCheckTemplatesResult.Templates[0]?.Id),
///         ["albHealthCheckTemplateId2"] = nameRegex.Apply(getHealthCheckTemplatesResult => getHealthCheckTemplatesResult.Templates[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := alb.GetHealthCheckTemplates(ctx, &alb.GetHealthCheckTemplatesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("albHealthCheckTemplateId1", ids.Templates[0].Id)
/// 		nameRegex, err := alb.GetHealthCheckTemplates(ctx, &alb.GetHealthCheckTemplatesArgs{
/// 			NameRegex: pulumi.StringRef("^my-HealthCheckTemplate"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("albHealthCheckTemplateId2", nameRegex.Templates[0].Id)
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
/// import com.pulumi.alicloud.alb.inputs.GetHealthCheckTemplatesArgs;
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
///         final var ids = AlbFunctions.getHealthCheckTemplates(GetHealthCheckTemplatesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("albHealthCheckTemplateId1", ids.templates()[0].id());
///         final var nameRegex = AlbFunctions.getHealthCheckTemplates(GetHealthCheckTemplatesArgs.builder()
///             .nameRegex("^my-HealthCheckTemplate")
///             .build());
///
///         ctx.export("albHealthCheckTemplateId2", nameRegex.templates()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:alb:getHealthCheckTemplates
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:alb:getHealthCheckTemplates
///       arguments:
///         nameRegex: ^my-HealthCheckTemplate
/// outputs:
///   albHealthCheckTemplateId1: ${ids.templates[0].id}
///   albHealthCheckTemplateId2: ${nameRegex.templates[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_health_check_templates_get_health_check_templates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHealthCheckTemplatesResult> getHealthCheckTemplates(
  GetHealthCheckTemplatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:alb/getHealthCheckTemplates:getHealthCheckTemplates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckTemplatesResult.fromMap(result);
}

/// This data source provides the Application Load Balancer (ALB) Listeners of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.133.0+.
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
/// const ids = alicloud.alb.getListeners({
///     ids: ["example_id"],
/// });
/// export const albListenerId1 = ids.then(ids => ids.listeners?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.alb.get_listeners(ids=["example_id"])
/// pulumi.export("albListenerId1", ids.listeners[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Alb.GetListeners.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["albListenerId1"] = ids.Apply(getListenersResult => getListenersResult.Listeners[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := alb.GetListeners(ctx, &alb.GetListenersArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("albListenerId1", ids.Listeners[0].Id)
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
/// import com.pulumi.alicloud.alb.inputs.GetListenersArgs;
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
///         final var ids = AlbFunctions.getListeners(GetListenersArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("albListenerId1", ids.listeners()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:alb:getListeners
///       arguments:
///         ids:
///           - example_id
/// outputs:
///   albListenerId1: ${ids.listeners[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_listeners_get_listeners_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListenersResult> getListeners(
  GetListenersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:alb/getListeners:getListeners',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListenersResult.fromMap(result);
}

/// This data source provides the Alb Load Balancers of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.132.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGetZones = alicloud.alb.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
///     enableIpv6: true,
/// });
/// const zoneA = new alicloud.ecs.Eip("zone_a", {
///     bandwidth: "10",
///     internetChargeType: "PayByTraffic",
/// });
/// const zoneASwitch = new alicloud.vpc.Switch("zone_a", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.0.0/18",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///     ipv6CidrBlockMask: 6,
/// });
/// const zoneB = new alicloud.vpc.Switch("zone_b", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.128.0/18",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[1]?.id),
///     ipv6CidrBlockMask: 8,
/// });
/// const defaultIpv6Gateway = new alicloud.vpc.Ipv6Gateway("default", {
///     ipv6GatewayName: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultCommonBandwithPackage = new alicloud.vpc.CommonBandwithPackage("default", {
///     bandwidth: "1000",
///     internetChargeType: "PayByBandwidth",
/// });
/// const defaultLoadBalancer = new alicloud.alb.LoadBalancer("default", {
///     loadBalancerEdition: "Basic",
///     addressType: "Internet",
///     vpcId: defaultIpv6Gateway.vpcId,
///     addressAllocatedMode: "Fixed",
///     addressIpVersion: "DualStack",
///     ipv6AddressType: "Internet",
///     bandwidthPackageId: defaultCommonBandwithPackage.id,
///     resourceGroupId: _default.then(_default => _default.groups?.[1]?.id),
///     loadBalancerName: name,
///     deletionProtectionEnabled: false,
///     loadBalancerBillingConfig: {
///         payType: "PayAsYouGo",
///     },
///     zoneMappings: [
///         {
///             vswitchId: zoneASwitch.id,
///             zoneId: zoneASwitch.zoneId,
///             eipType: "Common",
///             allocationId: zoneA.id,
///             intranetAddress: "192.168.10.1",
///         },
///         {
///             vswitchId: zoneB.id,
///             zoneId: zoneB.zoneId,
///         },
///     ],
///     tags: {
///         Created: "TF",
///     },
/// });
/// const ids = alicloud.alb.getLoadBalancersOutput({
///     ids: [defaultLoadBalancer.id],
/// });
/// export const albLoadBalancersId0 = ids.apply(ids => ids.balancers?.[0]?.id);
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
///     cidr_block="192.168.0.0/16",
///     enable_ipv6=True)
/// zone_a = alicloud.ecs.Eip("zone_a",
///     bandwidth="10",
///     internet_charge_type="PayByTraffic")
/// zone_a_switch = alicloud.vpc.Switch("zone_a",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="192.168.0.0/18",
///     zone_id=default_get_zones.zones[0].id,
///     ipv6_cidr_block_mask=6)
/// zone_b = alicloud.vpc.Switch("zone_b",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="192.168.128.0/18",
///     zone_id=default_get_zones.zones[1].id,
///     ipv6_cidr_block_mask=8)
/// default_ipv6_gateway = alicloud.vpc.Ipv6Gateway("default",
///     ipv6_gateway_name=name,
///     vpc_id=default_network.id)
/// default_common_bandwith_package = alicloud.vpc.CommonBandwithPackage("default",
///     bandwidth="1000",
///     internet_charge_type="PayByBandwidth")
/// default_load_balancer = alicloud.alb.LoadBalancer("default",
///     load_balancer_edition="Basic",
///     address_type="Internet",
///     vpc_id=default_ipv6_gateway.vpc_id,
///     address_allocated_mode="Fixed",
///     address_ip_version="DualStack",
///     ipv6_address_type="Internet",
///     bandwidth_package_id=default_common_bandwith_package.id,
///     resource_group_id=default.groups[1].id,
///     load_balancer_name=name,
///     deletion_protection_enabled=False,
///     load_balancer_billing_config={
///         "pay_type": "PayAsYouGo",
///     },
///     zone_mappings=[
///         {
///             "vswitch_id": zone_a_switch.id,
///             "zone_id": zone_a_switch.zone_id,
///             "eip_type": "Common",
///             "allocation_id": zone_a.id,
///             "intranet_address": "192.168.10.1",
///         },
///         {
///             "vswitch_id": zone_b.id,
///             "zone_id": zone_b.zone_id,
///         },
///     ],
///     tags={
///         "Created": "TF",
///     })
/// ids = alicloud.alb.get_load_balancers_output(ids=[default_load_balancer.id])
/// pulumi.export("albLoadBalancersId0", ids.balancers[0].id)
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
///         CidrBlock = "192.168.0.0/16",
///         EnableIpv6 = true,
///     });
///
///     var zoneA = new AliCloud.Ecs.Eip("zone_a", new()
///     {
///         Bandwidth = "10",
///         InternetChargeType = "PayByTraffic",
///     });
///
///     var zoneASwitch = new AliCloud.Vpc.Switch("zone_a", new()
///     {
///         VswitchName = name,
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "192.168.0.0/18",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         Ipv6CidrBlockMask = 6,
///     });
///
///     var zoneB = new AliCloud.Vpc.Switch("zone_b", new()
///     {
///         VswitchName = name,
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "192.168.128.0/18",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[1]?.Id),
///         Ipv6CidrBlockMask = 8,
///     });
///
///     var defaultIpv6Gateway = new AliCloud.Vpc.Ipv6Gateway("default", new()
///     {
///         Ipv6GatewayName = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultCommonBandwithPackage = new AliCloud.Vpc.CommonBandwithPackage("default", new()
///     {
///         Bandwidth = "1000",
///         InternetChargeType = "PayByBandwidth",
///     });
///
///     var defaultLoadBalancer = new AliCloud.Alb.LoadBalancer("default", new()
///     {
///         LoadBalancerEdition = "Basic",
///         AddressType = "Internet",
///         VpcId = defaultIpv6Gateway.VpcId,
///         AddressAllocatedMode = "Fixed",
///         AddressIpVersion = "DualStack",
///         Ipv6AddressType = "Internet",
///         BandwidthPackageId = defaultCommonBandwithPackage.Id,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[1]?.Id)),
///         LoadBalancerName = name,
///         DeletionProtectionEnabled = false,
///         LoadBalancerBillingConfig = new AliCloud.Alb.Inputs.LoadBalancerLoadBalancerBillingConfigArgs
///         {
///             PayType = "PayAsYouGo",
///         },
///         ZoneMappings = new[]
///         {
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = zoneASwitch.Id,
///                 ZoneId = zoneASwitch.ZoneId,
///                 EipType = "Common",
///                 AllocationId = zoneA.Id,
///                 IntranetAddress = "192.168.10.1",
///             },
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = zoneB.Id,
///                 ZoneId = zoneB.ZoneId,
///             },
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///         },
///     });
///
///     var ids = AliCloud.Alb.GetLoadBalancers.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultLoadBalancer.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["albLoadBalancersId0"] = ids.Apply(getLoadBalancersResult => getLoadBalancersResult.Balancers[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 			VpcName:    pulumi.String(name),
/// 			CidrBlock:  pulumi.String("192.168.0.0/16"),
/// 			EnableIpv6: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		zoneA, err := ecs.NewEip(ctx, "zone_a", &ecs.EipArgs{
/// 			Bandwidth:          pulumi.String("10"),
/// 			InternetChargeType: pulumi.String("PayByTraffic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		zoneASwitch, err := vpc.NewSwitch(ctx, "zone_a", &vpc.SwitchArgs{
/// 			VswitchName:       pulumi.String(name),
/// 			VpcId:             defaultNetwork.ID(),
/// 			CidrBlock:         pulumi.String("192.168.0.0/18"),
/// 			ZoneId:            pulumi.String(defaultGetZones.Zones[0].Id),
/// 			Ipv6CidrBlockMask: pulumi.Int(6),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		zoneB, err := vpc.NewSwitch(ctx, "zone_b", &vpc.SwitchArgs{
/// 			VswitchName:       pulumi.String(name),
/// 			VpcId:             defaultNetwork.ID(),
/// 			CidrBlock:         pulumi.String("192.168.128.0/18"),
/// 			ZoneId:            pulumi.String(defaultGetZones.Zones[1].Id),
/// 			Ipv6CidrBlockMask: pulumi.Int(8),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpv6Gateway, err := vpc.NewIpv6Gateway(ctx, "default", &vpc.Ipv6GatewayArgs{
/// 			Ipv6GatewayName: pulumi.String(name),
/// 			VpcId:           defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCommonBandwithPackage, err := vpc.NewCommonBandwithPackage(ctx, "default", &vpc.CommonBandwithPackageArgs{
/// 			Bandwidth:          pulumi.String("1000"),
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultLoadBalancer, err := alb.NewLoadBalancer(ctx, "default", &alb.LoadBalancerArgs{
/// 			LoadBalancerEdition:       pulumi.String("Basic"),
/// 			AddressType:               pulumi.String("Internet"),
/// 			VpcId:                     defaultIpv6Gateway.VpcId,
/// 			AddressAllocatedMode:      pulumi.String("Fixed"),
/// 			AddressIpVersion:          pulumi.String("DualStack"),
/// 			Ipv6AddressType:           pulumi.String("Internet"),
/// 			BandwidthPackageId:        defaultCommonBandwithPackage.ID(),
/// 			ResourceGroupId:           pulumi.String(_default.Groups[1].Id),
/// 			LoadBalancerName:          pulumi.String(name),
/// 			DeletionProtectionEnabled: pulumi.Bool(false),
/// 			LoadBalancerBillingConfig: &alb.LoadBalancerLoadBalancerBillingConfigArgs{
/// 				PayType: pulumi.String("PayAsYouGo"),
/// 			},
/// 			ZoneMappings: alb.LoadBalancerZoneMappingArray{
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId:       zoneASwitch.ID(),
/// 					ZoneId:          zoneASwitch.ZoneId,
/// 					EipType:         pulumi.String("Common"),
/// 					AllocationId:    zoneA.ID(),
/// 					IntranetAddress: pulumi.String("192.168.10.1"),
/// 				},
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: zoneB.ID(),
/// 					ZoneId:    zoneB.ZoneId,
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := alb.GetLoadBalancersOutput(ctx, alb.GetLoadBalancersOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultLoadBalancer.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("albLoadBalancersId0", ids.ApplyT(func(ids alb.GetLoadBalancersResult) (*string, error) {
/// 			return &ids.Balancers[0].Id, nil
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.alb.AlbFunctions;
/// import com.pulumi.alicloud.alb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.ecs.Eip;
/// import com.pulumi.alicloud.ecs.EipArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.Ipv6Gateway;
/// import com.pulumi.alicloud.vpc.Ipv6GatewayArgs;
/// import com.pulumi.alicloud.vpc.CommonBandwithPackage;
/// import com.pulumi.alicloud.vpc.CommonBandwithPackageArgs;
/// import com.pulumi.alicloud.alb.LoadBalancer;
/// import com.pulumi.alicloud.alb.LoadBalancerArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerLoadBalancerBillingConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerZoneMappingArgs;
/// import com.pulumi.alicloud.alb.inputs.GetLoadBalancersArgs;
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
///             .cidrBlock("192.168.0.0/16")
///             .enableIpv6(true)
///             .build());
///
///         var zoneA = new Eip("zoneA", EipArgs.builder()
///             .bandwidth("10")
///             .internetChargeType("PayByTraffic")
///             .build());
///
///         var zoneASwitch = new Switch("zoneASwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("192.168.0.0/18")
///             .zoneId(defaultGetZones.zones()[0].id())
///             .ipv6CidrBlockMask(6)
///             .build());
///
///         var zoneB = new Switch("zoneB", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("192.168.128.0/18")
///             .zoneId(defaultGetZones.zones()[1].id())
///             .ipv6CidrBlockMask(8)
///             .build());
///
///         var defaultIpv6Gateway = new Ipv6Gateway("defaultIpv6Gateway", Ipv6GatewayArgs.builder()
///             .ipv6GatewayName(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultCommonBandwithPackage = new CommonBandwithPackage("defaultCommonBandwithPackage", CommonBandwithPackageArgs.builder()
///             .bandwidth("1000")
///             .internetChargeType("PayByBandwidth")
///             .build());
///
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .loadBalancerEdition("Basic")
///             .addressType("Internet")
///             .vpcId(defaultIpv6Gateway.vpcId())
///             .addressAllocatedMode("Fixed")
///             .addressIpVersion("DualStack")
///             .ipv6AddressType("Internet")
///             .bandwidthPackageId(defaultCommonBandwithPackage.id())
///             .resourceGroupId(default_.groups()[1].id())
///             .loadBalancerName(name)
///             .deletionProtectionEnabled(false)
///             .loadBalancerBillingConfig(LoadBalancerLoadBalancerBillingConfigArgs.builder()
///                 .payType("PayAsYouGo")
///                 .build())
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(zoneASwitch.id())
///                     .zoneId(zoneASwitch.zoneId())
///                     .eipType("Common")
///                     .allocationId(zoneA.id())
///                     .intranetAddress("192.168.10.1")
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(zoneB.id())
///                     .zoneId(zoneB.zoneId())
///                     .build())
///             .tags(Map.of("Created", "TF"))
///             .build());
///
///         final var ids = AlbFunctions.getLoadBalancers(GetLoadBalancersArgs.builder()
///             .ids(defaultLoadBalancer.id())
///             .build());
///
///         ctx.export("albLoadBalancersId0", ids.applyValue(_ids -> _ids.balancers()[0].id()));
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
///       cidrBlock: 192.168.0.0/16
///       enableIpv6: 'true'
///   zoneA:
///     type: alicloud:ecs:Eip
///     name: zone_a
///     properties:
///       bandwidth: '10'
///       internetChargeType: PayByTraffic
///   zoneASwitch:
///     type: alicloud:vpc:Switch
///     name: zone_a
///     properties:
///       vswitchName: ${name}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 192.168.0.0/18
///       zoneId: ${defaultGetZones.zones[0].id}
///       ipv6CidrBlockMask: '6'
///   zoneB:
///     type: alicloud:vpc:Switch
///     name: zone_b
///     properties:
///       vswitchName: ${name}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 192.168.128.0/18
///       zoneId: ${defaultGetZones.zones[1].id}
///       ipv6CidrBlockMask: '8'
///   defaultIpv6Gateway:
///     type: alicloud:vpc:Ipv6Gateway
///     name: default
///     properties:
///       ipv6GatewayName: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultCommonBandwithPackage:
///     type: alicloud:vpc:CommonBandwithPackage
///     name: default
///     properties:
///       bandwidth: 1000
///       internetChargeType: PayByBandwidth
///   defaultLoadBalancer:
///     type: alicloud:alb:LoadBalancer
///     name: default
///     properties:
///       loadBalancerEdition: Basic
///       addressType: Internet
///       vpcId: ${defaultIpv6Gateway.vpcId}
///       addressAllocatedMode: Fixed
///       addressIpVersion: DualStack
///       ipv6AddressType: Internet
///       bandwidthPackageId: ${defaultCommonBandwithPackage.id}
///       resourceGroupId: ${default.groups[1].id}
///       loadBalancerName: ${name}
///       deletionProtectionEnabled: false
///       loadBalancerBillingConfig:
///         payType: PayAsYouGo
///       zoneMappings:
///         - vswitchId: ${zoneASwitch.id}
///           zoneId: ${zoneASwitch.zoneId}
///           eipType: Common
///           allocationId: ${zoneA.id}
///           intranetAddress: 192.168.10.1
///         - vswitchId: ${zoneB.id}
///           zoneId: ${zoneB.zoneId}
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
///   ids:
///     fn::invoke:
///       function: alicloud:alb:getLoadBalancers
///       arguments:
///         ids:
///           - ${defaultLoadBalancer.id}
/// outputs:
///   albLoadBalancersId0: ${ids.balancers[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_load_balancers_get_load_balancers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancersResult> getLoadBalancers(
  GetLoadBalancersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:alb/getLoadBalancers:getLoadBalancers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancersResult.fromMap(result);
}

/// This data source provides the Alb Rules of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.133.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
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
///     loadBalancerEdition: "Standard",
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
/// });
/// const defaultServerGroup = new alicloud.alb.ServerGroup("default", {
///     protocol: "HTTP",
///     vpcId: defaultNetwork.id,
///     serverGroupName: name,
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
///     healthCheckConfig: {
///         healthCheckEnabled: false,
///     },
///     stickySessionConfig: {
///         stickySessionEnabled: false,
///     },
///     tags: {
///         Created: "TF",
///     },
/// });
/// const defaultListener = new alicloud.alb.Listener("default", {
///     loadBalancerId: defaultLoadBalancer.id,
///     listenerProtocol: "HTTP",
///     listenerPort: 80,
///     listenerDescription: name,
///     defaultActions: [{
///         type: "ForwardGroup",
///         forwardGroupConfig: {
///             serverGroupTuples: [{
///                 serverGroupId: defaultServerGroup.id,
///             }],
///         },
///     }],
/// });
/// const defaultRule = new alicloud.alb.Rule("default", {
///     ruleName: name,
///     listenerId: defaultListener.id,
///     priority: 555,
///     ruleConditions: [{
///         cookieConfig: {
///             values: [{
///                 key: "created",
///                 value: "tf",
///             }],
///         },
///         type: "Cookie",
///     }],
///     ruleActions: [{
///         forwardGroupConfig: {
///             serverGroupTuples: [{
///                 serverGroupId: defaultServerGroup.id,
///             }],
///         },
///         order: 9,
///         type: "ForwardGroup",
///     }],
/// });
/// const ids = alicloud.alb.getRulesOutput({
///     ids: [defaultRule.id],
/// });
/// export const albRuleId = ids.apply(ids => ids.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
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
///     load_balancer_edition="Standard",
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
///     ])
/// default_server_group = alicloud.alb.ServerGroup("default",
///     protocol="HTTP",
///     vpc_id=default_network.id,
///     server_group_name=name,
///     resource_group_id=default_get_resource_groups.groups[0].id,
///     health_check_config={
///         "health_check_enabled": False,
///     },
///     sticky_session_config={
///         "sticky_session_enabled": False,
///     },
///     tags={
///         "Created": "TF",
///     })
/// default_listener = alicloud.alb.Listener("default",
///     load_balancer_id=default_load_balancer.id,
///     listener_protocol="HTTP",
///     listener_port=80,
///     listener_description=name,
///     default_actions=[{
///         "type": "ForwardGroup",
///         "forward_group_config": {
///             "server_group_tuples": [{
///                 "server_group_id": default_server_group.id,
///             }],
///         },
///     }])
/// default_rule = alicloud.alb.Rule("default",
///     rule_name=name,
///     listener_id=default_listener.id,
///     priority=555,
///     rule_conditions=[{
///         "cookie_config": {
///             "values": [{
///                 "key": "created",
///                 "value": "tf",
///             }],
///         },
///         "type": "Cookie",
///     }],
///     rule_actions=[{
///         "forward_group_config": {
///             "server_group_tuples": [{
///                 "server_group_id": default_server_group.id,
///             }],
///         },
///         "order": 9,
///         "type": "ForwardGroup",
///     }])
/// ids = alicloud.alb.get_rules_output(ids=[default_rule.id])
/// pulumi.export("albRuleId", ids.rules[0].id)
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
///     var name = config.Get("name") ?? "tf-example";
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
///         LoadBalancerEdition = "Standard",
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
///     });
///
///     var defaultServerGroup = new AliCloud.Alb.ServerGroup("default", new()
///     {
///         Protocol = "HTTP",
///         VpcId = defaultNetwork.Id,
///         ServerGroupName = name,
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         HealthCheckConfig = new AliCloud.Alb.Inputs.ServerGroupHealthCheckConfigArgs
///         {
///             HealthCheckEnabled = false,
///         },
///         StickySessionConfig = new AliCloud.Alb.Inputs.ServerGroupStickySessionConfigArgs
///         {
///             StickySessionEnabled = false,
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///         },
///     });
///
///     var defaultListener = new AliCloud.Alb.Listener("default", new()
///     {
///         LoadBalancerId = defaultLoadBalancer.Id,
///         ListenerProtocol = "HTTP",
///         ListenerPort = 80,
///         ListenerDescription = name,
///         DefaultActions = new[]
///         {
///             new AliCloud.Alb.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "ForwardGroup",
///                 ForwardGroupConfig = new AliCloud.Alb.Inputs.ListenerDefaultActionForwardGroupConfigArgs
///                 {
///                     ServerGroupTuples = new[]
///                     {
///                         new AliCloud.Alb.Inputs.ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs
///                         {
///                             ServerGroupId = defaultServerGroup.Id,
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultRule = new AliCloud.Alb.Rule("default", new()
///     {
///         RuleName = name,
///         ListenerId = defaultListener.Id,
///         Priority = 555,
///         RuleConditions = new[]
///         {
///             new AliCloud.Alb.Inputs.RuleRuleConditionArgs
///             {
///                 CookieConfig = new AliCloud.Alb.Inputs.RuleRuleConditionCookieConfigArgs
///                 {
///                     Values = new[]
///                     {
///                         new AliCloud.Alb.Inputs.RuleRuleConditionCookieConfigValueArgs
///                         {
///                             Key = "created",
///                             Value = "tf",
///                         },
///                     },
///                 },
///                 Type = "Cookie",
///             },
///         },
///         RuleActions = new[]
///         {
///             new AliCloud.Alb.Inputs.RuleRuleActionArgs
///             {
///                 ForwardGroupConfig = new AliCloud.Alb.Inputs.RuleRuleActionForwardGroupConfigArgs
///                 {
///                     ServerGroupTuples = new[]
///                     {
///                         new AliCloud.Alb.Inputs.RuleRuleActionForwardGroupConfigServerGroupTupleArgs
///                         {
///                             ServerGroupId = defaultServerGroup.Id,
///                         },
///                     },
///                 },
///                 Order = 9,
///                 Type = "ForwardGroup",
///             },
///         },
///     });
///
///     var ids = AliCloud.Alb.GetRules.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultRule.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["albRuleId"] = ids.Apply(getRulesResult => getRulesResult.Rules[0]?.Id),
///     };
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
/// 		name := "tf-example"
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
/// 			LoadBalancerEdition:  pulumi.String("Standard"),
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServerGroup, err := alb.NewServerGroup(ctx, "default", &alb.ServerGroupArgs{
/// 			Protocol:        pulumi.String("HTTP"),
/// 			VpcId:           defaultNetwork.ID(),
/// 			ServerGroupName: pulumi.String(name),
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 			HealthCheckConfig: &alb.ServerGroupHealthCheckConfigArgs{
/// 				HealthCheckEnabled: pulumi.Bool(false),
/// 			},
/// 			StickySessionConfig: &alb.ServerGroupStickySessionConfigArgs{
/// 				StickySessionEnabled: pulumi.Bool(false),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultListener, err := alb.NewListener(ctx, "default", &alb.ListenerArgs{
/// 			LoadBalancerId:      defaultLoadBalancer.ID(),
/// 			ListenerProtocol:    pulumi.String("HTTP"),
/// 			ListenerPort:        pulumi.Int(80),
/// 			ListenerDescription: pulumi.String(name),
/// 			DefaultActions: alb.ListenerDefaultActionArray{
/// 				&alb.ListenerDefaultActionArgs{
/// 					Type: pulumi.String("ForwardGroup"),
/// 					ForwardGroupConfig: &alb.ListenerDefaultActionForwardGroupConfigArgs{
/// 						ServerGroupTuples: alb.ListenerDefaultActionForwardGroupConfigServerGroupTupleArray{
/// 							&alb.ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs{
/// 								ServerGroupId: defaultServerGroup.ID(),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRule, err := alb.NewRule(ctx, "default", &alb.RuleArgs{
/// 			RuleName:   pulumi.String(name),
/// 			ListenerId: defaultListener.ID(),
/// 			Priority:   pulumi.Int(555),
/// 			RuleConditions: alb.RuleRuleConditionArray{
/// 				&alb.RuleRuleConditionArgs{
/// 					CookieConfig: &alb.RuleRuleConditionCookieConfigArgs{
/// 						Values: alb.RuleRuleConditionCookieConfigValueArray{
/// 							&alb.RuleRuleConditionCookieConfigValueArgs{
/// 								Key:   pulumi.String("created"),
/// 								Value: pulumi.String("tf"),
/// 							},
/// 						},
/// 					},
/// 					Type: pulumi.String("Cookie"),
/// 				},
/// 			},
/// 			RuleActions: alb.RuleRuleActionArray{
/// 				&alb.RuleRuleActionArgs{
/// 					ForwardGroupConfig: &alb.RuleRuleActionForwardGroupConfigArgs{
/// 						ServerGroupTuples: alb.RuleRuleActionForwardGroupConfigServerGroupTupleArray{
/// 							&alb.RuleRuleActionForwardGroupConfigServerGroupTupleArgs{
/// 								ServerGroupId: defaultServerGroup.ID(),
/// 							},
/// 						},
/// 					},
/// 					Order: pulumi.Int(9),
/// 					Type:  pulumi.String("ForwardGroup"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := alb.GetRulesOutput(ctx, alb.GetRulesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultRule.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("albRuleId", ids.ApplyT(func(ids alb.GetRulesResult) (*string, error) {
/// 			return &ids.Rules[0].Id, nil
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
/// import com.pulumi.alicloud.alb.ServerGroup;
/// import com.pulumi.alicloud.alb.ServerGroupArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupHealthCheckConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupStickySessionConfigArgs;
/// import com.pulumi.alicloud.alb.Listener;
/// import com.pulumi.alicloud.alb.ListenerArgs;
/// import com.pulumi.alicloud.alb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.alicloud.alb.inputs.ListenerDefaultActionForwardGroupConfigArgs;
/// import com.pulumi.alicloud.alb.Rule;
/// import com.pulumi.alicloud.alb.RuleArgs;
/// import com.pulumi.alicloud.alb.inputs.RuleRuleConditionArgs;
/// import com.pulumi.alicloud.alb.inputs.RuleRuleConditionCookieConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.RuleRuleActionArgs;
/// import com.pulumi.alicloud.alb.inputs.RuleRuleActionForwardGroupConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.GetRulesArgs;
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
///         final var name = config.get("name").orElse("tf-example");
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
///             .loadBalancerEdition("Standard")
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
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .protocol("HTTP")
///             .vpcId(defaultNetwork.id())
///             .serverGroupName(name)
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .healthCheckConfig(ServerGroupHealthCheckConfigArgs.builder()
///                 .healthCheckEnabled(false)
///                 .build())
///             .stickySessionConfig(ServerGroupStickySessionConfigArgs.builder()
///                 .stickySessionEnabled(false)
///                 .build())
///             .tags(Map.of("Created", "TF"))
///             .build());
///
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .loadBalancerId(defaultLoadBalancer.id())
///             .listenerProtocol("HTTP")
///             .listenerPort(80)
///             .listenerDescription(name)
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .type("ForwardGroup")
///                 .forwardGroupConfig(ListenerDefaultActionForwardGroupConfigArgs.builder()
///                     .serverGroupTuples(ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs.builder()
///                         .serverGroupId(defaultServerGroup.id())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultRule = new Rule("defaultRule", RuleArgs.builder()
///             .ruleName(name)
///             .listenerId(defaultListener.id())
///             .priority(555)
///             .ruleConditions(RuleRuleConditionArgs.builder()
///                 .cookieConfig(RuleRuleConditionCookieConfigArgs.builder()
///                     .values(RuleRuleConditionCookieConfigValueArgs.builder()
///                         .key("created")
///                         .value("tf")
///                         .build())
///                     .build())
///                 .type("Cookie")
///                 .build())
///             .ruleActions(RuleRuleActionArgs.builder()
///                 .forwardGroupConfig(RuleRuleActionForwardGroupConfigArgs.builder()
///                     .serverGroupTuples(RuleRuleActionForwardGroupConfigServerGroupTupleArgs.builder()
///                         .serverGroupId(defaultServerGroup.id())
///                         .build())
///                     .build())
///                 .order(9)
///                 .type("ForwardGroup")
///                 .build())
///             .build());
///
///         final var ids = AlbFunctions.getRules(GetRulesArgs.builder()
///             .ids(defaultRule.id())
///             .build());
///
///         ctx.export("albRuleId", ids.applyValue(_ids -> _ids.rules()[0].id()));
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_rules_get_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRulesResult> getRules(
  GetRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:alb/getRules:getRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRulesResult.fromMap(result);
}

/// This data source provides the Alb Security Policies of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.130.0+.
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
/// const ids = alicloud.alb.getSecurityPolicies({});
/// export const albSecurityPolicyId1 = ids.then(ids => ids.policies?.[0]?.id);
/// const nameRegex = alicloud.alb.getSecurityPolicies({
///     nameRegex: "^my-SecurityPolicy",
/// });
/// export const albSecurityPolicyId2 = nameRegex.then(nameRegex => nameRegex.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.alb.get_security_policies()
/// pulumi.export("albSecurityPolicyId1", ids.policies[0].id)
/// name_regex = alicloud.alb.get_security_policies(name_regex="^my-SecurityPolicy")
/// pulumi.export("albSecurityPolicyId2", name_regex.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Alb.GetSecurityPolicies.Invoke();
///
///     var nameRegex = AliCloud.Alb.GetSecurityPolicies.Invoke(new()
///     {
///         NameRegex = "^my-SecurityPolicy",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["albSecurityPolicyId1"] = ids.Apply(getSecurityPoliciesResult => getSecurityPoliciesResult.Policies[0]?.Id),
///         ["albSecurityPolicyId2"] = nameRegex.Apply(getSecurityPoliciesResult => getSecurityPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := alb.GetSecurityPolicies(ctx, &alb.GetSecurityPoliciesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("albSecurityPolicyId1", ids.Policies[0].Id)
/// 		nameRegex, err := alb.GetSecurityPolicies(ctx, &alb.GetSecurityPoliciesArgs{
/// 			NameRegex: pulumi.StringRef("^my-SecurityPolicy"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("albSecurityPolicyId2", nameRegex.Policies[0].Id)
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
/// import com.pulumi.alicloud.alb.inputs.GetSecurityPoliciesArgs;
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
///         final var ids = AlbFunctions.getSecurityPolicies(GetSecurityPoliciesArgs.builder()
///             .build());
///
///         ctx.export("albSecurityPolicyId1", ids.policies()[0].id());
///         final var nameRegex = AlbFunctions.getSecurityPolicies(GetSecurityPoliciesArgs.builder()
///             .nameRegex("^my-SecurityPolicy")
///             .build());
///
///         ctx.export("albSecurityPolicyId2", nameRegex.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:alb:getSecurityPolicies
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:alb:getSecurityPolicies
///       arguments:
///         nameRegex: ^my-SecurityPolicy
/// outputs:
///   albSecurityPolicyId1: ${ids.policies[0].id}
///   albSecurityPolicyId2: ${nameRegex.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_security_policies_get_security_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityPoliciesResult> getSecurityPolicies(
  GetSecurityPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:alb/getSecurityPolicies:getSecurityPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityPoliciesResult.fromMap(result);
}

/// This data source provides the Alb Server Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.131.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultServerGroup = new alicloud.alb.ServerGroup("default", {
///     protocol: "HTTP",
///     vpcId: _default.id,
///     serverGroupName: name,
///     healthCheckConfig: {
///         healthCheckEnabled: false,
///     },
///     stickySessionConfig: {
///         stickySessionEnabled: false,
///     },
/// });
/// const ids = alicloud.alb.getServerGroupsOutput({
///     ids: [defaultServerGroup.id],
/// });
/// export const albServerGroupId0 = ids.apply(ids => ids.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_server_group = alicloud.alb.ServerGroup("default",
///     protocol="HTTP",
///     vpc_id=default.id,
///     server_group_name=name,
///     health_check_config={
///         "health_check_enabled": False,
///     },
///     sticky_session_config={
///         "sticky_session_enabled": False,
///     })
/// ids = alicloud.alb.get_server_groups_output(ids=[default_server_group.id])
/// pulumi.export("albServerGroupId0", ids.groups[0].id)
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
///     var @default = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultServerGroup = new AliCloud.Alb.ServerGroup("default", new()
///     {
///         Protocol = "HTTP",
///         VpcId = @default.Id,
///         ServerGroupName = name,
///         HealthCheckConfig = new AliCloud.Alb.Inputs.ServerGroupHealthCheckConfigArgs
///         {
///             HealthCheckEnabled = false,
///         },
///         StickySessionConfig = new AliCloud.Alb.Inputs.ServerGroupStickySessionConfigArgs
///         {
///             StickySessionEnabled = false,
///         },
///     });
///
///     var ids = AliCloud.Alb.GetServerGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultServerGroup.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["albServerGroupId0"] = ids.Apply(getServerGroupsResult => getServerGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
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
/// 		_default, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServerGroup, err := alb.NewServerGroup(ctx, "default", &alb.ServerGroupArgs{
/// 			Protocol:        pulumi.String("HTTP"),
/// 			VpcId:           _default.ID(),
/// 			ServerGroupName: pulumi.String(name),
/// 			HealthCheckConfig: &alb.ServerGroupHealthCheckConfigArgs{
/// 				HealthCheckEnabled: pulumi.Bool(false),
/// 			},
/// 			StickySessionConfig: &alb.ServerGroupStickySessionConfigArgs{
/// 				StickySessionEnabled: pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := alb.GetServerGroupsOutput(ctx, alb.GetServerGroupsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultServerGroup.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("albServerGroupId0", ids.ApplyT(func(ids alb.GetServerGroupsResult) (*string, error) {
/// 			return &ids.Groups[0].Id, nil
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.alb.ServerGroup;
/// import com.pulumi.alicloud.alb.ServerGroupArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupHealthCheckConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupStickySessionConfigArgs;
/// import com.pulumi.alicloud.alb.AlbFunctions;
/// import com.pulumi.alicloud.alb.inputs.GetServerGroupsArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .protocol("HTTP")
///             .vpcId(default_.id())
///             .serverGroupName(name)
///             .healthCheckConfig(ServerGroupHealthCheckConfigArgs.builder()
///                 .healthCheckEnabled(false)
///                 .build())
///             .stickySessionConfig(ServerGroupStickySessionConfigArgs.builder()
///                 .stickySessionEnabled(false)
///                 .build())
///             .build());
///
///         final var ids = AlbFunctions.getServerGroups(GetServerGroupsArgs.builder()
///             .ids(defaultServerGroup.id())
///             .build());
///
///         ctx.export("albServerGroupId0", ids.applyValue(_ids -> _ids.groups()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/16
///   defaultServerGroup:
///     type: alicloud:alb:ServerGroup
///     name: default
///     properties:
///       protocol: HTTP
///       vpcId: ${default.id}
///       serverGroupName: ${name}
///       healthCheckConfig:
///         healthCheckEnabled: 'false'
///       stickySessionConfig:
///         stickySessionEnabled: 'false'
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:alb:getServerGroups
///       arguments:
///         ids:
///           - ${defaultServerGroup.id}
/// outputs:
///   albServerGroupId0: ${ids.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_server_groups_get_server_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerGroupsResult> getServerGroups(
  GetServerGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:alb/getServerGroups:getServerGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerGroupsResult.fromMap(result);
}

/// This data source provides the ALB System Security Policies of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.183.0+.
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
/// const defaults = alicloud.alb.getSystemSecurityPolicies({
///     ids: ["tls_cipher_policy_1_0"],
/// });
/// export const albSystemSecurityPolicyId1 = defaults.then(defaults => defaults.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// defaults = alicloud.alb.get_system_security_policies(ids=["tls_cipher_policy_1_0"])
/// pulumi.export("albSystemSecurityPolicyId1", defaults.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaults = AliCloud.Alb.GetSystemSecurityPolicies.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "tls_cipher_policy_1_0",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["albSystemSecurityPolicyId1"] = defaults.Apply(getSystemSecurityPoliciesResult => getSystemSecurityPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaults, err := alb.GetSystemSecurityPolicies(ctx, &alb.GetSystemSecurityPoliciesArgs{
/// 			Ids: []string{
/// 				"tls_cipher_policy_1_0",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("albSystemSecurityPolicyId1", defaults.Policies[0].Id)
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
/// import com.pulumi.alicloud.alb.inputs.GetSystemSecurityPoliciesArgs;
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
///         final var defaults = AlbFunctions.getSystemSecurityPolicies(GetSystemSecurityPoliciesArgs.builder()
///             .ids("tls_cipher_policy_1_0")
///             .build());
///
///         ctx.export("albSystemSecurityPolicyId1", defaults.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   defaults:
///     fn::invoke:
///       function: alicloud:alb:getSystemSecurityPolicies
///       arguments:
///         ids:
///           - tls_cipher_policy_1_0
/// outputs:
///   albSystemSecurityPolicyId1: ${defaults.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_system_security_policies_get_system_security_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSystemSecurityPoliciesResult> getSystemSecurityPolicies(
  GetSystemSecurityPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:alb/getSystemSecurityPolicies:getSystemSecurityPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSystemSecurityPoliciesResult.fromMap(result);
}

/// This data source provides the available zones with the Application Load Balancer (ALB) Instance of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.132.0+.
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
/// const example = alicloud.alb.getZones({});
/// export const firstAlbZonesId = example.then(example => example.zones?.[0]?.zoneId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.alb.get_zones()
/// pulumi.export("firstAlbZonesId", example.zones[0].zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Alb.GetZones.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstAlbZonesId"] = example.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := alb.GetZones(ctx, &alb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstAlbZonesId", example.Zones[0].ZoneId)
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
///         final var example = AlbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         ctx.export("firstAlbZonesId", example.zones()[0].zoneId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:alb:getZones
///       arguments: {}
/// outputs:
///   firstAlbZonesId: ${example.zones[0].zoneId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:alb/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
