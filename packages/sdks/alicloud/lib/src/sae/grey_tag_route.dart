import 'package:pulumi/pulumi.dart' as pulumi;
import 'grey_tag_route_args.dart';
import 'grey_tag_route_state.dart';

/// Provides a Serverless App Engine (SAE) GreyTagRoute resource.
///
/// For information about Serverless App Engine (SAE) GreyTagRoute and how to use it, see [What is GreyTagRoute](https://www.alibabacloud.com/help/en/sae/latest/create-grey-tag-route).
///
/// &gt; **NOTE:** Available since v1.160.0.
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
/// const name = config.get("name") || "tf-example";
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultGetZones = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultNetwork.id});
/// const defaultNamespace = new alicloud.sae.Namespace("default", {
///     namespaceId: _default.then(_default => `${_default.regions?.[0]?.id}:example${defaultInteger.result}`),
///     namespaceName: name,
///     namespaceDescription: name,
///     enableMicroRegistration: false,
/// });
/// const defaultApplication = new alicloud.sae.Application("default", {
///     appDescription: name,
///     appName: `${name}-${defaultInteger.result}`,
///     namespaceId: defaultNamespace.id,
///     imageUrl: _default.then(_default => `registry-vpc.${_default.regions?.[0]?.id}.aliyuncs.com/sae-demo-image/consumer:1.0`),
///     packageType: "Image",
///     securityGroupId: defaultSecurityGroup.id,
///     vpcId: defaultNetwork.id,
///     vswitchId: defaultSwitch.id,
///     timezone: "Asia/Beijing",
///     replicas: 5,
///     cpu: 500,
///     memory: 2048,
/// });
/// const defaultGreyTagRoute = new alicloud.sae.GreyTagRoute("default", {
///     greyTagRouteName: name,
///     description: name,
///     appId: defaultApplication.id,
///     scRules: [{
///         items: [{
///             type: "param",
///             name: "tfexample",
///             operator: "rawvalue",
///             value: "example",
///             cond: "==",
///         }],
///         path: "/tf/example",
///         condition: "AND",
///     }],
///     dubboRules: [{
///         items: [{
///             cond: "==",
///             expr: ".key1",
///             index: 1,
///             operator: "rawvalue",
///             value: "value1",
///         }],
///         condition: "OR",
///         group: "DUBBO",
///         methodName: "example",
///         serviceName: "com.example.service",
///         version: "1.0.0",
///     }],
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
///     name = "tf-example"
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default = alicloud.get_regions(current=True)
/// default_get_zones = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default_get_zones.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_network.id)
/// default_namespace = alicloud.sae.Namespace("default",
///     namespace_id=f"{default.regions[0].id}:example{default_integer['result']}",
///     namespace_name=name,
///     namespace_description=name,
///     enable_micro_registration=False)
/// default_application = alicloud.sae.Application("default",
///     app_description=name,
///     app_name=f"{name}-{default_integer['result']}",
///     namespace_id=default_namespace.id,
///     image_url=f"registry-vpc.{default.regions[0].id}.aliyuncs.com/sae-demo-image/consumer:1.0",
///     package_type="Image",
///     security_group_id=default_security_group.id,
///     vpc_id=default_network.id,
///     vswitch_id=default_switch.id,
///     timezone="Asia/Beijing",
///     replicas=5,
///     cpu=500,
///     memory=2048)
/// default_grey_tag_route = alicloud.sae.GreyTagRoute("default",
///     grey_tag_route_name=name,
///     description=name,
///     app_id=default_application.id,
///     sc_rules=[{
///         "items": [{
///             "type": "param",
///             "name": "tfexample",
///             "operator": "rawvalue",
///             "value": "example",
///             "cond": "==",
///         }],
///         "path": "/tf/example",
///         "condition": "AND",
///     }],
///     dubbo_rules=[{
///         "items": [{
///             "cond": "==",
///             "expr": ".key1",
///             "index": 1,
///             "operator": "rawvalue",
///             "value": "value1",
///         }],
///         "condition": "OR",
///         "group": "DUBBO",
///         "method_name": "example",
///         "service_name": "com.example.service",
///         "version": "1.0.0",
///     }])
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
///     var name = config.Get("name") ?? "tf-example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultNamespace = new AliCloud.Sae.Namespace("default", new()
///     {
///         NamespaceId = @default.Apply(@default => $"{@default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:example{defaultInteger.Result}"),
///         NamespaceName = name,
///         NamespaceDescription = name,
///         EnableMicroRegistration = false,
///     });
///
///     var defaultApplication = new AliCloud.Sae.Application("default", new()
///     {
///         AppDescription = name,
///         AppName = $"{name}-{defaultInteger.Result}",
///         NamespaceId = defaultNamespace.Id,
///         ImageUrl = @default.Apply(@default => $"registry-vpc.{@default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}.aliyuncs.com/sae-demo-image/consumer:1.0"),
///         PackageType = "Image",
///         SecurityGroupId = defaultSecurityGroup.Id,
///         VpcId = defaultNetwork.Id,
///         VswitchId = defaultSwitch.Id,
///         Timezone = "Asia/Beijing",
///         Replicas = 5,
///         Cpu = 500,
///         Memory = 2048,
///     });
///
///     var defaultGreyTagRoute = new AliCloud.Sae.GreyTagRoute("default", new()
///     {
///         GreyTagRouteName = name,
///         Description = name,
///         AppId = defaultApplication.Id,
///         ScRules = new[]
///         {
///             new AliCloud.Sae.Inputs.GreyTagRouteScRuleArgs
///             {
///                 Items = new[]
///                 {
///                     new AliCloud.Sae.Inputs.GreyTagRouteScRuleItemArgs
///                     {
///                         Type = "param",
///                         Name = "tfexample",
///                         Operator = "rawvalue",
///                         Value = "example",
///                         Cond = "==",
///                     },
///                 },
///                 Path = "/tf/example",
///                 Condition = "AND",
///             },
///         },
///         DubboRules = new[]
///         {
///             new AliCloud.Sae.Inputs.GreyTagRouteDubboRuleArgs
///             {
///                 Items = new[]
///                 {
///                     new AliCloud.Sae.Inputs.GreyTagRouteDubboRuleItemArgs
///                     {
///                         Cond = "==",
///                         Expr = ".key1",
///                         Index = 1,
///                         Operator = "rawvalue",
///                         Value = "value1",
///                     },
///                 },
///                 Condition = "OR",
///                 Group = "DUBBO",
///                 MethodName = "example",
///                 ServiceName = "com.example.service",
///                 Version = "1.0.0",
///             },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
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
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNamespace, err := sae.NewNamespace(ctx, "default", &sae.NamespaceArgs{
/// 			NamespaceId:             pulumi.Sprintf("%v:example%v", _default.Regions[0].Id, defaultInteger.Result),
/// 			NamespaceName:           pulumi.String(name),
/// 			NamespaceDescription:    pulumi.String(name),
/// 			EnableMicroRegistration: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplication, err := sae.NewApplication(ctx, "default", &sae.ApplicationArgs{
/// 			AppDescription:  pulumi.String(name),
/// 			AppName:         pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			NamespaceId:     defaultNamespace.ID(),
/// 			ImageUrl:        pulumi.Sprintf("registry-vpc.%v.aliyuncs.com/sae-demo-image/consumer:1.0", _default.Regions[0].Id),
/// 			PackageType:     pulumi.String("Image"),
/// 			SecurityGroupId: defaultSecurityGroup.ID(),
/// 			VpcId:           defaultNetwork.ID(),
/// 			VswitchId:       defaultSwitch.ID(),
/// 			Timezone:        pulumi.String("Asia/Beijing"),
/// 			Replicas:        pulumi.Int(5),
/// 			Cpu:             pulumi.Int(500),
/// 			Memory:          pulumi.Int(2048),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sae.NewGreyTagRoute(ctx, "default", &sae.GreyTagRouteArgs{
/// 			GreyTagRouteName: pulumi.String(name),
/// 			Description:      pulumi.String(name),
/// 			AppId:            defaultApplication.ID(),
/// 			ScRules: sae.GreyTagRouteScRuleArray{
/// 				&sae.GreyTagRouteScRuleArgs{
/// 					Items: sae.GreyTagRouteScRuleItemArray{
/// 						&sae.GreyTagRouteScRuleItemArgs{
/// 							Type:     pulumi.String("param"),
/// 							Name:     pulumi.String("tfexample"),
/// 							Operator: pulumi.String("rawvalue"),
/// 							Value:    pulumi.String("example"),
/// 							Cond:     pulumi.String("=="),
/// 						},
/// 					},
/// 					Path:      pulumi.String("/tf/example"),
/// 					Condition: pulumi.String("AND"),
/// 				},
/// 			},
/// 			DubboRules: sae.GreyTagRouteDubboRuleArray{
/// 				&sae.GreyTagRouteDubboRuleArgs{
/// 					Items: sae.GreyTagRouteDubboRuleItemArray{
/// 						&sae.GreyTagRouteDubboRuleItemArgs{
/// 							Cond:     pulumi.String("=="),
/// 							Expr:     pulumi.String(".key1"),
/// 							Index:    pulumi.Int(1),
/// 							Operator: pulumi.String("rawvalue"),
/// 							Value:    pulumi.String("value1"),
/// 						},
/// 					},
/// 					Condition:   pulumi.String("OR"),
/// 					Group:       pulumi.String("DUBBO"),
/// 					MethodName:  pulumi.String("example"),
/// 					ServiceName: pulumi.String("com.example.service"),
/// 					Version:     pulumi.String("1.0.0"),
/// 				},
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.sae.Namespace;
/// import com.pulumi.alicloud.sae.NamespaceArgs;
/// import com.pulumi.alicloud.sae.Application;
/// import com.pulumi.alicloud.sae.ApplicationArgs;
/// import com.pulumi.alicloud.sae.GreyTagRoute;
/// import com.pulumi.alicloud.sae.GreyTagRouteArgs;
/// import com.pulumi.alicloud.sae.inputs.GreyTagRouteScRuleArgs;
/// import com.pulumi.alicloud.sae.inputs.GreyTagRouteDubboRuleArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(defaultGetZones.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultNamespace = new Namespace("defaultNamespace", NamespaceArgs.builder()
///             .namespaceId(String.format("%s:example%s", default_.regions()[0].id(),defaultInteger.result()))
///             .namespaceName(name)
///             .namespaceDescription(name)
///             .enableMicroRegistration(false)
///             .build());
///
///         var defaultApplication = new Application("defaultApplication", ApplicationArgs.builder()
///             .appDescription(name)
///             .appName(String.format("%s-%s", name,defaultInteger.result()))
///             .namespaceId(defaultNamespace.id())
///             .imageUrl(String.format("registry-vpc.%s.aliyuncs.com/sae-demo-image/consumer:1.0", default_.regions()[0].id()))
///             .packageType("Image")
///             .securityGroupId(defaultSecurityGroup.id())
///             .vpcId(defaultNetwork.id())
///             .vswitchId(defaultSwitch.id())
///             .timezone("Asia/Beijing")
///             .replicas(5)
///             .cpu(500)
///             .memory(2048)
///             .build());
///
///         var defaultGreyTagRoute = new GreyTagRoute("defaultGreyTagRoute", GreyTagRouteArgs.builder()
///             .greyTagRouteName(name)
///             .description(name)
///             .appId(defaultApplication.id())
///             .scRules(GreyTagRouteScRuleArgs.builder()
///                 .items(GreyTagRouteScRuleItemArgs.builder()
///                     .type("param")
///                     .name("tfexample")
///                     .operator("rawvalue")
///                     .value("example")
///                     .cond("==")
///                     .build())
///                 .path("/tf/example")
///                 .condition("AND")
///                 .build())
///             .dubboRules(GreyTagRouteDubboRuleArgs.builder()
///                 .items(GreyTagRouteDubboRuleItemArgs.builder()
///                     .cond("==")
///                     .expr(".key1")
///                     .index(1)
///                     .operator("rawvalue")
///                     .value("value1")
///                     .build())
///                 .condition("OR")
///                 .group("DUBBO")
///                 .methodName("example")
///                 .serviceName("com.example.service")
///                 .version("1.0.0")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${defaultGetZones.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///   defaultNamespace:
///     type: alicloud:sae:Namespace
///     name: default
///     properties:
///       namespaceId: ${default.regions[0].id}:example${defaultInteger.result}
///       namespaceName: ${name}
///       namespaceDescription: ${name}
///       enableMicroRegistration: false
///   defaultApplication:
///     type: alicloud:sae:Application
///     name: default
///     properties:
///       appDescription: ${name}
///       appName: ${name}-${defaultInteger.result}
///       namespaceId: ${defaultNamespace.id}
///       imageUrl: registry-vpc.${default.regions[0].id}.aliyuncs.com/sae-demo-image/consumer:1.0
///       packageType: Image
///       securityGroupId: ${defaultSecurityGroup.id}
///       vpcId: ${defaultNetwork.id}
///       vswitchId: ${defaultSwitch.id}
///       timezone: Asia/Beijing
///       replicas: '5'
///       cpu: '500'
///       memory: '2048'
///   defaultGreyTagRoute:
///     type: alicloud:sae:GreyTagRoute
///     name: default
///     properties:
///       greyTagRouteName: ${name}
///       description: ${name}
///       appId: ${defaultApplication.id}
///       scRules:
///         - items:
///             - type: param
///               name: tfexample
///               operator: rawvalue
///               value: example
///               cond: ==
///           path: /tf/example
///           condition: AND
///       dubboRules:
///         - items:
///             - cond: ==
///               expr: .key1
///               index: '1'
///               operator: rawvalue
///               value: value1
///           condition: OR
///           group: DUBBO
///           methodName: example
///           serviceName: com.example.service
///           version: 1.0.0
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
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
/// Serverless App Engine (SAE) GreyTagRoute can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sae/greyTagRoute:GreyTagRoute example <id>
/// ```
class GreyTagRoute extends pulumi.CustomResource {
  /// The ID  of the SAE Application.
  late final pulumi.Output<String> appId;
  /// The description of GreyTagRoute.
  late final pulumi.Output<String?> description;
  /// The grayscale rule created for Dubbo Application. See `dubbo_rules` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> dubboRules;
  /// The name of GreyTagRoute.
  late final pulumi.Output<String> greyTagRouteName;
  /// The grayscale rule created for SpringCloud Application. See `sc_rules` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> scRules;

  /// Creates a new [GreyTagRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GreyTagRoute]. {@macro pulumi_sae_grey_tag_route_grey_tag_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GreyTagRoute(
    String name, {
    GreyTagRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sae/greyTagRoute:GreyTagRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appId = registerOutput<String>('appId');
    description = registerOutput<String?>('description');
    dubboRules = registerOutput<List<Map<String, dynamic>>?>('dubboRules');
    greyTagRouteName = registerOutput<String>('greyTagRouteName');
    scRules = registerOutput<List<Map<String, dynamic>>?>('scRules');
  }

  /// Gets an existing [GreyTagRoute] resource's state with the given [name] and [id].
  static GreyTagRoute get(
    String name,
    pulumi.Input<String> id, {
    GreyTagRouteState? state,
  }) {
    return GreyTagRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GreyTagRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sae/greyTagRoute:GreyTagRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appId = registerOutput<String>('appId');
    description = registerOutput<String?>('description');
    dubboRules = registerOutput<List<Map<String, dynamic>>?>('dubboRules');
    greyTagRouteName = registerOutput<String>('greyTagRouteName');
    scRules = registerOutput<List<Map<String, dynamic>>?>('scRules');
  }
}
