import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consumer_groups_args.dart';
import 'get_consumer_groups_result.dart';
import 'get_global_events_storage_region_result.dart';
import 'get_history_delivery_jobs_args.dart';
import 'get_history_delivery_jobs_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_sasl_acls_args.dart';
import 'get_sasl_acls_result.dart';
import 'get_sasl_users_args.dart';
import 'get_sasl_users_result.dart';
import 'get_topics_args.dart';
import 'get_topics_result.dart';
import 'get_trails_args.dart';
import 'get_trails_deprecated_args.dart';
import 'get_trails_deprecated_result.dart';
import 'get_trails_result.dart';

/// This data source provides a list of ALIKAFKA Consumer Groups in an Alibaba Cloud account according to the specified filters.
///
/// &gt; **NOTE:** Available in 1.56.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const consumerGroupsDs = alicloud.actiontrail.getConsumerGroups({
///     instanceId: "xxx",
///     consumerIdRegex: "CID-alikafkaGroupDatasourceName",
///     outputFile: "consumerGroups.txt",
/// });
/// export const firstGroupName = consumerGroupsDs.then(consumerGroupsDs => consumerGroupsDs.consumerIds?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// consumer_groups_ds = alicloud.actiontrail.get_consumer_groups(instance_id="xxx",
///     consumer_id_regex="CID-alikafkaGroupDatasourceName",
///     output_file="consumerGroups.txt")
/// pulumi.export("firstGroupName", consumer_groups_ds.consumer_ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var consumerGroupsDs = AliCloud.ActionTrail.GetConsumerGroups.Invoke(new()
///     {
///         InstanceId = "xxx",
///         ConsumerIdRegex = "CID-alikafkaGroupDatasourceName",
///         OutputFile = "consumerGroups.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGroupName"] = consumerGroupsDs.Apply(getConsumerGroupsResult => getConsumerGroupsResult.ConsumerIds[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		consumerGroupsDs, err := actiontrail.GetConsumerGroups(ctx, &actiontrail.GetConsumerGroupsArgs{
/// 			InstanceId:      "xxx",
/// 			ConsumerIdRegex: pulumi.StringRef("CID-alikafkaGroupDatasourceName"),
/// 			OutputFile:      pulumi.StringRef("consumerGroups.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstGroupName", consumerGroupsDs.ConsumerIds[0])
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
/// import com.pulumi.alicloud.actiontrail.ActiontrailFunctions;
/// import com.pulumi.alicloud.actiontrail.inputs.GetConsumerGroupsArgs;
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
///         final var consumerGroupsDs = ActiontrailFunctions.getConsumerGroups(GetConsumerGroupsArgs.builder()
///             .instanceId("xxx")
///             .consumerIdRegex("CID-alikafkaGroupDatasourceName")
///             .outputFile("consumerGroups.txt")
///             .build());
///
///         ctx.export("firstGroupName", consumerGroupsDs.consumerIds()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   consumerGroupsDs:
///     fn::invoke:
///       function: alicloud:actiontrail:getConsumerGroups
///       arguments:
///         instanceId: xxx
///         consumerIdRegex: CID-alikafkaGroupDatasourceName
///         outputFile: consumerGroups.txt
/// outputs:
///   firstGroupName: ${consumerGroupsDs.consumerIds[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_actiontrail_get_consumer_groups_get_consumer_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsumerGroupsResult> getConsumerGroups(
  GetConsumerGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:actiontrail/getConsumerGroups:getConsumerGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsumerGroupsResult.fromMap(result);
}

/// This data source provides the Actiontrail Global Events Storage Region of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.201.0+.
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
/// const _default = alicloud.actiontrail.getGlobalEventsStorageRegion({});
/// export const alicloudActiontrailGlobalEventsStorageRegion1 = _default.then(_default => _default.storageRegion);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.actiontrail.get_global_events_storage_region()
/// pulumi.export("alicloudActiontrailGlobalEventsStorageRegion1", default.storage_region)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ActionTrail.GetGlobalEventsStorageRegion.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudActiontrailGlobalEventsStorageRegion1"] = @default.Apply(@default => @default.Apply(getGlobalEventsStorageRegionResult => getGlobalEventsStorageRegionResult.StorageRegion)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := actiontrail.LookupGlobalEventsStorageRegion(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudActiontrailGlobalEventsStorageRegion1", _default.StorageRegion)
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
/// import com.pulumi.alicloud.actiontrail.ActiontrailFunctions;
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
///         final var default = ActiontrailFunctions.getGlobalEventsStorageRegion(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("alicloudActiontrailGlobalEventsStorageRegion1", default_.storageRegion());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:actiontrail:getGlobalEventsStorageRegion
///       arguments: {}
/// outputs:
///   alicloudActiontrailGlobalEventsStorageRegion1: ${default.storageRegion}
/// ```
/// [options] Invoke options controlling this call.
Future<GetGlobalEventsStorageRegionResult> getGlobalEventsStorageRegion({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:actiontrail/getGlobalEventsStorageRegion:getGlobalEventsStorageRegion',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalEventsStorageRegionResult.fromMap(result);
}

/// This data source provides the Actiontrail History Delivery Jobs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.139.0+.
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
/// const ids = alicloud.actiontrail.getHistoryDeliveryJobs({
///     ids: ["example_id"],
/// });
/// export const actiontrailHistoryDeliveryJobId1 = ids.then(ids => ids.jobs?.[0]?.id);
/// const status = alicloud.actiontrail.getHistoryDeliveryJobs({
///     ids: ["example_id"],
///     status: 2,
/// });
/// export const actiontrailHistoryDeliveryJobId2 = status.then(status => status.jobs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.actiontrail.get_history_delivery_jobs(ids=["example_id"])
/// pulumi.export("actiontrailHistoryDeliveryJobId1", ids.jobs[0].id)
/// status = alicloud.actiontrail.get_history_delivery_jobs(ids=["example_id"],
///     status=2)
/// pulumi.export("actiontrailHistoryDeliveryJobId2", status.jobs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ActionTrail.GetHistoryDeliveryJobs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var status = AliCloud.ActionTrail.GetHistoryDeliveryJobs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         Status = 2,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["actiontrailHistoryDeliveryJobId1"] = ids.Apply(getHistoryDeliveryJobsResult => getHistoryDeliveryJobsResult.Jobs[0]?.Id),
///         ["actiontrailHistoryDeliveryJobId2"] = status.Apply(getHistoryDeliveryJobsResult => getHistoryDeliveryJobsResult.Jobs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := actiontrail.GetHistoryDeliveryJobs(ctx, &actiontrail.GetHistoryDeliveryJobsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("actiontrailHistoryDeliveryJobId1", ids.Jobs[0].Id)
/// 		status, err := actiontrail.GetHistoryDeliveryJobs(ctx, &actiontrail.GetHistoryDeliveryJobsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			Status: pulumi.IntRef(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("actiontrailHistoryDeliveryJobId2", status.Jobs[0].Id)
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
/// import com.pulumi.alicloud.actiontrail.ActiontrailFunctions;
/// import com.pulumi.alicloud.actiontrail.inputs.GetHistoryDeliveryJobsArgs;
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
///         final var ids = ActiontrailFunctions.getHistoryDeliveryJobs(GetHistoryDeliveryJobsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("actiontrailHistoryDeliveryJobId1", ids.jobs()[0].id());
///         final var status = ActiontrailFunctions.getHistoryDeliveryJobs(GetHistoryDeliveryJobsArgs.builder()
///             .ids("example_id")
///             .status(2)
///             .build());
///
///         ctx.export("actiontrailHistoryDeliveryJobId2", status.jobs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:actiontrail:getHistoryDeliveryJobs
///       arguments:
///         ids:
///           - example_id
///   status:
///     fn::invoke:
///       function: alicloud:actiontrail:getHistoryDeliveryJobs
///       arguments:
///         ids:
///           - example_id
///         status: '2'
/// outputs:
///   actiontrailHistoryDeliveryJobId1: ${ids.jobs[0].id}
///   actiontrailHistoryDeliveryJobId2: ${status.jobs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_actiontrail_get_history_delivery_jobs_get_history_delivery_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHistoryDeliveryJobsResult> getHistoryDeliveryJobs(
  GetHistoryDeliveryJobsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:actiontrail/getHistoryDeliveryJobs:getHistoryDeliveryJobs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHistoryDeliveryJobsResult.fromMap(result);
}

/// This data source provides a list of ALIKAFKA Instances in an Alibaba Cloud account according to the specified filters.
///
/// &gt; **NOTE:** Available in 1.59.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const instanceName = config.get("instanceName") || "alikafkaInstanceName";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {cidrBlock: "172.16.0.0/12"});
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultInstance = new alicloud.alikafka.Instance("default", {
///     name: instanceName,
///     partitionNum: 50,
///     diskType: 1,
///     diskSize: 500,
///     deployType: 4,
///     ioMax: 20,
///     vswitchId: defaultSwitch.id,
/// });
/// const instancesDs = alicloud.actiontrail.getInstances({
///     nameRegex: "alikafkaInstanceName",
///     outputFile: "instances.txt",
/// });
/// export const firstInstanceName = instancesDs.then(instancesDs => instancesDs.instances?.[0]?.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// instance_name = config.get("instanceName")
/// if instance_name is None:
///     instance_name = "alikafkaInstanceName"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default", cidr_block="172.16.0.0/12")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id)
/// default_instance = alicloud.alikafka.Instance("default",
///     name=instance_name,
///     partition_num=50,
///     disk_type=1,
///     disk_size=500,
///     deploy_type=4,
///     io_max=20,
///     vswitch_id=default_switch.id)
/// instances_ds = alicloud.actiontrail.get_instances(name_regex="alikafkaInstanceName",
///     output_file="instances.txt")
/// pulumi.export("firstInstanceName", instances_ds.instances[0].name)
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
///     var instanceName = config.Get("instanceName") ?? "alikafkaInstanceName";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultInstance = new AliCloud.Alikafka.Instance("default", new()
///     {
///         Name = instanceName,
///         PartitionNum = 50,
///         DiskType = 1,
///         DiskSize = 500,
///         DeployType = 4,
///         IoMax = 20,
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var instancesDs = AliCloud.ActionTrail.GetInstances.Invoke(new()
///     {
///         NameRegex = "alikafkaInstanceName",
///         OutputFile = "instances.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstInstanceName"] = instancesDs.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alikafka"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		instanceName := "alikafkaInstanceName"
/// 		if param := cfg.Get("instanceName"); param != "" {
/// 			instanceName = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:     defaultNetwork.ID(),
/// 			CidrBlock: pulumi.String("172.16.0.0/24"),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alikafka.NewInstance(ctx, "default", &alikafka.InstanceArgs{
/// 			Name:         pulumi.String(instanceName),
/// 			PartitionNum: pulumi.Int(50),
/// 			DiskType:     pulumi.Int(1),
/// 			DiskSize:     pulumi.Int(500),
/// 			DeployType:   pulumi.Int(4),
/// 			IoMax:        pulumi.Int(20),
/// 			VswitchId:    defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instancesDs, err := actiontrail.GetInstances(ctx, &actiontrail.GetInstancesArgs{
/// 			NameRegex:  pulumi.StringRef("alikafkaInstanceName"),
/// 			OutputFile: pulumi.StringRef("instances.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstInstanceName", instancesDs.Instances[0].Name)
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
/// import com.pulumi.alicloud.alikafka.Instance;
/// import com.pulumi.alicloud.alikafka.InstanceArgs;
/// import com.pulumi.alicloud.actiontrail.ActiontrailFunctions;
/// import com.pulumi.alicloud.actiontrail.inputs.GetInstancesArgs;
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
///         final var instanceName = config.get("instanceName").orElse("alikafkaInstanceName");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name(instanceName)
///             .partitionNum(50)
///             .diskType(1)
///             .diskSize(500)
///             .deployType(4)
///             .ioMax(20)
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         final var instancesDs = ActiontrailFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("alikafkaInstanceName")
///             .outputFile("instances.txt")
///             .build());
///
///         ctx.export("firstInstanceName", instancesDs.instances()[0].name());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   instanceName:
///     type: string
///     default: alikafkaInstanceName
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///   defaultInstance:
///     type: alicloud:alikafka:Instance
///     name: default
///     properties:
///       name: ${instanceName}
///       partitionNum: '50'
///       diskType: '1'
///       diskSize: '500'
///       deployType: '4'
///       ioMax: '20'
///       vswitchId: ${defaultSwitch.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   instancesDs:
///     fn::invoke:
///       function: alicloud:actiontrail:getInstances
///       arguments:
///         nameRegex: alikafkaInstanceName
///         outputFile: instances.txt
/// outputs:
///   firstInstanceName: ${instancesDs.instances[0].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_actiontrail_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:actiontrail/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides a list of ALIKAFKA Sasl acls in an Alibaba Cloud account according to the specified filters.
///
/// &gt; **NOTE:** Available in 1.66.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const saslAclsDs = alicloud.actiontrail.getSaslAcls({
///     instanceId: "xxx",
///     username: "username",
///     aclResourceType: "Topic",
///     aclResourceName: "testTopic",
///     outputFile: "saslAcls.txt",
/// });
/// export const firstSaslAclUsername = saslAclsDs.then(saslAclsDs => saslAclsDs.acls?.[0]?.username);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// sasl_acls_ds = alicloud.actiontrail.get_sasl_acls(instance_id="xxx",
///     username="username",
///     acl_resource_type="Topic",
///     acl_resource_name="testTopic",
///     output_file="saslAcls.txt")
/// pulumi.export("firstSaslAclUsername", sasl_acls_ds.acls[0].username)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var saslAclsDs = AliCloud.ActionTrail.GetSaslAcls.Invoke(new()
///     {
///         InstanceId = "xxx",
///         Username = "username",
///         AclResourceType = "Topic",
///         AclResourceName = "testTopic",
///         OutputFile = "saslAcls.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSaslAclUsername"] = saslAclsDs.Apply(getSaslAclsResult => getSaslAclsResult.Acls[0]?.Username),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		saslAclsDs, err := actiontrail.GetSaslAcls(ctx, &actiontrail.GetSaslAclsArgs{
/// 			InstanceId:      "xxx",
/// 			Username:        "username",
/// 			AclResourceType: "Topic",
/// 			AclResourceName: "testTopic",
/// 			OutputFile:      pulumi.StringRef("saslAcls.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSaslAclUsername", saslAclsDs.Acls[0].Username)
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
/// import com.pulumi.alicloud.actiontrail.ActiontrailFunctions;
/// import com.pulumi.alicloud.actiontrail.inputs.GetSaslAclsArgs;
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
///         final var saslAclsDs = ActiontrailFunctions.getSaslAcls(GetSaslAclsArgs.builder()
///             .instanceId("xxx")
///             .username("username")
///             .aclResourceType("Topic")
///             .aclResourceName("testTopic")
///             .outputFile("saslAcls.txt")
///             .build());
///
///         ctx.export("firstSaslAclUsername", saslAclsDs.acls()[0].username());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   saslAclsDs:
///     fn::invoke:
///       function: alicloud:actiontrail:getSaslAcls
///       arguments:
///         instanceId: xxx
///         username: username
///         aclResourceType: Topic
///         aclResourceName: testTopic
///         outputFile: saslAcls.txt
/// outputs:
///   firstSaslAclUsername: ${saslAclsDs.acls[0].username}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_actiontrail_get_sasl_acls_get_sasl_acls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSaslAclsResult> getSaslAcls(
  GetSaslAclsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:actiontrail/getSaslAcls:getSaslAcls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSaslAclsResult.fromMap(result);
}

/// This data source provides the Alikafka Sasl Users of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.66.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "10.4.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultNetwork.id});
/// const defaultInstance = new alicloud.alikafka.Instance("default", {
///     name: name,
///     partitionNum: 50,
///     diskType: 1,
///     diskSize: 500,
///     deployType: 5,
///     ioMax: 20,
///     specType: "professional",
///     serviceVersion: "2.2.0",
///     vswitchId: defaultSwitch.id,
///     securityGroup: defaultSecurityGroup.id,
///     config: `  {
///     \\"enable.acl\\": \\"true\\"
///   }
/// `,
/// });
/// const defaultSaslUser = new alicloud.alikafka.SaslUser("default", {
///     instanceId: defaultInstance.id,
///     username: name,
///     password: "YourPassword1234!",
/// });
/// const ids = alicloud.actiontrail.getSaslUsersOutput({
///     ids: [defaultSaslUser.id],
///     instanceId: defaultSaslUser.instanceId,
/// });
/// export const alikafkaSaslUsersId0 = ids.apply(ids => ids.users?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="10.4.0.0/24",
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_network.id)
/// default_instance = alicloud.alikafka.Instance("default",
///     name=name,
///     partition_num=50,
///     disk_type=1,
///     disk_size=500,
///     deploy_type=5,
///     io_max=20,
///     spec_type="professional",
///     service_version="2.2.0",
///     vswitch_id=default_switch.id,
///     security_group=default_security_group.id,
///     config="""  {
///     \"enable.acl\": \"true\"
///   }
/// """)
/// default_sasl_user = alicloud.alikafka.SaslUser("default",
///     instance_id=default_instance.id,
///     username=name,
///     password="YourPassword1234!")
/// ids = alicloud.actiontrail.get_sasl_users_output(ids=[default_sasl_user.id],
///     instance_id=default_sasl_user.instance_id)
/// pulumi.export("alikafkaSaslUsersId0", ids.users[0].id)
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
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "10.4.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Alikafka.Instance("default", new()
///     {
///         Name = name,
///         PartitionNum = 50,
///         DiskType = 1,
///         DiskSize = 500,
///         DeployType = 5,
///         IoMax = 20,
///         SpecType = "professional",
///         ServiceVersion = "2.2.0",
///         VswitchId = defaultSwitch.Id,
///         SecurityGroup = defaultSecurityGroup.Id,
///         Config = @"  {
///     \""enable.acl\"": \""true\""
///   }
/// ",
///     });
///
///     var defaultSaslUser = new AliCloud.Alikafka.SaslUser("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         Username = name,
///         Password = "YourPassword1234!",
///     });
///
///     var ids = AliCloud.ActionTrail.GetSaslUsers.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultSaslUser.Id,
///         },
///         InstanceId = defaultSaslUser.InstanceId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alikafkaSaslUsersId0"] = ids.Apply(getSaslUsersResult => getSaslUsersResult.Users[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alikafka"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
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
/// 		defaultInstance, err := alikafka.NewInstance(ctx, "default", &alikafka.InstanceArgs{
/// 			Name:           pulumi.String(name),
/// 			PartitionNum:   pulumi.Int(50),
/// 			DiskType:       pulumi.Int(1),
/// 			DiskSize:       pulumi.Int(500),
/// 			DeployType:     pulumi.Int(5),
/// 			IoMax:          pulumi.Int(20),
/// 			SpecType:       pulumi.String("professional"),
/// 			ServiceVersion: pulumi.String("2.2.0"),
/// 			VswitchId:      defaultSwitch.ID(),
/// 			SecurityGroup:  defaultSecurityGroup.ID(),
/// 			Config:         pulumi.String("  {\n    \\\"enable.acl\\\": \\\"true\\\"\n  }\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSaslUser, err := alikafka.NewSaslUser(ctx, "default", &alikafka.SaslUserArgs{
/// 			InstanceId: defaultInstance.ID(),
/// 			Username:   pulumi.String(name),
/// 			Password:   pulumi.String("YourPassword1234!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := actiontrail.GetSaslUsersOutput(ctx, actiontrail.GetSaslUsersOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultSaslUser.ID(),
/// 			},
/// 			InstanceId: defaultSaslUser.InstanceId,
/// 		}, nil)
/// 		ctx.Export("alikafkaSaslUsersId0", ids.ApplyT(func(ids actiontrail.GetSaslUsersResult) (*string, error) {
/// 			return &ids.Users[0].Id, nil
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
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.alikafka.Instance;
/// import com.pulumi.alicloud.alikafka.InstanceArgs;
/// import com.pulumi.alicloud.alikafka.SaslUser;
/// import com.pulumi.alicloud.alikafka.SaslUserArgs;
/// import com.pulumi.alicloud.actiontrail.ActiontrailFunctions;
/// import com.pulumi.alicloud.actiontrail.inputs.GetSaslUsersArgs;
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
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("10.4.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name(name)
///             .partitionNum(50)
///             .diskType(1)
///             .diskSize(500)
///             .deployType(5)
///             .ioMax(20)
///             .specType("professional")
///             .serviceVersion("2.2.0")
///             .vswitchId(defaultSwitch.id())
///             .securityGroup(defaultSecurityGroup.id())
///             .config("""
///   {
///     \"enable.acl\": \"true\"
///   }
///             """)
///             .build());
///
///         var defaultSaslUser = new SaslUser("defaultSaslUser", SaslUserArgs.builder()
///             .instanceId(defaultInstance.id())
///             .username(name)
///             .password("YourPassword1234!")
///             .build());
///
///         final var ids = ActiontrailFunctions.getSaslUsers(GetSaslUsersArgs.builder()
///             .ids(defaultSaslUser.id())
///             .instanceId(defaultSaslUser.instanceId())
///             .build());
///
///         ctx.export("alikafkaSaslUsersId0", ids.applyValue(_ids -> _ids.users()[0].id()));
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
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 10.4.0.0/24
///       zoneId: ${default.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:alikafka:Instance
///     name: default
///     properties:
///       name: ${name}
///       partitionNum: 50
///       diskType: '1'
///       diskSize: '500'
///       deployType: '5'
///       ioMax: '20'
///       specType: professional
///       serviceVersion: 2.2.0
///       vswitchId: ${defaultSwitch.id}
///       securityGroup: ${defaultSecurityGroup.id}
///       config: |2
///           {
///             \"enable.acl\": \"true\"
///           }
///   defaultSaslUser:
///     type: alicloud:alikafka:SaslUser
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       username: ${name}
///       password: YourPassword1234!
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   ids:
///     fn::invoke:
///       function: alicloud:actiontrail:getSaslUsers
///       arguments:
///         ids:
///           - ${defaultSaslUser.id}
///         instanceId: ${defaultSaslUser.instanceId}
/// outputs:
///   alikafkaSaslUsersId0: ${ids.users[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_actiontrail_get_sasl_users_get_sasl_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSaslUsersResult> getSaslUsers(
  GetSaslUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:actiontrail/getSaslUsers:getSaslUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSaslUsersResult.fromMap(result);
}

/// This data source provides a list of ALIKAFKA Topics in an Alibaba Cloud account according to the specified filters.
///
/// &gt; **NOTE:** Available in 1.56.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const topicsDs = alicloud.actiontrail.getTopics({
///     instanceId: "xxx",
///     nameRegex: "alikafkaTopicName",
///     outputFile: "topics.txt",
/// });
/// export const firstTopicName = topicsDs.then(topicsDs => topicsDs.topics?.[0]?.topic);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// topics_ds = alicloud.actiontrail.get_topics(instance_id="xxx",
///     name_regex="alikafkaTopicName",
///     output_file="topics.txt")
/// pulumi.export("firstTopicName", topics_ds.topics[0].topic)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var topicsDs = AliCloud.ActionTrail.GetTopics.Invoke(new()
///     {
///         InstanceId = "xxx",
///         NameRegex = "alikafkaTopicName",
///         OutputFile = "topics.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTopicName"] = topicsDs.Apply(getTopicsResult => getTopicsResult.Topics[0]?.Topic),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		topicsDs, err := actiontrail.GetTopics(ctx, &actiontrail.GetTopicsArgs{
/// 			InstanceId: "xxx",
/// 			NameRegex:  pulumi.StringRef("alikafkaTopicName"),
/// 			OutputFile: pulumi.StringRef("topics.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTopicName", topicsDs.Topics[0].Topic)
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
/// import com.pulumi.alicloud.actiontrail.ActiontrailFunctions;
/// import com.pulumi.alicloud.actiontrail.inputs.GetTopicsArgs;
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
///         final var topicsDs = ActiontrailFunctions.getTopics(GetTopicsArgs.builder()
///             .instanceId("xxx")
///             .nameRegex("alikafkaTopicName")
///             .outputFile("topics.txt")
///             .build());
///
///         ctx.export("firstTopicName", topicsDs.topics()[0].topic());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   topicsDs:
///     fn::invoke:
///       function: alicloud:actiontrail:getTopics
///       arguments:
///         instanceId: xxx
///         nameRegex: alikafkaTopicName
///         outputFile: topics.txt
/// outputs:
///   firstTopicName: ${topicsDs.topics[0].topic}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_actiontrail_get_topics_get_topics_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicsResult> getTopics(
  GetTopicsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:actiontrail/getTopics:getTopics',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicsResult.fromMap(result);
}

/// This data source provides a list of ActionTrail Trails in an Alibaba Cloud account according to the specified filters.
///
/// &gt; **NOTE:** Available in 1.95.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.actiontrail.getTrails({
///     nameRegex: "tf-testacc-actiontrail",
/// });
/// export const trailName = _default.then(_default => _default.trails?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.actiontrail.get_trails(name_regex="tf-testacc-actiontrail")
/// pulumi.export("trailName", default.trails[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ActionTrail.GetTrails.Invoke(new()
///     {
///         NameRegex = "tf-testacc-actiontrail",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["trailName"] = @default.Apply(@default => @default.Apply(getTrailsResult => getTrailsResult.Trails[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := actiontrail.GetTrails(ctx, &actiontrail.GetTrailsArgs{
/// 			NameRegex: pulumi.StringRef("tf-testacc-actiontrail"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("trailName", _default.Trails[0].Id)
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
/// import com.pulumi.alicloud.actiontrail.ActiontrailFunctions;
/// import com.pulumi.alicloud.actiontrail.inputs.GetTrailsArgs;
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
///         final var default = ActiontrailFunctions.getTrails(GetTrailsArgs.builder()
///             .nameRegex("tf-testacc-actiontrail")
///             .build());
///
///         ctx.export("trailName", default_.trails()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:actiontrail:getTrails
///       arguments:
///         nameRegex: tf-testacc-actiontrail
/// outputs:
///   trailName: ${default.trails[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_actiontrail_get_trails_get_trails_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrailsResult> getTrails(
  GetTrailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:actiontrail/getTrails:getTrails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrailsResult.fromMap(result);
}

/// &gt; **DEPRECATED:**  This datasource has been renamed to alicloud.actiontrail.getTrails from version 1.95.0.
///
/// This data source provides a list of action trail of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const trails = alicloud.actiontrail.getTrailsDeprecated({
///     nameRegex: "tf-testacc-actiontrail",
/// });
/// export const firstTrailName = trails.then(trails => trails.actiontrails?.[0]?.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// trails = alicloud.actiontrail.get_trails_deprecated(name_regex="tf-testacc-actiontrail")
/// pulumi.export("firstTrailName", trails.actiontrails[0].name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var trails = AliCloud.ActionTrail.GetTrailsDeprecated.Invoke(new()
///     {
///         NameRegex = "tf-testacc-actiontrail",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTrailName"] = trails.Apply(getTrailsDeprecatedResult => getTrailsDeprecatedResult.Actiontrails[0]?.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		trails, err := actiontrail.GetTrailsDeprecated(ctx, &actiontrail.GetTrailsDeprecatedArgs{
/// 			NameRegex: pulumi.StringRef("tf-testacc-actiontrail"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTrailName", trails.Actiontrails[0].Name)
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
/// import com.pulumi.alicloud.actiontrail.ActiontrailFunctions;
/// import com.pulumi.alicloud.actiontrail.inputs.GetTrailsDeprecatedArgs;
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
///         final var trails = ActiontrailFunctions.getTrailsDeprecated(GetTrailsDeprecatedArgs.builder()
///             .nameRegex("tf-testacc-actiontrail")
///             .build());
///
///         ctx.export("firstTrailName", trails.actiontrails()[0].name());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   trails:
///     fn::invoke:
///       function: alicloud:actiontrail:getTrailsDeprecated
///       arguments:
///         nameRegex: tf-testacc-actiontrail
/// outputs:
///   firstTrailName: ${trails.actiontrails[0].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_actiontrail_get_trails_deprecated_get_trails_deprecated_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrailsDeprecatedResult> getTrailsDeprecated(
  GetTrailsDeprecatedArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:actiontrail/getTrailsDeprecated:getTrailsDeprecated',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrailsDeprecatedResult.fromMap(result);
}
