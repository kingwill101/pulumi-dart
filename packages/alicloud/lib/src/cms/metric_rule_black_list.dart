import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_rule_black_list_args.dart';
import 'metric_rule_black_list_metric.dart';

/// Provides a Cloud Monitor Service Metric Rule Black List resource.
///
/// For information about Cloud Monitor Service Metric Rule Black List and how to use it, see [What is Metric Rule Black List](https://www.alibabacloud.com/help/en/cloudmonitor/latest/describemetricruleblacklist).
///
/// > **NOTE:** Available since v1.194.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "Instance",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     instanceName: name,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [defaultSecurityGroup.id],
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultMetricRuleBlackList = new alicloud.cms.MetricRuleBlackList("default", {
///     instances: [pulumi.interpolate`{"instancceId":"${defaultInstance.id}"}`],
///     metrics: [{
///         metricName: "disk_utilization",
///     }],
///     category: "ecs",
///     enableEndTime: "1799443209000",
///     namespace: "acs_ecs_dashboard",
///     enableStartTime: "1689243209000",
///     metricRuleBlackListName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_zones(available_resource_creation="Instance")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_instance = alicloud.ecs.Instance("default",
///     availability_zone=default.zones[0].id,
///     instance_name=name,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_groups=[default_security_group.id],
///     vswitch_id=default_switch.id)
/// default_metric_rule_black_list = alicloud.cms.MetricRuleBlackList("default",
///     instances=[default_instance.id.apply(lambda id: f"{{\"instancceId\":\"{id}\"}}")],
///     metrics=[{
///         "metric_name": "disk_utilization",
///     }],
///     category="ecs",
///     enable_end_time="1799443209000",
///     namespace="acs_ecs_dashboard",
///     enable_start_time="1689243209000",
///     metric_rule_black_list_name=name)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Instance",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         Owners = "system",
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         InstanceName = name,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultMetricRuleBlackList = new AliCloud.Cms.MetricRuleBlackList("default", new()
///     {
///         Instances = new[]
///         {
///             defaultInstance.Id.Apply(id => $"{{\"instancceId\":\"{id}\"}}"),
///         },
///         Metrics = new[]
///         {
///             new AliCloud.Cms.Inputs.MetricRuleBlackListMetricArgs
///             {
///                 MetricName = "disk_utilization",
///             },
///         },
///         Category = "ecs",
///         EnableEndTime = "1799443209000",
///         Namespace = "acs_ecs_dashboard",
///         EnableStartTime = "1689243209000",
///         MetricRuleBlackListName = name,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(1),
/// 			MemorySize:       pulumi.Float64Ref(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// 			Owners:    pulumi.StringRef("system"),
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
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// 			AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// 			InstanceName:     pulumi.String(name),
/// 			ImageId:          pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:     pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			VswitchId: defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cms.NewMetricRuleBlackList(ctx, "default", &cms.MetricRuleBlackListArgs{
/// 			Instances: pulumi.StringArray{
/// 				defaultInstance.ID().ApplyT(func(id string) (string, error) {
/// 					return fmt.Sprintf("{\"instancceId\":\"%v\"}", id), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			Metrics: cms.MetricRuleBlackListMetricArray{
/// 				&cms.MetricRuleBlackListMetricArgs{
/// 					MetricName: pulumi.String("disk_utilization"),
/// 				},
/// 			},
/// 			Category:                pulumi.String("ecs"),
/// 			EnableEndTime:           pulumi.String("1799443209000"),
/// 			Namespace:               pulumi.String("acs_ecs_dashboard"),
/// 			EnableStartTime:         pulumi.String("1689243209000"),
/// 			MetricRuleBlackListName: pulumi.String(name),
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.cms.MetricRuleBlackList;
/// import com.pulumi.alicloud.cms.MetricRuleBlackListArgs;
/// import com.pulumi.alicloud.cms.inputs.MetricRuleBlackListMetricArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("Instance")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .owners("system")
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
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .instanceName(name)
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(defaultSecurityGroup.id())
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultMetricRuleBlackList = new MetricRuleBlackList("defaultMetricRuleBlackList", MetricRuleBlackListArgs.builder()
///             .instances(defaultInstance.id().applyValue(_id -> String.format("{{\"instancceId\":\"%s\"}}", _id)))
///             .metrics(MetricRuleBlackListMetricArgs.builder()
///                 .metricName("disk_utilization")
///                 .build())
///             .category("ecs")
///             .enableEndTime("1799443209000")
///             .namespace("acs_ecs_dashboard")
///             .enableStartTime("1689243209000")
///             .metricRuleBlackListName(name)
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
///       zoneId: ${default.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:ecs:Instance
///     name: default
///     properties:
///       availabilityZone: ${default.zones[0].id}
///       instanceName: ${name}
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       securityGroups:
///         - ${defaultSecurityGroup.id}
///       vswitchId: ${defaultSwitch.id}
///   defaultMetricRuleBlackList:
///     type: alicloud:cms:MetricRuleBlackList
///     name: default
///     properties:
///       instances:
///         - '{"instancceId":"${defaultInstance.id}"}'
///       metrics:
///         - metricName: disk_utilization
///       category: ecs
///       enableEndTime: 1.799443209e+12
///       namespace: acs_ecs_dashboard
///       enableStartTime: 1.689243209e+12
///       metricRuleBlackListName: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: Instance
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         cpuCoreCount: 1
///         memorySize: 2
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         owners: system
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Metric Rule Black List can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/metricRuleBlackList:MetricRuleBlackList example <id>
/// ```
class MetricRuleBlackList extends pulumi.CustomResource {
  /// Cloud service classification. For example, Redis includes kvstore_standard, kvstore_sharding, and kvstore_splitrw.
  late final pulumi.Output<String> category;
  /// The timestamp for creating an alert blacklist policy.Unit: milliseconds.
  late final pulumi.Output<String> createTime;
  /// The effective time range of the alert blacklist policy.
  late final pulumi.Output<String?> effectiveTime;
  /// The start timestamp of the alert blacklist policy.Unit: milliseconds.
  late final pulumi.Output<String?> enableEndTime;
  /// The end timestamp of the alert blacklist policy.Unit: milliseconds.
  late final pulumi.Output<String?> enableStartTime;
  /// The list of instances of cloud services specified in the alert blacklist policy.
  late final pulumi.Output<List<String>> instances;
  /// The status of the alert blacklist policy. Value:-true: enabled.-false: disabled.
  late final pulumi.Output<bool> isEnable;
  /// The ID of the blacklist policy.
  late final pulumi.Output<String> metricRuleBlackListId;
  /// The name of the alert blacklist policy.
  late final pulumi.Output<String> metricRuleBlackListName;
  /// Monitoring metrics in the instance. See `metrics` below.
  late final pulumi.Output<List<MetricRuleBlackListMetric>?> metrics;
  /// The data namespace of the cloud service.
  late final pulumi.Output<String> namespace;
  /// The effective range of the alert blacklist policy. Value:-USER: The alert blacklist policy only takes effect in the current Alibaba cloud account.-GROUP: The alert blacklist policy takes effect in the specified application GROUP.
  late final pulumi.Output<String> scopeType;
  /// Application Group ID list. The format is JSON Array.> This parameter is displayed only when 'ScopeType' is 'GROUP.
  late final pulumi.Output<List<String>?> scopeValues;
  /// Modify the timestamp of the alert blacklist policy.Unit: milliseconds.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MetricRuleBlackList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetricRuleBlackList]. {@macro pulumi_cms_metric_rule_black_list_metric_rule_black_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetricRuleBlackList(
    String name, {
    MetricRuleBlackListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/metricRuleBlackList:MetricRuleBlackList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.category = registerOutput<String>('category');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveTime = registerOutput<String?>('effectiveTime');
    this.enableEndTime = registerOutput<String?>('enableEndTime');
    this.enableStartTime = registerOutput<String?>('enableStartTime');
    this.instances = registerOutput<List<String>>('instances');
    this.isEnable = registerOutput<bool>('isEnable');
    this.metricRuleBlackListId = registerOutput<String>('metricRuleBlackListId');
    this.metricRuleBlackListName = registerOutput<String>('metricRuleBlackListName');
    this.metrics = registerOutput<List<MetricRuleBlackListMetric>?>('metrics');
    this.namespace = registerOutput<String>('namespace');
    this.scopeType = registerOutput<String>('scopeType');
    this.scopeValues = registerOutput<List<String>?>('scopeValues');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
