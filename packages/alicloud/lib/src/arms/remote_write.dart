import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_write_args.dart';

/// Provides a Application Real-Time Monitoring Service (ARMS) Remote Write resource.
///
/// For information about Application Real-Time Monitoring Service (ARMS) Remote Write and how to use it, see [What is Remote Write](https://next.api.aliyun.com/api/ARMS/2019-08-08/AddPrometheusInstance).
///
/// > **NOTE:** Available since v1.204.0.
///
/// > **DEPRECATED:** This resource has been deprecated since v1.228.0.
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
/// const _default = alicloud.getZones({
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
///     zoneId: pulumi.all([_default, _default.then(_default => _default.zones).length]).apply(([_default, length]) => _default.zones[length - 1].id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultPrometheus = new alicloud.arms.Prometheus("default", {
///     clusterType: "ecs",
///     grafanaInstanceId: "free",
///     vpcId: defaultNetwork.id,
///     vswitchId: defaultSwitch.id,
///     securityGroupId: defaultSecurityGroup.id,
///     clusterName: pulumi.interpolate`${name}-${defaultNetwork.id}`,
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
///     tags: {
///         Created: "TF",
///         For: "Prometheus",
///     },
/// });
/// const defaultRemoteWrite = new alicloud.arms.RemoteWrite("default", {
///     clusterId: defaultPrometheus.id,
///     remoteWriteYaml: `remote_write:
/// - name: ArmsRemoteWrite
///   url: http://47.96.227.137:8080/prometheus/xxx/yyy/cn-hangzhou/api/v3/write
///   basic_auth: {username: 666, password: '******'}
///   write_relabel_configs:
///   - source_labels: [instance_id]
///     separator: ;
///     regex: si-6e2ca86444db4e55a7c1
///     replacement: 1
///     action: keep
/// `,
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=len(default.zones).apply(lambda length: default.zones[length - 1]).apply(lambda obj: obj.id))
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_prometheus = alicloud.arms.Prometheus("default",
///     cluster_type="ecs",
///     grafana_instance_id="free",
///     vpc_id=default_network.id,
///     vswitch_id=default_switch.id,
///     security_group_id=default_security_group.id,
///     cluster_name=default_network.id.apply(lambda id: f"{name}-{id}"),
///     resource_group_id=default_get_resource_groups.groups[0].id,
///     tags={
///         "Created": "TF",
///         "For": "Prometheus",
///     })
/// default_remote_write = alicloud.arms.RemoteWrite("default",
///     cluster_id=default_prometheus.id,
///     remote_write_yaml="""remote_write:
/// - name: ArmsRemoteWrite
///   url: http://47.96.227.137:8080/prometheus/xxx/yyy/cn-hangzhou/api/v3/write
///   basic_auth: {username: 666, password: '******'}
///   write_relabel_configs:
///   - source_labels: [instance_id]
///     separator: ;
///     regex: si-6e2ca86444db4e55a7c1
///     replacement: $1
///     action: keep
/// """)
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
///         ZoneId = Output.Tuple(@default, @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)).Length).Apply(values =>
///         {
///             var @default = values.Item1;
///             var length = values.Item2;
///             return @default.Apply(getZonesResult => getZonesResult.Zones)[length - 1].Id;
///         }),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultPrometheus = new AliCloud.Arms.Prometheus("default", new()
///     {
///         ClusterType = "ecs",
///         GrafanaInstanceId = "free",
///         VpcId = defaultNetwork.Id,
///         VswitchId = defaultSwitch.Id,
///         SecurityGroupId = defaultSecurityGroup.Id,
///         ClusterName = defaultNetwork.Id.Apply(id => $"{name}-{id}"),
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Prometheus" },
///         },
///     });
///
///     var defaultRemoteWrite = new AliCloud.Arms.RemoteWrite("default", new()
///     {
///         ClusterId = defaultPrometheus.Id,
///         RemoteWriteYaml = @"remote_write:
/// - name: ArmsRemoteWrite
///   url: http://47.96.227.137:8080/prometheus/xxx/yyy/cn-hangzhou/api/v3/write
///   basic_auth: {username: 666, password: '******'}
///   write_relabel_configs:
///   - source_labels: [instance_id]
///     separator: ;
///     regex: si-6e2ca86444db4e55a7c1
///     replacement: $1
///     action: keep
/// ",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
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
/// 			ZoneId: pulumi.String(len(_default.Zones).ApplyT(func(length int) (alicloud.GetZonesZone, error) {
/// 				return alicloud.GetZonesZone(_default.Zones[float64(length.ApplyT(func(__convert float64) (float64, error) {
/// 					return __convert - 1, nil
/// 				}).(pulumi.Float64Output))]), nil
/// 			}).(alicloud.GetZonesZoneOutput).ApplyT(func(obj alicloud.GetZonesZone) (*string, error) {
/// 				return obj.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultPrometheus, err := arms.NewPrometheus(ctx, "default", &arms.PrometheusArgs{
/// 			ClusterType:       pulumi.String("ecs"),
/// 			GrafanaInstanceId: pulumi.String("free"),
/// 			VpcId:             defaultNetwork.ID(),
/// 			VswitchId:         defaultSwitch.ID(),
/// 			SecurityGroupId:   defaultSecurityGroup.ID(),
/// 			ClusterName: defaultNetwork.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("%v-%v", name, id), nil
/// 			}).(pulumi.StringOutput),
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Prometheus"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arms.NewRemoteWrite(ctx, "default", &arms.RemoteWriteArgs{
/// 			ClusterId: defaultPrometheus.ID(),
/// 			RemoteWriteYaml: pulumi.String(`remote_write:
/// - name: ArmsRemoteWrite
///   url: http://47.96.227.137:8080/prometheus/xxx/yyy/cn-hangzhou/api/v3/write
///   basic_auth: {username: 666, password: '******'}
///   write_relabel_configs:
///   - source_labels: [instance_id]
///     separator: ;
///     regex: si-6e2ca86444db4e55a7c1
///     replacement: $1
///     action: keep
/// `),
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
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.arms.Prometheus;
/// import com.pulumi.alicloud.arms.PrometheusArgs;
/// import com.pulumi.alicloud.arms.RemoteWrite;
/// import com.pulumi.alicloud.arms.RemoteWriteArgs;
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
///             .zoneId(default_.zones().length().applyValue(_length -> default_.zones()[_length - 1]).applyValue(_obj -> _obj.id()))
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultPrometheus = new Prometheus("defaultPrometheus", PrometheusArgs.builder()
///             .clusterType("ecs")
///             .grafanaInstanceId("free")
///             .vpcId(defaultNetwork.id())
///             .vswitchId(defaultSwitch.id())
///             .securityGroupId(defaultSecurityGroup.id())
///             .clusterName(defaultNetwork.id().applyValue(_id -> String.format("%s-%s", name,_id)))
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Prometheus")
///             ))
///             .build());
///
///         var defaultRemoteWrite = new RemoteWrite("defaultRemoteWrite", RemoteWriteArgs.builder()
///             .clusterId(defaultPrometheus.id())
///             .remoteWriteYaml("""
/// remote_write:
/// - name: ArmsRemoteWrite
///   url: http://47.96.227.137:8080/prometheus/xxx/yyy/cn-hangzhou/api/v3/write
///   basic_auth: {username: 666, password: '******'}
///   write_relabel_configs:
///   - source_labels: [instance_id]
///     separator: ;
///     regex: si-6e2ca86444db4e55a7c1
///     replacement: $1
///     action: keep
///             """)
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Real-Time Monitoring Service (ARMS) Remote Write can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:arms/remoteWrite:RemoteWrite example <cluster_id>:<remote_write_name>
/// ```
class RemoteWrite extends pulumi.CustomResource {
  /// The ID of the Prometheus instance.
  late final pulumi.Output<String> clusterId;
  /// The name of the Remote Write configuration item.
  late final pulumi.Output<String> remoteWriteName;
  /// The details of the Remote Write configuration item. Specify the value in the YAML format.
  late final pulumi.Output<String> remoteWriteYaml;

  /// Creates a new [RemoteWrite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RemoteWrite]. {@macro pulumi_arms_remote_write_remote_write_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RemoteWrite(
    String name, {
    RemoteWriteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:arms/remoteWrite:RemoteWrite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.remoteWriteName = registerOutput<String>('remoteWriteName');
    this.remoteWriteYaml = registerOutput<String>('remoteWriteYaml');
  }
}
