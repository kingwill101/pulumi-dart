import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_scaling_rules_args.dart';
import 'get_application_scaling_rules_result.dart';
import 'get_applications_args.dart';
import 'get_applications_result.dart';
import 'get_config_maps_args.dart';
import 'get_config_maps_result.dart';
import 'get_grey_tag_routes_args.dart';
import 'get_grey_tag_routes_result.dart';
import 'get_ingresses_args.dart';
import 'get_ingresses_result.dart';
import 'get_instance_specifications_args.dart';
import 'get_instance_specifications_result.dart';
import 'get_namespaces_args.dart';
import 'get_namespaces_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// This data source provides the Sae Application Scaling Rules of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.159.0+.
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
/// const ids = alicloud.sae.getApplicationScalingRules({
///     appId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const saeApplicationScalingRuleId1 = ids.then(ids => ids.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.sae.get_application_scaling_rules(app_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("saeApplicationScalingRuleId1", ids.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Sae.GetApplicationScalingRules.Invoke(new()
///     {
///         AppId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["saeApplicationScalingRuleId1"] = ids.Apply(getApplicationScalingRulesResult => getApplicationScalingRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := sae.GetApplicationScalingRules(ctx, &sae.GetApplicationScalingRulesArgs{
/// 			AppId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("saeApplicationScalingRuleId1", ids.Rules[0].Id)
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
/// import com.pulumi.alicloud.sae.SaeFunctions;
/// import com.pulumi.alicloud.sae.inputs.GetApplicationScalingRulesArgs;
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
///         final var ids = SaeFunctions.getApplicationScalingRules(GetApplicationScalingRulesArgs.builder()
///             .appId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("saeApplicationScalingRuleId1", ids.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:sae:getApplicationScalingRules
///       arguments:
///         appId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   saeApplicationScalingRuleId1: ${ids.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sae_get_application_scaling_rules_get_application_scaling_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationScalingRulesResult> getApplicationScalingRules(
  GetApplicationScalingRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sae/getApplicationScalingRules:getApplicationScalingRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationScalingRulesResult.fromMap(result);
}

/// This data source provides the Sae Applications of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.161.0+.
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
/// const name = config.get("name") || "tf-testacc";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const vpc = new alicloud.vpc.Network("vpc", {
///     vpcName: "tf_testacc",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const vsw = new alicloud.vpc.Switch("vsw", {
///     vpcId: vpc.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultNamespace = new alicloud.sae.Namespace("default", {
///     namespaceDescription: name,
///     namespaceId: "cn-hangzhou:tfacctest",
///     namespaceName: name,
/// });
/// const defaultApplication = new alicloud.sae.Application("default", {
///     appDescription: "tf-testaccDescription",
///     appName: "tf-testaccAppName131",
///     namespaceId: defaultNamespace.id,
///     imageUrl: "registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5",
///     packageType: "Image",
///     vswitchId: vsw.id,
///     timezone: "Asia/Beijing",
///     replicas: 5,
///     cpu: 500,
///     memory: 2048,
/// });
/// const defaultGetApplications = alicloud.sae.getApplicationsOutput({
///     ids: [defaultApplication.id],
/// });
/// export const saeApplicationId = defaultGetApplications.apply(defaultGetApplications => defaultGetApplications.applications?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-testacc"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// vpc = alicloud.vpc.Network("vpc",
///     vpc_name="tf_testacc",
///     cidr_block="172.16.0.0/12")
/// vsw = alicloud.vpc.Switch("vsw",
///     vpc_id=vpc.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_namespace = alicloud.sae.Namespace("default",
///     namespace_description=name,
///     namespace_id="cn-hangzhou:tfacctest",
///     namespace_name=name)
/// default_application = alicloud.sae.Application("default",
///     app_description="tf-testaccDescription",
///     app_name="tf-testaccAppName131",
///     namespace_id=default_namespace.id,
///     image_url="registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5",
///     package_type="Image",
///     vswitch_id=vsw.id,
///     timezone="Asia/Beijing",
///     replicas=5,
///     cpu=500,
///     memory=2048)
/// default_get_applications = alicloud.sae.get_applications_output(ids=[default_application.id])
/// pulumi.export("saeApplicationId", default_get_applications.applications[0].id)
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
///     var name = config.Get("name") ?? "tf-testacc";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         VpcName = "tf_testacc",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var vsw = new AliCloud.Vpc.Switch("vsw", new()
///     {
///         VpcId = vpc.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultNamespace = new AliCloud.Sae.Namespace("default", new()
///     {
///         NamespaceDescription = name,
///         NamespaceId = "cn-hangzhou:tfacctest",
///         NamespaceName = name,
///     });
///
///     var defaultApplication = new AliCloud.Sae.Application("default", new()
///     {
///         AppDescription = "tf-testaccDescription",
///         AppName = "tf-testaccAppName131",
///         NamespaceId = defaultNamespace.Id,
///         ImageUrl = "registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5",
///         PackageType = "Image",
///         VswitchId = vsw.Id,
///         Timezone = "Asia/Beijing",
///         Replicas = 5,
///         Cpu = 500,
///         Memory = 2048,
///     });
///
///     var defaultGetApplications = AliCloud.Sae.GetApplications.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultApplication.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["saeApplicationId"] = defaultGetApplications.Apply(getApplicationsResult => getApplicationsResult.Applications[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-testacc"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("tf_testacc"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vsw, err := vpc.NewSwitch(ctx, "vsw", &vpc.SwitchArgs{
/// 			VpcId:       vpc.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNamespace, err := sae.NewNamespace(ctx, "default", &sae.NamespaceArgs{
/// 			NamespaceDescription: pulumi.String(name),
/// 			NamespaceId:          pulumi.String("cn-hangzhou:tfacctest"),
/// 			NamespaceName:        pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplication, err := sae.NewApplication(ctx, "default", &sae.ApplicationArgs{
/// 			AppDescription: pulumi.String("tf-testaccDescription"),
/// 			AppName:        pulumi.String("tf-testaccAppName131"),
/// 			NamespaceId:    defaultNamespace.ID(),
/// 			ImageUrl:       pulumi.String("registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5"),
/// 			PackageType:    pulumi.String("Image"),
/// 			VswitchId:      vsw.ID(),
/// 			Timezone:       pulumi.String("Asia/Beijing"),
/// 			Replicas:       pulumi.Int(5),
/// 			Cpu:            pulumi.Int(500),
/// 			Memory:         pulumi.Int(2048),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetApplications := sae.GetApplicationsOutput(ctx, sae.GetApplicationsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultApplication.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("saeApplicationId", defaultGetApplications.ApplyT(func(defaultGetApplications sae.GetApplicationsResult) (*string, error) {
/// 			return &defaultGetApplications.Applications[0].Id, nil
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.sae.Namespace;
/// import com.pulumi.alicloud.sae.NamespaceArgs;
/// import com.pulumi.alicloud.sae.Application;
/// import com.pulumi.alicloud.sae.ApplicationArgs;
/// import com.pulumi.alicloud.sae.SaeFunctions;
/// import com.pulumi.alicloud.sae.inputs.GetApplicationsArgs;
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
///         final var name = config.get("name").orElse("tf-testacc");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .vpcName("tf_testacc")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var vsw = new Switch("vsw", SwitchArgs.builder()
///             .vpcId(vpc.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultNamespace = new Namespace("defaultNamespace", NamespaceArgs.builder()
///             .namespaceDescription(name)
///             .namespaceId("cn-hangzhou:tfacctest")
///             .namespaceName(name)
///             .build());
///
///         var defaultApplication = new Application("defaultApplication", ApplicationArgs.builder()
///             .appDescription("tf-testaccDescription")
///             .appName("tf-testaccAppName131")
///             .namespaceId(defaultNamespace.id())
///             .imageUrl("registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5")
///             .packageType("Image")
///             .vswitchId(vsw.id())
///             .timezone("Asia/Beijing")
///             .replicas(5)
///             .cpu(500)
///             .memory(2048)
///             .build());
///
///         final var defaultGetApplications = SaeFunctions.getApplications(GetApplicationsArgs.builder()
///             .ids(defaultApplication.id())
///             .build());
///
///         ctx.export("saeApplicationId", defaultGetApplications.applyValue(_defaultGetApplications -> _defaultGetApplications.applications()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-testacc
/// resources:
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: tf_testacc
///       cidrBlock: 172.16.0.0/12
///   vsw:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${vpc.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultNamespace:
///     type: alicloud:sae:Namespace
///     name: default
///     properties:
///       namespaceDescription: ${name}
///       namespaceId: cn-hangzhou:tfacctest
///       namespaceName: ${name}
///   defaultApplication:
///     type: alicloud:sae:Application
///     name: default
///     properties:
///       appDescription: tf-testaccDescription
///       appName: tf-testaccAppName131
///       namespaceId: ${defaultNamespace.id}
///       imageUrl: registry-vpc.cn-hangzhou.aliyuncs.com/lxepoo/apache-php5
///       packageType: Image
///       vswitchId: ${vsw.id}
///       timezone: Asia/Beijing
///       replicas: '5'
///       cpu: '500'
///       memory: '2048'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetApplications:
///     fn::invoke:
///       function: alicloud:sae:getApplications
///       arguments:
///         ids:
///           - ${defaultApplication.id}
/// outputs:
///   saeApplicationId: ${defaultGetApplications.applications[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sae_get_applications_get_applications_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationsResult> getApplications(
  GetApplicationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sae/getApplications:getApplications',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationsResult.fromMap(result);
}

/// This data source provides the Sae Config Maps of the current Alibaba Cloud user.
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
/// const config = new pulumi.Config();
/// const configMapName = config.get("configMapName") || "examplename";
/// const example = new alicloud.sae.Namespace("example", {
///     namespaceId: "cn-hangzhou:yourname",
///     namespaceName: "example_value",
///     namespaceDescription: "your_description",
/// });
/// const exampleConfigMap = new alicloud.sae.ConfigMap("example", {
///     data: JSON.stringify({
///         "env.home": "/root",
///         "env.shell": "/bin/sh",
///     }),
///     name: configMapName,
///     namespaceId: example.namespaceId,
/// });
/// const nameRegex = alicloud.sae.getConfigMapsOutput({
///     namespaceId: example.namespaceId,
///     nameRegex: "^example",
/// });
/// export const saeConfigMapId = nameRegex.apply(nameRegex => nameRegex.maps?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// config_map_name = config.get("configMapName")
/// if config_map_name is None:
///     config_map_name = "examplename"
/// example = alicloud.sae.Namespace("example",
///     namespace_id="cn-hangzhou:yourname",
///     namespace_name="example_value",
///     namespace_description="your_description")
/// example_config_map = alicloud.sae.ConfigMap("example",
///     data=json.dumps({
///         "env.home": "/root",
///         "env.shell": "/bin/sh",
///     }),
///     name=config_map_name,
///     namespace_id=example.namespace_id)
/// name_regex = alicloud.sae.get_config_maps_output(namespace_id=example.namespace_id,
///     name_regex="^example")
/// pulumi.export("saeConfigMapId", name_regex.maps[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var configMapName = config.Get("configMapName") ?? "examplename";
///     var example = new AliCloud.Sae.Namespace("example", new()
///     {
///         NamespaceId = "cn-hangzhou:yourname",
///         NamespaceName = "example_value",
///         NamespaceDescription = "your_description",
///     });
///
///     var exampleConfigMap = new AliCloud.Sae.ConfigMap("example", new()
///     {
///         Data = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["env.home"] = "/root",
///             ["env.shell"] = "/bin/sh",
///         }),
///         Name = configMapName,
///         NamespaceId = example.NamespaceId,
///     });
///
///     var nameRegex = AliCloud.Sae.GetConfigMaps.Invoke(new()
///     {
///         NamespaceId = example.NamespaceId,
///         NameRegex = "^example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["saeConfigMapId"] = nameRegex.Apply(getConfigMapsResult => getConfigMapsResult.Maps[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		configMapName := "examplename"
/// 		if param := cfg.Get("configMapName"); param != "" {
/// 			configMapName = param
/// 		}
/// 		example, err := sae.NewNamespace(ctx, "example", &sae.NamespaceArgs{
/// 			NamespaceId:          pulumi.String("cn-hangzhou:yourname"),
/// 			NamespaceName:        pulumi.String("example_value"),
/// 			NamespaceDescription: pulumi.String("your_description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"env.home":  "/root",
/// 			"env.shell": "/bin/sh",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = sae.NewConfigMap(ctx, "example", &sae.ConfigMapArgs{
/// 			Data:        pulumi.String(json0),
/// 			Name:        pulumi.String(configMapName),
/// 			NamespaceId: example.NamespaceId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nameRegex := sae.GetConfigMapsOutput(ctx, sae.GetConfigMapsOutputArgs{
/// 			NamespaceId: example.NamespaceId,
/// 			NameRegex:   pulumi.String("^example"),
/// 		}, nil)
/// 		ctx.Export("saeConfigMapId", nameRegex.ApplyT(func(nameRegex sae.GetConfigMapsResult) (*string, error) {
/// 			return &nameRegex.Maps[0].Id, nil
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
/// import com.pulumi.alicloud.sae.Namespace;
/// import com.pulumi.alicloud.sae.NamespaceArgs;
/// import com.pulumi.alicloud.sae.ConfigMap;
/// import com.pulumi.alicloud.sae.ConfigMapArgs;
/// import com.pulumi.alicloud.sae.SaeFunctions;
/// import com.pulumi.alicloud.sae.inputs.GetConfigMapsArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var configMapName = config.get("configMapName").orElse("examplename");
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .namespaceId("cn-hangzhou:yourname")
///             .namespaceName("example_value")
///             .namespaceDescription("your_description")
///             .build());
///
///         var exampleConfigMap = new ConfigMap("exampleConfigMap", ConfigMapArgs.builder()
///             .data(serializeJson(
///                 jsonObject(
///                     jsonProperty("env.home", "/root"),
///                     jsonProperty("env.shell", "/bin/sh")
///                 )))
///             .name(configMapName)
///             .namespaceId(example.namespaceId())
///             .build());
///
///         final var nameRegex = SaeFunctions.getConfigMaps(GetConfigMapsArgs.builder()
///             .namespaceId(example.namespaceId())
///             .nameRegex("^example")
///             .build());
///
///         ctx.export("saeConfigMapId", nameRegex.applyValue(_nameRegex -> _nameRegex.maps()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   configMapName:
///     type: string
///     default: examplename
/// resources:
///   example:
///     type: alicloud:sae:Namespace
///     properties:
///       namespaceId: cn-hangzhou:yourname
///       namespaceName: example_value
///       namespaceDescription: your_description
///   exampleConfigMap:
///     type: alicloud:sae:ConfigMap
///     name: example
///     properties:
///       data:
///         fn::toJSON:
///           env.home: /root
///           env.shell: /bin/sh
///       name: ${configMapName}
///       namespaceId: ${example.namespaceId}
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:sae:getConfigMaps
///       arguments:
///         namespaceId: ${example.namespaceId}
///         nameRegex: ^example
/// outputs:
///   saeConfigMapId: ${nameRegex.maps[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sae_get_config_maps_get_config_maps_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigMapsResult> getConfigMaps(
  GetConfigMapsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sae/getConfigMaps:getConfigMaps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigMapsResult.fromMap(result);
}

/// This data source provides the Sae GreyTagRoutes of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.160.0+.
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
/// const nameRegex = alicloud.sae.getGreyTagRoutes({
///     appId: "example_id",
///     nameRegex: "^my-GreyTagRoute",
/// });
/// export const saeGreyTagRoutesId = nameRegex.then(nameRegex => nameRegex.routes?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// name_regex = alicloud.sae.get_grey_tag_routes(app_id="example_id",
///     name_regex="^my-GreyTagRoute")
/// pulumi.export("saeGreyTagRoutesId", name_regex.routes[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nameRegex = AliCloud.Sae.GetGreyTagRoutes.Invoke(new()
///     {
///         AppId = "example_id",
///         NameRegex = "^my-GreyTagRoute",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["saeGreyTagRoutesId"] = nameRegex.Apply(getGreyTagRoutesResult => getGreyTagRoutesResult.Routes[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		nameRegex, err := sae.GetGreyTagRoutes(ctx, &sae.GetGreyTagRoutesArgs{
/// 			AppId:     "example_id",
/// 			NameRegex: pulumi.StringRef("^my-GreyTagRoute"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("saeGreyTagRoutesId", nameRegex.Routes[0].Id)
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
/// import com.pulumi.alicloud.sae.SaeFunctions;
/// import com.pulumi.alicloud.sae.inputs.GetGreyTagRoutesArgs;
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
///         final var nameRegex = SaeFunctions.getGreyTagRoutes(GetGreyTagRoutesArgs.builder()
///             .appId("example_id")
///             .nameRegex("^my-GreyTagRoute")
///             .build());
///
///         ctx.export("saeGreyTagRoutesId", nameRegex.routes()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:sae:getGreyTagRoutes
///       arguments:
///         appId: example_id
///         nameRegex: ^my-GreyTagRoute
/// outputs:
///   saeGreyTagRoutesId: ${nameRegex.routes[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sae_get_grey_tag_routes_get_grey_tag_routes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGreyTagRoutesResult> getGreyTagRoutes(
  GetGreyTagRoutesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sae/getGreyTagRoutes:getGreyTagRoutes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGreyTagRoutesResult.fromMap(result);
}

/// This data source provides the Sae Ingresses of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.137.0+.
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
/// const name = config.get("name") || "example_value";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     name: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultLoadBalancer = new alicloud.slb.LoadBalancer("default", {
///     name: name,
///     specification: "slb.s2.small",
///     vswitchId: defaultAlicloudVswitches.ids[0],
/// });
/// const desc = config.get("desc") || "example_value";
/// const namespaceId = config.get("namespaceId") || "cn-hangzhou:yourname";
/// const defaultNamespace = new alicloud.sae.Namespace("default", {
///     namespaceId: namespaceId,
///     namespaceName: name,
///     namespaceDescription: desc,
/// });
/// const defaultApplication = new alicloud.sae.Application("default", {
///     appDescription: "your_app_description",
///     appName: "your_app_name",
///     namespaceId: "your_namespace_id",
///     packageUrl: "your_package_url",
///     packageType: "your_package_url",
///     jdk: "jdk_specifications",
///     vswitchId: defaultAlicloudVswitches.ids[0],
///     replicas: "your_replicas",
///     cpu: "cpu_specifications",
///     memory: "memory_specifications",
/// });
/// const defaultIngress = new alicloud.sae.Ingress("default", {
///     slbId: defaultLoadBalancer.id,
///     namespaceId: defaultNamespace.id,
///     listenerPort: "your_listener_port",
///     rules: [{
///         appId: defaultApplication.id,
///         containerPort: "your_container_port",
///         domain: "your_domain",
///         appName: "your_name",
///         path: "your_path",
///     }],
/// });
/// const defaultGetIngresses = alicloud.sae.getIngressesOutput({
///     ids: [defaultIngress.id],
/// });
/// export const saeIngressId = defaultGetIngresses.ingressList[0].id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "example_value"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     name=name,
///     cidr_block="172.16.0.0/12")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_load_balancer = alicloud.slb.LoadBalancer("default",
///     name=name,
///     specification="slb.s2.small",
///     vswitch_id=default_alicloud_vswitches["ids"][0])
/// desc = config.get("desc")
/// if desc is None:
///     desc = "example_value"
/// namespace_id = config.get("namespaceId")
/// if namespace_id is None:
///     namespace_id = "cn-hangzhou:yourname"
/// default_namespace = alicloud.sae.Namespace("default",
///     namespace_id=namespace_id,
///     namespace_name=name,
///     namespace_description=desc)
/// default_application = alicloud.sae.Application("default",
///     app_description="your_app_description",
///     app_name="your_app_name",
///     namespace_id="your_namespace_id",
///     package_url="your_package_url",
///     package_type="your_package_url",
///     jdk="jdk_specifications",
///     vswitch_id=default_alicloud_vswitches["ids"][0],
///     replicas="your_replicas",
///     cpu="cpu_specifications",
///     memory="memory_specifications")
/// default_ingress = alicloud.sae.Ingress("default",
///     slb_id=default_load_balancer.id,
///     namespace_id=default_namespace.id,
///     listener_port="your_listener_port",
///     rules=[{
///         "app_id": default_application.id,
///         "container_port": "your_container_port",
///         "domain": "your_domain",
///         "app_name": "your_name",
///         "path": "your_path",
///     }])
/// default_get_ingresses = alicloud.sae.get_ingresses_output(ids=[default_ingress.id])
/// pulumi.export("saeIngressId", default_get_ingresses.ingress_list[0]["id"])
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
///     var name = config.Get("name") ?? "example_value";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         Name = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultLoadBalancer = new AliCloud.Slb.LoadBalancer("default", new()
///     {
///         Name = name,
///         Specification = "slb.s2.small",
///         VswitchId = defaultAlicloudVswitches.Ids[0],
///     });
///
///     var desc = config.Get("desc") ?? "example_value";
///     var namespaceId = config.Get("namespaceId") ?? "cn-hangzhou:yourname";
///     var defaultNamespace = new AliCloud.Sae.Namespace("default", new()
///     {
///         NamespaceId = namespaceId,
///         NamespaceName = name,
///         NamespaceDescription = desc,
///     });
///
///     var defaultApplication = new AliCloud.Sae.Application("default", new()
///     {
///         AppDescription = "your_app_description",
///         AppName = "your_app_name",
///         NamespaceId = "your_namespace_id",
///         PackageUrl = "your_package_url",
///         PackageType = "your_package_url",
///         Jdk = "jdk_specifications",
///         VswitchId = defaultAlicloudVswitches.Ids[0],
///         Replicas = "your_replicas",
///         Cpu = "cpu_specifications",
///         Memory = "memory_specifications",
///     });
///
///     var defaultIngress = new AliCloud.Sae.Ingress("default", new()
///     {
///         SlbId = defaultLoadBalancer.Id,
///         NamespaceId = defaultNamespace.Id,
///         ListenerPort = "your_listener_port",
///         Rules = new[]
///         {
///             new AliCloud.Sae.Inputs.IngressRuleArgs
///             {
///                 AppId = defaultApplication.Id,
///                 ContainerPort = "your_container_port",
///                 Domain = "your_domain",
///                 AppName = "your_name",
///                 Path = "your_path",
///             },
///         },
///     });
///
///     var defaultGetIngresses = AliCloud.Sae.GetIngresses.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultIngress.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["saeIngressId"] = defaultGetIngresses.Apply(getIngressesResult => getIngressesResult.IngressList[0].Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "example_value";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// Name: pulumi.String(name),
/// CidrBlock: pulumi.String("172.16.0.0/12"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("172.16.0.0/21"),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// VswitchName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// defaultLoadBalancer, err := slb.NewLoadBalancer(ctx, "default", &slb.LoadBalancerArgs{
/// Name: pulumi.String(name),
/// Specification: pulumi.String("slb.s2.small"),
/// VswitchId: pulumi.Any(defaultAlicloudVswitches.Ids[0]),
/// })
/// if err != nil {
/// return err
/// }
/// desc := "example_value";
/// if param := cfg.Get("desc"); param != ""{
/// desc = param
/// }
/// namespaceId := "cn-hangzhou:yourname";
/// if param := cfg.Get("namespaceId"); param != ""{
/// namespaceId = param
/// }
/// defaultNamespace, err := sae.NewNamespace(ctx, "default", &sae.NamespaceArgs{
/// NamespaceId: pulumi.String(namespaceId),
/// NamespaceName: pulumi.String(name),
/// NamespaceDescription: pulumi.String(desc),
/// })
/// if err != nil {
/// return err
/// }
/// defaultApplication, err := sae.NewApplication(ctx, "default", &sae.ApplicationArgs{
/// AppDescription: pulumi.String("your_app_description"),
/// AppName: pulumi.String("your_app_name"),
/// NamespaceId: pulumi.String("your_namespace_id"),
/// PackageUrl: pulumi.String("your_package_url"),
/// PackageType: pulumi.String("your_package_url"),
/// Jdk: pulumi.String("jdk_specifications"),
/// VswitchId: pulumi.Any(defaultAlicloudVswitches.Ids[0]),
/// Replicas: pulumi.Int("your_replicas"),
/// Cpu: pulumi.Int("cpu_specifications"),
/// Memory: pulumi.Int("memory_specifications"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultIngress, err := sae.NewIngress(ctx, "default", &sae.IngressArgs{
/// SlbId: defaultLoadBalancer.ID(),
/// NamespaceId: defaultNamespace.ID(),
/// ListenerPort: pulumi.Int("your_listener_port"),
/// Rules: sae.IngressRuleArray{
/// &sae.IngressRuleArgs{
/// AppId: defaultApplication.ID(),
/// ContainerPort: pulumi.Int("your_container_port"),
/// Domain: pulumi.String("your_domain"),
/// AppName: pulumi.String("your_name"),
/// Path: pulumi.String("your_path"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultGetIngresses := sae.GetIngressesOutput(ctx, sae.GetIngressesOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultIngress.ID(),
/// },
/// }, nil);
/// ctx.Export("saeIngressId", defaultGetIngresses.ApplyT(func(defaultGetIngresses sae.GetIngressesResult) (interface{}, error) {
/// return defaultGetIngresses.IngressList[0].Id, nil
/// }).(pulumi.Interface{}Output))
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.slb.LoadBalancer;
/// import com.pulumi.alicloud.slb.LoadBalancerArgs;
/// import com.pulumi.alicloud.sae.Namespace;
/// import com.pulumi.alicloud.sae.NamespaceArgs;
/// import com.pulumi.alicloud.sae.Application;
/// import com.pulumi.alicloud.sae.ApplicationArgs;
/// import com.pulumi.alicloud.sae.Ingress;
/// import com.pulumi.alicloud.sae.IngressArgs;
/// import com.pulumi.alicloud.sae.inputs.IngressRuleArgs;
/// import com.pulumi.alicloud.sae.SaeFunctions;
/// import com.pulumi.alicloud.sae.inputs.GetIngressesArgs;
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
///         final var name = config.get("name").orElse("example_value");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .name(name)
///             .specification("slb.s2.small")
///             .vswitchId(defaultAlicloudVswitches.ids()[0])
///             .build());
///
///         final var desc = config.get("desc").orElse("example_value");
///         final var namespaceId = config.get("namespaceId").orElse("cn-hangzhou:yourname");
///         var defaultNamespace = new Namespace("defaultNamespace", NamespaceArgs.builder()
///             .namespaceId(namespaceId)
///             .namespaceName(name)
///             .namespaceDescription(desc)
///             .build());
///
///         var defaultApplication = new Application("defaultApplication", ApplicationArgs.builder()
///             .appDescription("your_app_description")
///             .appName("your_app_name")
///             .namespaceId("your_namespace_id")
///             .packageUrl("your_package_url")
///             .packageType("your_package_url")
///             .jdk("jdk_specifications")
///             .vswitchId(defaultAlicloudVswitches.ids()[0])
///             .replicas("your_replicas")
///             .cpu("cpu_specifications")
///             .memory("memory_specifications")
///             .build());
///
///         var defaultIngress = new Ingress("defaultIngress", IngressArgs.builder()
///             .slbId(defaultLoadBalancer.id())
///             .namespaceId(defaultNamespace.id())
///             .listenerPort("your_listener_port")
///             .rules(IngressRuleArgs.builder()
///                 .appId(defaultApplication.id())
///                 .containerPort("your_container_port")
///                 .domain("your_domain")
///                 .appName("your_name")
///                 .path("your_path")
///                 .build())
///             .build());
///
///         final var defaultGetIngresses = SaeFunctions.getIngresses(GetIngressesArgs.builder()
///             .ids(defaultIngress.id())
///             .build());
///
///         ctx.export("saeIngressId", defaultGetIngresses.applyValue(_defaultGetIngresses -> _defaultGetIngresses.ingressList()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: example_value
///   desc:
///     type: string
///     default: example_value
///   namespaceId:
///     type: string
///     default: cn-hangzhou:yourname
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       name: ${name}
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultLoadBalancer:
///     type: alicloud:slb:LoadBalancer
///     name: default
///     properties:
///       name: ${name}
///       specification: slb.s2.small
///       vswitchId: ${defaultAlicloudVswitches.ids[0]}
///   defaultNamespace:
///     type: alicloud:sae:Namespace
///     name: default
///     properties:
///       namespaceId: ${namespaceId}
///       namespaceName: ${name}
///       namespaceDescription: ${desc}
///   defaultApplication:
///     type: alicloud:sae:Application
///     name: default
///     properties:
///       appDescription: your_app_description
///       appName: your_app_name
///       namespaceId: your_namespace_id
///       packageUrl: your_package_url
///       packageType: your_package_url
///       jdk: jdk_specifications
///       vswitchId: ${defaultAlicloudVswitches.ids[0]}
///       replicas: your_replicas
///       cpu: cpu_specifications
///       memory: memory_specifications
///   defaultIngress:
///     type: alicloud:sae:Ingress
///     name: default
///     properties:
///       slbId: ${defaultLoadBalancer.id}
///       namespaceId: ${defaultNamespace.id}
///       listenerPort: your_listener_port
///       rules:
///         - appId: ${defaultApplication.id}
///           containerPort: your_container_port
///           domain: your_domain
///           appName: your_name
///           path: your_path
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetIngresses:
///     fn::invoke:
///       function: alicloud:sae:getIngresses
///       arguments:
///         ids:
///           - ${defaultIngress.id}
/// outputs:
///   saeIngressId: ${defaultGetIngresses.ingressList[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sae_get_ingresses_get_ingresses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIngressesResult> getIngresses(
  GetIngressesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sae/getIngresses:getIngresses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIngressesResult.fromMap(result);
}

/// This data source provides the Sae Instance Specifications of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.139.0+.
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
/// const ids = alicloud.sae.getInstanceSpecifications({});
/// export const saeInstanceSpecificationId1 = ids.then(ids => ids.specifications?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.sae.get_instance_specifications()
/// pulumi.export("saeInstanceSpecificationId1", ids.specifications[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Sae.GetInstanceSpecifications.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["saeInstanceSpecificationId1"] = ids.Apply(getInstanceSpecificationsResult => getInstanceSpecificationsResult.Specifications[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := sae.GetInstanceSpecifications(ctx, &sae.GetInstanceSpecificationsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("saeInstanceSpecificationId1", ids.Specifications[0].Id)
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
/// import com.pulumi.alicloud.sae.SaeFunctions;
/// import com.pulumi.alicloud.sae.inputs.GetInstanceSpecificationsArgs;
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
///         final var ids = SaeFunctions.getInstanceSpecifications(GetInstanceSpecificationsArgs.builder()
///             .build());
///
///         ctx.export("saeInstanceSpecificationId1", ids.specifications()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:sae:getInstanceSpecifications
///       arguments: {}
/// outputs:
///   saeInstanceSpecificationId1: ${ids.specifications[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sae_get_instance_specifications_get_instance_specifications_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceSpecificationsResult> getInstanceSpecifications(
  GetInstanceSpecificationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sae/getInstanceSpecifications:getInstanceSpecifications',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceSpecificationsResult.fromMap(result);
}

/// This data source provides the Sae Namespaces of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.129.0+.
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
/// const nameRegex = alicloud.sae.getNamespaces({
///     nameRegex: "^my-Namespace",
/// });
/// export const saeNamespaceId = nameRegex.then(nameRegex => nameRegex.namespaces?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// name_regex = alicloud.sae.get_namespaces(name_regex="^my-Namespace")
/// pulumi.export("saeNamespaceId", name_regex.namespaces[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nameRegex = AliCloud.Sae.GetNamespaces.Invoke(new()
///     {
///         NameRegex = "^my-Namespace",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["saeNamespaceId"] = nameRegex.Apply(getNamespacesResult => getNamespacesResult.Namespaces[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		nameRegex, err := sae.GetNamespaces(ctx, &sae.GetNamespacesArgs{
/// 			NameRegex: pulumi.StringRef("^my-Namespace"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("saeNamespaceId", nameRegex.Namespaces[0].Id)
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
/// import com.pulumi.alicloud.sae.SaeFunctions;
/// import com.pulumi.alicloud.sae.inputs.GetNamespacesArgs;
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
///         final var nameRegex = SaeFunctions.getNamespaces(GetNamespacesArgs.builder()
///             .nameRegex("^my-Namespace")
///             .build());
///
///         ctx.export("saeNamespaceId", nameRegex.namespaces()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:sae:getNamespaces
///       arguments:
///         nameRegex: ^my-Namespace
/// outputs:
///   saeNamespaceId: ${nameRegex.namespaces[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sae_get_namespaces_get_namespaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespacesResult> getNamespaces(
  GetNamespacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sae/getNamespaces:getNamespaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespacesResult.fromMap(result);
}

/// Using this data source can open SAE service automatically. If the service has been opened, it will return opened.
///
/// For information about SAE and how to use it, see [What is SAE](https://help.aliyun.com/document_detail/125720.html).
///
/// > **NOTE:** Available in v1.120.0+
///
/// > **NOTE:** The SAE service is not support in the international site.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.sae.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.sae.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Sae.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sae.GetService(ctx, &sae.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
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
/// import com.pulumi.alicloud.sae.SaeFunctions;
/// import com.pulumi.alicloud.sae.inputs.GetServiceArgs;
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
///         final var open = SaeFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:sae:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sae_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sae/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
