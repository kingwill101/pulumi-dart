import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_args.dart';
import 'ingress_default_rule.dart';
import 'ingress_state.dart';

/// Provides a Serverless App Engine (SAE) Ingress resource.
///
/// For information about Serverless App Engine (SAE) Ingress and how to use it, see [What is Ingress](https://next.api.aliyun.com/api/sae/2019-05-06/CreateIngress).
///
/// &gt; **NOTE:** Available since v1.137.0.
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
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
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
/// const defaultApplicationLoadBalancer = new alicloud.slb.ApplicationLoadBalancer("default", {
///     loadBalancerName: name,
///     vswitchId: defaultSwitch.id,
///     loadBalancerSpec: "slb.s2.small",
///     addressType: "intranet",
/// });
/// const defaultIngress = new alicloud.sae.Ingress("default", {
///     slbId: defaultApplicationLoadBalancer.id,
///     namespaceId: defaultNamespace.id,
///     listenerPort: 80,
///     rules: [{
///         appId: defaultApplication.id,
///         containerPort: 443,
///         domain: "www.alicloud.com",
///         appName: defaultApplication.appName,
///         path: "/",
///     }],
///     defaultRule: {
///         appId: defaultApplication.id,
///         containerPort: 443,
///     },
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
/// default = alicloud.get_regions(current=True)
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
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
/// default_application_load_balancer = alicloud.slb.ApplicationLoadBalancer("default",
///     load_balancer_name=name,
///     vswitch_id=default_switch.id,
///     load_balancer_spec="slb.s2.small",
///     address_type="intranet")
/// default_ingress = alicloud.sae.Ingress("default",
///     slb_id=default_application_load_balancer.id,
///     namespace_id=default_namespace.id,
///     listener_port=80,
///     rules=[{
///         "app_id": default_application.id,
///         "container_port": 443,
///         "domain": "www.alicloud.com",
///         "app_name": default_application.app_name,
///         "path": "/",
///     }],
///     default_rule={
///         "app_id": default_application.id,
///         "container_port": 443,
///     })
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
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
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
///     var defaultApplicationLoadBalancer = new AliCloud.Slb.ApplicationLoadBalancer("default", new()
///     {
///         LoadBalancerName = name,
///         VswitchId = defaultSwitch.Id,
///         LoadBalancerSpec = "slb.s2.small",
///         AddressType = "intranet",
///     });
///
///     var defaultIngress = new AliCloud.Sae.Ingress("default", new()
///     {
///         SlbId = defaultApplicationLoadBalancer.Id,
///         NamespaceId = defaultNamespace.Id,
///         ListenerPort = 80,
///         Rules = new[]
///         {
///             new AliCloud.Sae.Inputs.IngressRuleArgs
///             {
///                 AppId = defaultApplication.Id,
///                 ContainerPort = 443,
///                 Domain = "www.alicloud.com",
///                 AppName = defaultApplication.AppName,
///                 Path = "/",
///             },
///         },
///         DefaultRule = new AliCloud.Sae.Inputs.IngressDefaultRuleArgs
///         {
///             AppId = defaultApplication.Id,
///             ContainerPort = 443,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
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
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
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
/// 		defaultApplicationLoadBalancer, err := slb.NewApplicationLoadBalancer(ctx, "default", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(name),
/// 			VswitchId:        defaultSwitch.ID(),
/// 			LoadBalancerSpec: pulumi.String("slb.s2.small"),
/// 			AddressType:      pulumi.String("intranet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sae.NewIngress(ctx, "default", &sae.IngressArgs{
/// 			SlbId:        defaultApplicationLoadBalancer.ID(),
/// 			NamespaceId:  defaultNamespace.ID(),
/// 			ListenerPort: pulumi.Int(80),
/// 			Rules: sae.IngressRuleArray{
/// 				&sae.IngressRuleArgs{
/// 					AppId:         defaultApplication.ID(),
/// 					ContainerPort: pulumi.Int(443),
/// 					Domain:        pulumi.String("www.alicloud.com"),
/// 					AppName:       defaultApplication.AppName,
/// 					Path:          pulumi.String("/"),
/// 				},
/// 			},
/// 			DefaultRule: &sae.IngressDefaultRuleArgs{
/// 				AppId:         defaultApplication.ID(),
/// 				ContainerPort: pulumi.Int(443),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
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
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.sae.Ingress;
/// import com.pulumi.alicloud.sae.IngressArgs;
/// import com.pulumi.alicloud.sae.inputs.IngressRuleArgs;
/// import com.pulumi.alicloud.sae.inputs.IngressDefaultRuleArgs;
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
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
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
///         var defaultApplicationLoadBalancer = new ApplicationLoadBalancer("defaultApplicationLoadBalancer", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .vswitchId(defaultSwitch.id())
///             .loadBalancerSpec("slb.s2.small")
///             .addressType("intranet")
///             .build());
///
///         var defaultIngress = new Ingress("defaultIngress", IngressArgs.builder()
///             .slbId(defaultApplicationLoadBalancer.id())
///             .namespaceId(defaultNamespace.id())
///             .listenerPort(80)
///             .rules(IngressRuleArgs.builder()
///                 .appId(defaultApplication.id())
///                 .containerPort(443)
///                 .domain("www.alicloud.com")
///                 .appName(defaultApplication.appName())
///                 .path("/")
///                 .build())
///             .defaultRule(IngressDefaultRuleArgs.builder()
///                 .appId(defaultApplication.id())
///                 .containerPort(443)
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
///   defaultApplicationLoadBalancer:
///     type: alicloud:slb:ApplicationLoadBalancer
///     name: default
///     properties:
///       loadBalancerName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       loadBalancerSpec: slb.s2.small
///       addressType: intranet
///   defaultIngress:
///     type: alicloud:sae:Ingress
///     name: default
///     properties:
///       slbId: ${defaultApplicationLoadBalancer.id}
///       namespaceId: ${defaultNamespace.id}
///       listenerPort: '80'
///       rules:
///         - appId: ${defaultApplication.id}
///           containerPort: '443'
///           domain: www.alicloud.com
///           appName: ${defaultApplication.appName}
///           path: /
///       defaultRule:
///         appId: ${defaultApplication.id}
///         containerPort: '443'
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
/// Serverless App Engine (SAE) Ingress can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sae/ingress:Ingress example <id>
/// ```
class Ingress extends pulumi.CustomResource {
  /// The certificate ID of the HTTPS listener. The `cert_id` takes effect only when `load_balance_type` is set to `clb`.
  late final pulumi.Output<String?> certId;

  /// The certificate IDs of the HTTPS listener, and multiple certificate IDs are separated by commas. The `cert_ids` takes effect only when `load_balance_type` is set to `alb`.
  late final pulumi.Output<String?> certIds;

  /// Default Rule. See `default_rule` below.
  late final pulumi.Output<IngressDefaultRule?> defaultRule;

  /// Description.
  late final pulumi.Output<String?> description;

  /// SLB listening port.
  late final pulumi.Output<int> listenerPort;

  /// The protocol that is used to forward requests. Default value: `HTTP`. Valid values: `HTTP`, `HTTPS`.
  late final pulumi.Output<String> listenerProtocol;

  /// The type of the SLB instance. Default value: `clb`. Valid values: `clb`, `alb`.
  late final pulumi.Output<String> loadBalanceType;

  /// The ID of Namespace. It can contain 2 to 32 lowercase characters.The value is in format `{RegionId}:{namespace}`.
  late final pulumi.Output<String> namespaceId;

  /// Forwarding rules. Forward traffic to the specified application according to the domain name and path. See `rules` below.
  late final pulumi.Output<List<Map<String, dynamic>>> rules;

  /// SLB ID.
  late final pulumi.Output<String> slbId;

  /// Creates a new [Ingress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ingress]. {@macro pulumi_sae_ingress_ingress_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ingress(
    String name, {
    IngressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sae/ingress:Ingress',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certId = registerOutput<String?>('certId');
    certIds = registerOutput<String?>('certIds');
    defaultRule = registerOutput<IngressDefaultRule?>(
      'defaultRule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IngressDefaultRule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    listenerPort = registerOutput<int>('listenerPort');
    listenerProtocol = registerOutput<String>('listenerProtocol');
    loadBalanceType = registerOutput<String>('loadBalanceType');
    namespaceId = registerOutput<String>('namespaceId');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    slbId = registerOutput<String>('slbId');
  }

  /// Gets an existing [Ingress] resource's state with the given [name] and [id].
  static Ingress get(
    String name,
    pulumi.Input<String> id, {
    IngressState? state,
  }) {
    return Ingress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ingress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sae/ingress:Ingress',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certId = registerOutput<String?>('certId');
    certIds = registerOutput<String?>('certIds');
    defaultRule = registerOutput<IngressDefaultRule?>(
      'defaultRule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IngressDefaultRule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    listenerPort = registerOutput<int>('listenerPort');
    listenerProtocol = registerOutput<String>('listenerProtocol');
    loadBalanceType = registerOutput<String>('loadBalanceType');
    namespaceId = registerOutput<String>('namespaceId');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    slbId = registerOutput<String>('slbId');
  }
}
