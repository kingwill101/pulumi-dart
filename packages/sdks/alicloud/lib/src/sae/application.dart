import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_config_map_mount_desc_v2.dart';
import 'application_custom_host_alias_v2.dart';
import 'application_kafka_configs.dart';
import 'application_liveness_v2.dart';
import 'application_nas_config.dart';
import 'application_oss_mount_descs_v2.dart';
import 'application_post_start_v2.dart';
import 'application_pre_stop_v2.dart';
import 'application_pvtz_discovery_svc.dart';
import 'application_readiness_v2.dart';
import 'application_state.dart';
import 'application_tomcat_config_v2.dart';
import 'application_update_strategy_v2.dart';

/// Provides a Serverless App Engine (SAE) Application resource.
///
/// For information about Serverless App Engine (SAE) Application and how to use it, see [What is Application](https://www.alibabacloud.com/help/en/sae/latest/createapplication).
///
/// > **NOTE:** Available since v1.161.0.
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
/// const region = config.get("region") || "cn-hangzhou";
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
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
///     var region = config.Get("region") ?? "cn-hangzhou";
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
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
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
/// 		_, err = sae.NewApplication(ctx, "default", &sae.ApplicationArgs{
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
///         final var region = config.get("region").orElse("cn-hangzhou");
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
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-hangzhou
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
/// Serverless App Engine (SAE) Application can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sae/application:Application example <id>
/// ```
class Application extends pulumi.CustomResource {
  /// The ARN of the RAM role required when pulling images across accounts. Only necessary if the image_url is pointing to an ACR EE instance.
  late final pulumi.Output<String> acrAssumeRoleArn;
  /// The ID of the ACR EE instance. Only necessary if the image_url is pointing to an ACR EE instance.
  late final pulumi.Output<String?> acrInstanceId;
  /// Application description information. No more than 1024 characters. **NOTE:** From version 1.211.0, `app_description` can be modified.
  late final pulumi.Output<String?> appDescription;
  /// Application Name. Combinations of numbers, letters, and dashes (-) are allowed. It must start with a letter and the maximum length is 36 characters.
  late final pulumi.Output<String> appName;
  /// The auto config. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> autoConfig;
  /// The auto enable application scaling rule. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> autoEnableApplicationScalingRule;
  /// The batch wait time.
  late final pulumi.Output<int> batchWaitTime;
  /// The change order desc.
  late final pulumi.Output<String?> changeOrderDesc;
  /// Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid.
  late final pulumi.Output<String?> command;
  /// Mirror startup command parameters. The parameters required for the above start command. For example: 1d. **NOTE:** Field `command_args` has been deprecated from provider version 1.211.0. New field `command_args_v2` instead.
  late final pulumi.Output<String> commandArgs;
  /// The parameters of the image startup command.
  late final pulumi.Output<List<String>> commandArgsV2s;
  /// ConfigMap mount description. **NOTE:** Field `config_map_mount_desc` has been deprecated from provider version 1.211.0. New field `config_map_mount_desc_v2` instead.
  late final pulumi.Output<String> configMapMountDesc;
  /// The description of the ConfigMap that is mounted to the application. A ConfigMap that is created on the ConfigMaps page of a namespace is used to inject configurations into containers. See `config_map_mount_desc_v2` below.
  late final pulumi.Output<List<ApplicationConfigMapMountDescV2>> configMapMountDescV2s;
  /// The CPU required for each instance, in millicores, cannot be 0. Valid values: `500`, `1000`, `2000`, `4000`, `8000`, `16000`, `32000`.
  late final pulumi.Output<int?> cpu;
  /// Custom host mapping in the container. For example: [{`hostName`:`samplehost`,`ip`:`127.0.0.1`}]. **NOTE:** Field `custom_host_alias` has been deprecated from provider version 1.211.0. New field `custom_host_alias_v2` instead.
  late final pulumi.Output<String> customHostAlias;
  /// The custom mapping between the hostname and IP address in the container. See `custom_host_alias_v2` below.
  late final pulumi.Output<List<ApplicationCustomHostAliasV2>> customHostAliasV2s;
  /// The deploy. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> deploy;
  /// The operating environment used by the Pandora application.
  late final pulumi.Output<String?> edasContainerVersion;
  /// The enable ahas. Valid values: `true`, `false`.
  late final pulumi.Output<String> enableAhas;
  /// The enable grey tag route. Default value: `false`. Valid values:
  late final pulumi.Output<bool> enableGreyTagRoute;
  /// Container environment variable parameters. For example,`	[{"name":"envtmp","value":"0"}]`. The value description is as follows:
  late final pulumi.Output<String> envs;
  /// The ID of the corresponding Secret.
  late final pulumi.Output<String?> imagePullSecrets;
  /// Mirror address. Only Image type applications can configure the mirror address.
  late final pulumi.Output<String?> imageUrl;
  /// The JAR package starts application parameters. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  late final pulumi.Output<String?> jarStartArgs;
  /// The JAR package starts the application option. Application default startup command: $JAVA_HOME/bin/java $JarStartOptions -jar $CATALINA_OPTS "$package_path" $JarStartArgs.
  late final pulumi.Output<String?> jarStartOptions;
  /// The JDK version that the deployment package depends on. Image type applications are not supported.
  late final pulumi.Output<String?> jdk;
  /// The logging configurations of ApsaraMQ for Kafka. See `kafka_configs` below.
  late final pulumi.Output<ApplicationKafkaConfigs?> kafkaConfigs;
  /// Container health check. Containers that fail the health check will be shut down and restored. Currently, only the method of issuing commands in the container is supported.
  /// **NOTE:** Field `liveness` has been deprecated from provider version 1.211.0. New field `liveness_v2` instead.
  late final pulumi.Output<String> liveness;
  /// The liveness check settings of the container. See `liveness_v2` below.
  late final pulumi.Output<ApplicationLivenessV2> livenessV2;
  /// The memory required for each instance, in MB, cannot be 0. One-to-one correspondence with CPU. Valid values: `1024`, `2048`, `4096`, `8192`, `12288`, `16384`, `24576`, `32768`, `65536`, `131072`.
  late final pulumi.Output<int?> memory;
  /// Select the Nacos registry. Valid values: `0`, `1`, `2`.
  late final pulumi.Output<String> microRegistration;
  /// Minimum Survival Instance Percentage. **NOTE:** When `min_ready_instances` and `min_ready_instance_ratio` are passed at the same time, and the value of `min_ready_instance_ratio` is not -1, the `min_ready_instance_ratio` parameter shall prevail. Assuming that `min_ready_instances` is 5 and `min_ready_instance_ratio` is 50, 50 is used to calculate the minimum number of surviving instances.The value description is as follows:
  /// * `-1`: Initialization value, indicating that percentages are not used.
  /// * `0~100`: The unit is percentage, rounded up. For example, if it is set to 50%, if there are currently 5 instances, the minimum number of surviving instances is 3.
  late final pulumi.Output<int> minReadyInstanceRatio;
  /// The Minimum Available Instance. On the Change Had Promised during the Available Number of Instances to Be.
  late final pulumi.Output<int> minReadyInstances;
  /// SAE namespace ID. Only namespaces whose names are lowercase letters and dashes (-) are supported, and must start with a letter. The namespace can be obtained by calling the DescribeNamespaceList interface.
  late final pulumi.Output<String?> namespaceId;
  /// The configurations for mounting the NAS file system. See `nas_configs` below.
  late final pulumi.Output<List<ApplicationNasConfig>?> nasConfigs;
  /// OSS AccessKey ID.
  late final pulumi.Output<String?> ossAkId;
  /// OSS  AccessKey Secret.
  late final pulumi.Output<String?> ossAkSecret;
  /// OSS mount description information. **NOTE:** Field `oss_mount_descs` has been deprecated from provider version 1.211.0. New field `oss_mount_descs_v2` instead.
  late final pulumi.Output<String> ossMountDescs;
  /// The description of the mounted Object Storage Service (OSS) bucket. See `oss_mount_descs_v2` below.
  late final pulumi.Output<List<ApplicationOssMountDescsV2>> ossMountDescsV2s;
  /// Application package type. Valid values: `FatJar`, `War`, `Image`, `PhpZip`, `IMAGE_PHP_5_4`, `IMAGE_PHP_5_4_ALPINE`, `IMAGE_PHP_5_5`, `IMAGE_PHP_5_5_ALPINE`, `IMAGE_PHP_5_6`, `IMAGE_PHP_5_6_ALPINE`, `IMAGE_PHP_7_0`, `IMAGE_PHP_7_0_ALPINE`, `IMAGE_PHP_7_1`, `IMAGE_PHP_7_1_ALPINE`, `IMAGE_PHP_7_2`, `IMAGE_PHP_7_2_ALPINE`, `IMAGE_PHP_7_3`, `IMAGE_PHP_7_3_ALPINE`, `PythonZip`.
  late final pulumi.Output<String> packageType;
  /// Deployment package address. Only FatJar or War type applications can configure the deployment package address.
  late final pulumi.Output<String?> packageUrl;
  /// The version number of the deployment package. Required when the Package Type is War and FatJar.
  late final pulumi.Output<String> packageVersion;
  /// The Php environment.
  late final pulumi.Output<String?> php;
  /// The PHP application monitors the mount path, and you need to ensure that the PHP server will load the configuration file of this path. You don't need to pay attention to the configuration content, SAE will automatically render the correct configuration file.
  late final pulumi.Output<String> phpArmsConfigLocation;
  /// PHP configuration file content.
  late final pulumi.Output<String?> phpConfig;
  /// PHP application startup configuration mount path, you need to ensure that the PHP server will start using this configuration file.
  late final pulumi.Output<String?> phpConfigLocation;
  /// Execute the script after startup, the format is like: {`exec`:{`command`:[`cat`,"/etc/group"]}}. **NOTE:** Field `post_start` has been deprecated from provider version 1.211.0. New field `post_start_v2` instead.
  late final pulumi.Output<String> postStart;
  /// The script that is run immediately after the container is started. See `post_start_v2` below.
  late final pulumi.Output<ApplicationPostStartV2> postStartV2;
  /// Execute the script before stopping, the format is like: {`exec`:{`command`:[`cat`,"/etc/group"]}}. **NOTE:** Field `pre_stop` has been deprecated from provider version 1.211.0. New field `pre_stop_v2` instead.
  late final pulumi.Output<String> preStop;
  /// The script that is run before the container is stopped. See `pre_stop_v2` below.
  late final pulumi.Output<ApplicationPreStopV2> preStopV2;
  /// The programming language that is used to create the application. Valid values: `java`, `php`, `other`.
  late final pulumi.Output<String> programmingLanguage;
  /// The configurations of Kubernetes Service-based service registration and discovery. See `pvtz_discovery_svc` below.
  late final pulumi.Output<ApplicationPvtzDiscoverySvc?> pvtzDiscoverySvc;
  /// Application startup status checks, containers that fail multiple health checks will be shut down and restarted. Containers that do not pass the health check will not receive SLB traffic. For example: {`exec`:{`command`:[`sh`,"-c","cat /home/admin/start.sh"]},`initialDelaySeconds`:30,`periodSeconds`:30,"timeoutSeconds ":2}. Valid values: `command`, `initialDelaySeconds`, `periodSeconds`, `timeoutSeconds`.
  /// **NOTE:** Field `readiness` has been deprecated from provider version 1.211.0. New field `readiness_v2` instead.
  late final pulumi.Output<String> readiness;
  /// The readiness check settings of the container. If a container fails this health check multiple times, the container is stopped and then restarted. See `readiness_v2` below.
  late final pulumi.Output<ApplicationReadinessV2> readinessV2;
  /// Initial number of instances.
  late final pulumi.Output<int> replicas;
  /// Security group ID.
  late final pulumi.Output<String> securityGroupId;
  /// Configuration for log collection to SLS. Valid parameter descriptions are as follows:
  /// * `projectName`: Configures the project name on SLS.
  /// * `logDir`: Path to the logs.
  /// * `logType`: Type of logs. stdout indicates container standard output logs, and only one can be set; if not set, it means collecting file logs.
  /// * `logstoreName`: Configures the log store name on SLS.
  /// * `logtailName`: Configures the log tail name on SLS; if not specified, it means creating a new log tail.
  ///
  /// If you no longer need to use the SLS collection feature, you should set the value of this field to an empty string. There are two examples:
  /// - Using SAE automatically created SLS resources: [{"logDir":"","logType":"stdout"},{"logDir":"/tmp/a.log"}].
  /// - Using custom SLS resources: [{"projectName":"test-sls","logType":"stdout","logDir":"","logstoreName":"sae","logtailName":""},{"projectName":"test","logDir":"/tmp/a.log","logstoreName":"sae","logtailName":""}].
  ///
  /// **NOTE:** Projects that are automatically created with applications will be deleted along with the application deletion. Therefore, when selecting existing projects, you cannot choose projects automatically created by SAE.
  late final pulumi.Output<String?> slsConfigs;
  /// The status of the resource. Valid values: `RUNNING`, `STOPPED`, `UNKNOWN`.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Graceful offline timeout, the default is 30, the unit is seconds. The value range is 1~60. Valid values: [1,60].
  late final pulumi.Output<int> terminationGracePeriodSeconds;
  /// Time zone. Default value: `Asia/Shanghai`.
  late final pulumi.Output<String> timezone;
  /// Tomcat file configuration, set to "{}" means to delete the configuration:  useDefaultConfig: Whether to use a custom configuration, if it is true, it means that the custom configuration is not used; if it is false, it means that the custom configuration is used. If you do not use custom configuration, the following parameter configuration will not take effect.  contextInputType: Select the access path of the application.  war: No need to fill in the custom path, the access path of the application is the WAR package name. root: No need to fill in the custom path, the access path of the application is /. custom: You need to fill in the custom path in the custom path below. contextPath: custom path, this parameter only needs to be configured when the contextInputType type is custom.  httpPort: The port range is 1024~65535. Ports less than 1024 need Root permission to operate. Because the container is configured with Admin permissions, please fill in a port greater than 1024. If not configured, the default is 8080. maxThreads: Configure the number of connections in the connection pool, the default size is 400. uriEncoding: Tomcat encoding format, including UTF-8, ISO-8859-1, GBK and GB2312. If not set, the default is ISO-8859-1. useBodyEncoding: Whether to use BodyEncoding for URL. Valid values: `contextInputType`, `contextPath`, `httpPort`, `maxThreads`, `uriEncoding`, `useBodyEncoding`, `useDefaultConfig`.
  /// **NOTE:** Field `tomcat_config` has been deprecated from provider version 1.211.0. New field `tomcat_config_v2` instead.
  late final pulumi.Output<String> tomcatConfig;
  /// The Tomcat configuration. See `tomcat_config_v2` below.
  late final pulumi.Output<ApplicationTomcatConfigV2> tomcatConfigV2;
  /// The update strategy. **NOTE:** Field `update_strategy` has been deprecated from provider version 1.211.0. New field `update_strategy_v2` instead.
  late final pulumi.Output<String> updateStrategy;
  /// The release policy. See `update_strategy_v2` below.
  late final pulumi.Output<ApplicationUpdateStrategyV2> updateStrategyV2;
  /// The vpc id.
  late final pulumi.Output<String?> vpcId;
  /// The vswitch id. **NOTE:** From version 1.211.0, `vswitch_id` can be modified.
  late final pulumi.Output<String?> vswitchId;
  /// WAR package launch application option. Application default startup command: java $JAVA_OPTS $CATALINA_OPTS [-Options] org.apache.catalina.startup.Bootstrap "$@" start.
  late final pulumi.Output<String?> warStartOptions;
  /// The version of tomcat that the deployment package depends on. Image type applications are not supported.
  late final pulumi.Output<String?> webContainer;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_sae_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sae/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acrAssumeRoleArn = registerOutput<String>('acrAssumeRoleArn');
    this.acrInstanceId = registerOutput<String?>('acrInstanceId');
    this.appDescription = registerOutput<String?>('appDescription');
    this.appName = registerOutput<String>('appName');
    this.autoConfig = registerOutput<bool?>('autoConfig');
    this.autoEnableApplicationScalingRule = registerOutput<bool?>('autoEnableApplicationScalingRule');
    this.batchWaitTime = registerOutput<int>('batchWaitTime');
    this.changeOrderDesc = registerOutput<String?>('changeOrderDesc');
    this.command = registerOutput<String?>('command');
    this.commandArgs = registerOutput<String>('commandArgs');
    this.commandArgsV2s = registerOutput<List<String>>('commandArgsV2s');
    this.configMapMountDesc = registerOutput<String>('configMapMountDesc');
    this.configMapMountDescV2s = registerOutput<List<ApplicationConfigMapMountDescV2>>('configMapMountDescV2s');
    this.cpu = registerOutput<int?>('cpu');
    this.customHostAlias = registerOutput<String>('customHostAlias');
    this.customHostAliasV2s = registerOutput<List<ApplicationCustomHostAliasV2>>('customHostAliasV2s');
    this.deploy = registerOutput<bool?>('deploy');
    this.edasContainerVersion = registerOutput<String?>('edasContainerVersion');
    this.enableAhas = registerOutput<String>('enableAhas');
    this.enableGreyTagRoute = registerOutput<bool>('enableGreyTagRoute');
    this.envs = registerOutput<String>('envs');
    this.imagePullSecrets = registerOutput<String?>('imagePullSecrets');
    this.imageUrl = registerOutput<String?>('imageUrl');
    this.jarStartArgs = registerOutput<String?>('jarStartArgs');
    this.jarStartOptions = registerOutput<String?>('jarStartOptions');
    this.jdk = registerOutput<String?>('jdk');
    this.kafkaConfigs = registerOutput<ApplicationKafkaConfigs?>('kafkaConfigs');
    this.liveness = registerOutput<String>('liveness');
    this.livenessV2 = registerOutput<ApplicationLivenessV2>('livenessV2');
    this.memory = registerOutput<int?>('memory');
    this.microRegistration = registerOutput<String>('microRegistration');
    this.minReadyInstanceRatio = registerOutput<int>('minReadyInstanceRatio');
    this.minReadyInstances = registerOutput<int>('minReadyInstances');
    this.namespaceId = registerOutput<String?>('namespaceId');
    this.nasConfigs = registerOutput<List<ApplicationNasConfig>?>('nasConfigs');
    this.ossAkId = registerOutput<String?>('ossAkId');
    this.ossAkSecret = registerOutput<String?>('ossAkSecret');
    this.ossMountDescs = registerOutput<String>('ossMountDescs');
    this.ossMountDescsV2s = registerOutput<List<ApplicationOssMountDescsV2>>('ossMountDescsV2s');
    this.packageType = registerOutput<String>('packageType');
    this.packageUrl = registerOutput<String?>('packageUrl');
    this.packageVersion = registerOutput<String>('packageVersion');
    this.php = registerOutput<String?>('php');
    this.phpArmsConfigLocation = registerOutput<String>('phpArmsConfigLocation');
    this.phpConfig = registerOutput<String?>('phpConfig');
    this.phpConfigLocation = registerOutput<String?>('phpConfigLocation');
    this.postStart = registerOutput<String>('postStart');
    this.postStartV2 = registerOutput<ApplicationPostStartV2>('postStartV2');
    this.preStop = registerOutput<String>('preStop');
    this.preStopV2 = registerOutput<ApplicationPreStopV2>('preStopV2');
    this.programmingLanguage = registerOutput<String>('programmingLanguage');
    this.pvtzDiscoverySvc = registerOutput<ApplicationPvtzDiscoverySvc?>('pvtzDiscoverySvc');
    this.readiness = registerOutput<String>('readiness');
    this.readinessV2 = registerOutput<ApplicationReadinessV2>('readinessV2');
    this.replicas = registerOutput<int>('replicas');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.slsConfigs = registerOutput<String?>('slsConfigs');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.terminationGracePeriodSeconds = registerOutput<int>('terminationGracePeriodSeconds');
    this.timezone = registerOutput<String>('timezone');
    this.tomcatConfig = registerOutput<String>('tomcatConfig');
    this.tomcatConfigV2 = registerOutput<ApplicationTomcatConfigV2>('tomcatConfigV2');
    this.updateStrategy = registerOutput<String>('updateStrategy');
    this.updateStrategyV2 = registerOutput<ApplicationUpdateStrategyV2>('updateStrategyV2');
    this.vpcId = registerOutput<String?>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.warStartOptions = registerOutput<String?>('warStartOptions');
    this.webContainer = registerOutput<String?>('webContainer');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sae/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acrAssumeRoleArn = registerOutput<String>('acrAssumeRoleArn');
    this.acrInstanceId = registerOutput<String?>('acrInstanceId');
    this.appDescription = registerOutput<String?>('appDescription');
    this.appName = registerOutput<String>('appName');
    this.autoConfig = registerOutput<bool?>('autoConfig');
    this.autoEnableApplicationScalingRule = registerOutput<bool?>('autoEnableApplicationScalingRule');
    this.batchWaitTime = registerOutput<int>('batchWaitTime');
    this.changeOrderDesc = registerOutput<String?>('changeOrderDesc');
    this.command = registerOutput<String?>('command');
    this.commandArgs = registerOutput<String>('commandArgs');
    this.commandArgsV2s = registerOutput<List<String>>('commandArgsV2s');
    this.configMapMountDesc = registerOutput<String>('configMapMountDesc');
    this.configMapMountDescV2s = registerOutput<List<ApplicationConfigMapMountDescV2>>('configMapMountDescV2s');
    this.cpu = registerOutput<int?>('cpu');
    this.customHostAlias = registerOutput<String>('customHostAlias');
    this.customHostAliasV2s = registerOutput<List<ApplicationCustomHostAliasV2>>('customHostAliasV2s');
    this.deploy = registerOutput<bool?>('deploy');
    this.edasContainerVersion = registerOutput<String?>('edasContainerVersion');
    this.enableAhas = registerOutput<String>('enableAhas');
    this.enableGreyTagRoute = registerOutput<bool>('enableGreyTagRoute');
    this.envs = registerOutput<String>('envs');
    this.imagePullSecrets = registerOutput<String?>('imagePullSecrets');
    this.imageUrl = registerOutput<String?>('imageUrl');
    this.jarStartArgs = registerOutput<String?>('jarStartArgs');
    this.jarStartOptions = registerOutput<String?>('jarStartOptions');
    this.jdk = registerOutput<String?>('jdk');
    this.kafkaConfigs = registerOutput<ApplicationKafkaConfigs?>('kafkaConfigs');
    this.liveness = registerOutput<String>('liveness');
    this.livenessV2 = registerOutput<ApplicationLivenessV2>('livenessV2');
    this.memory = registerOutput<int?>('memory');
    this.microRegistration = registerOutput<String>('microRegistration');
    this.minReadyInstanceRatio = registerOutput<int>('minReadyInstanceRatio');
    this.minReadyInstances = registerOutput<int>('minReadyInstances');
    this.namespaceId = registerOutput<String?>('namespaceId');
    this.nasConfigs = registerOutput<List<ApplicationNasConfig>?>('nasConfigs');
    this.ossAkId = registerOutput<String?>('ossAkId');
    this.ossAkSecret = registerOutput<String?>('ossAkSecret');
    this.ossMountDescs = registerOutput<String>('ossMountDescs');
    this.ossMountDescsV2s = registerOutput<List<ApplicationOssMountDescsV2>>('ossMountDescsV2s');
    this.packageType = registerOutput<String>('packageType');
    this.packageUrl = registerOutput<String?>('packageUrl');
    this.packageVersion = registerOutput<String>('packageVersion');
    this.php = registerOutput<String?>('php');
    this.phpArmsConfigLocation = registerOutput<String>('phpArmsConfigLocation');
    this.phpConfig = registerOutput<String?>('phpConfig');
    this.phpConfigLocation = registerOutput<String?>('phpConfigLocation');
    this.postStart = registerOutput<String>('postStart');
    this.postStartV2 = registerOutput<ApplicationPostStartV2>('postStartV2');
    this.preStop = registerOutput<String>('preStop');
    this.preStopV2 = registerOutput<ApplicationPreStopV2>('preStopV2');
    this.programmingLanguage = registerOutput<String>('programmingLanguage');
    this.pvtzDiscoverySvc = registerOutput<ApplicationPvtzDiscoverySvc?>('pvtzDiscoverySvc');
    this.readiness = registerOutput<String>('readiness');
    this.readinessV2 = registerOutput<ApplicationReadinessV2>('readinessV2');
    this.replicas = registerOutput<int>('replicas');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.slsConfigs = registerOutput<String?>('slsConfigs');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.terminationGracePeriodSeconds = registerOutput<int>('terminationGracePeriodSeconds');
    this.timezone = registerOutput<String>('timezone');
    this.tomcatConfig = registerOutput<String>('tomcatConfig');
    this.tomcatConfigV2 = registerOutput<ApplicationTomcatConfigV2>('tomcatConfigV2');
    this.updateStrategy = registerOutput<String>('updateStrategy');
    this.updateStrategyV2 = registerOutput<ApplicationUpdateStrategyV2>('updateStrategyV2');
    this.vpcId = registerOutput<String?>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.warStartOptions = registerOutput<String?>('warStartOptions');
    this.webContainer = registerOutput<String?>('webContainer');
  }
}
