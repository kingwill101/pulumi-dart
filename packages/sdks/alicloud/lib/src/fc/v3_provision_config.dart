import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_provision_config_args.dart';
import 'v3_provision_config_scheduled_action.dart';
import 'v3_provision_config_state.dart';
import 'v3_provision_config_target_tracking_policy.dart';

/// Provides a FCV3 Provision Config resource.
///
/// Function Reservation Configuration.
///
/// For information about FCV3 Provision Config and how to use it, see [What is Provision Config](https://www.alibabacloud.com/help/en/functioncompute/fc-3-0/developer-reference/api-fc-2023-03-30-putprovisionconfig).
///
/// > **NOTE:** Available since v1.230.0.
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
/// import * as time from "@pulumi/time";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultProject = new alicloud.log.Project("default", {
///     projectName: `${name}-${_default.result}`,
///     description: name,
/// });
/// const defaultStore = new alicloud.log.Store("default", {
///     projectName: defaultProject.name,
///     logstoreName: `${name}-${_default.result}`,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const wait10Minutes = new time.index.Sleep("wait_10_minutes", {createDuration: "10m"}, {
///     dependsOn: [defaultStore],
/// });
/// const _function = new alicloud.fc.V3Function("function", {
///     memorySize: 512,
///     cpu: 0.5,
///     handler: "index.handler",
///     functionName: `${name}-${_default.result}`,
///     runtime: "python3.10",
///     diskSize: 512,
///     code: {
///         zipFile: "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     },
///     logConfig: {
///         enableInstanceMetrics: true,
///         enableRequestMetrics: true,
///         project: defaultProject.projectName,
///         logstore: defaultStore.logstoreName,
///         logBeginRule: "None",
///     },
/// }, {
///     dependsOn: [wait10Minutes],
/// });
/// const defaultV3ProvisionConfig = new alicloud.fc.V3ProvisionConfig("default", {
///     target: 1,
///     targetTrackingPolicies: [
///         {
///             name: "t1",
///             startTime: "2030-10-10T10:10:10Z",
///             endTime: "2035-10-10T10:10:10Z",
///             minCapacity: 0,
///             maxCapacity: 1,
///             metricTarget: 1,
///             metricType: "ProvisionedConcurrencyUtilization",
///         },
///         {
///             metricTarget: 1,
///             metricType: "ProvisionedConcurrencyUtilization",
///             name: "t2",
///             startTime: "2030-10-10T10:10:10Z",
///             endTime: "2035-10-10T10:10:10Z",
///             minCapacity: 0,
///             maxCapacity: 1,
///         },
///         {
///             metricType: "ProvisionedConcurrencyUtilization",
///             timeZone: "Asia/Shanghai",
///             name: "t3",
///             startTime: "2030-10-10T10:10:10",
///             endTime: "2035-10-10T10:10:10",
///             minCapacity: 0,
///             maxCapacity: 1,
///             metricTarget: 1,
///         },
///     ],
///     scheduledActions: [
///         {
///             target: 0,
///             name: "s1",
///             startTime: "2030-10-10T10:10:10Z",
///             endTime: "2035-10-10T10:10:10Z",
///             scheduleExpression: "cron(0 0 4 * * *)",
///         },
///         {
///             name: "s2",
///             startTime: "2030-10-10T10:10:10Z",
///             endTime: "2035-10-10T10:10:10Z",
///             scheduleExpression: "cron(0 0 6 * * *)",
///             target: 1,
///         },
///         {
///             startTime: "2030-10-10T10:10:10",
///             endTime: "2035-10-10T10:10:10",
///             scheduleExpression: "cron(0 0 7 * * *)",
///             target: 0,
///             timeZone: "Asia/Shanghai",
///             name: "s3",
///         },
///     ],
///     qualifier: "LATEST",
///     alwaysAllocateGpu: true,
///     functionName: _function.functionName,
///     alwaysAllocateCpu: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_time as time
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_project = alicloud.log.Project("default",
///     project_name=f"{name}-{default['result']}",
///     description=name)
/// default_store = alicloud.log.Store("default",
///     project_name=default_project.name,
///     logstore_name=f"{name}-{default['result']}",
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// wait10_minutes = time.index.Sleep("wait_10_minutes", create_duration=10m,
/// opts = pulumi.ResourceOptions(depends_on=[default_store]))
/// function = alicloud.fc.V3Function("function",
///     memory_size=512,
///     cpu=0.5,
///     handler="index.handler",
///     function_name=f"{name}-{default['result']}",
///     runtime="python3.10",
///     disk_size=512,
///     code={
///         "zip_file": "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     },
///     log_config={
///         "enable_instance_metrics": True,
///         "enable_request_metrics": True,
///         "project": default_project.project_name,
///         "logstore": default_store.logstore_name,
///         "log_begin_rule": "None",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait10_minutes]))
/// default_v3_provision_config = alicloud.fc.V3ProvisionConfig("default",
///     target=1,
///     target_tracking_policies=[
///         {
///             "name": "t1",
///             "start_time": "2030-10-10T10:10:10Z",
///             "end_time": "2035-10-10T10:10:10Z",
///             "min_capacity": 0,
///             "max_capacity": 1,
///             "metric_target": 1,
///             "metric_type": "ProvisionedConcurrencyUtilization",
///         },
///         {
///             "metric_target": 1,
///             "metric_type": "ProvisionedConcurrencyUtilization",
///             "name": "t2",
///             "start_time": "2030-10-10T10:10:10Z",
///             "end_time": "2035-10-10T10:10:10Z",
///             "min_capacity": 0,
///             "max_capacity": 1,
///         },
///         {
///             "metric_type": "ProvisionedConcurrencyUtilization",
///             "time_zone": "Asia/Shanghai",
///             "name": "t3",
///             "start_time": "2030-10-10T10:10:10",
///             "end_time": "2035-10-10T10:10:10",
///             "min_capacity": 0,
///             "max_capacity": 1,
///             "metric_target": 1,
///         },
///     ],
///     scheduled_actions=[
///         {
///             "target": 0,
///             "name": "s1",
///             "start_time": "2030-10-10T10:10:10Z",
///             "end_time": "2035-10-10T10:10:10Z",
///             "schedule_expression": "cron(0 0 4 * * *)",
///         },
///         {
///             "name": "s2",
///             "start_time": "2030-10-10T10:10:10Z",
///             "end_time": "2035-10-10T10:10:10Z",
///             "schedule_expression": "cron(0 0 6 * * *)",
///             "target": 1,
///         },
///         {
///             "start_time": "2030-10-10T10:10:10",
///             "end_time": "2035-10-10T10:10:10",
///             "schedule_expression": "cron(0 0 7 * * *)",
///             "target": 0,
///             "time_zone": "Asia/Shanghai",
///             "name": "s3",
///         },
///     ],
///     qualifier="LATEST",
///     always_allocate_gpu=True,
///     function_name=function.function_name,
///     always_allocate_cpu=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Time = Pulumi.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         ProjectName = $"{name}-{@default.Result}",
///         Description = name,
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         ProjectName = defaultProject.Name,
///         LogstoreName = $"{name}-{@default.Result}",
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var wait10Minutes = new Time.Index.Sleep("wait_10_minutes", new()
///     {
///         CreateDuration = "10m",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultStore,
///         },
///     });
///
///     var function = new AliCloud.FC.V3Function("function", new()
///     {
///         MemorySize = 512,
///         Cpu = 0.5,
///         Handler = "index.handler",
///         FunctionName = $"{name}-{@default.Result}",
///         Runtime = "python3.10",
///         DiskSize = 512,
///         Code = new AliCloud.FC.Inputs.V3FunctionCodeArgs
///         {
///             ZipFile = "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///         },
///         LogConfig = new AliCloud.FC.Inputs.V3FunctionLogConfigArgs
///         {
///             EnableInstanceMetrics = true,
///             EnableRequestMetrics = true,
///             Project = defaultProject.ProjectName,
///             Logstore = defaultStore.LogstoreName,
///             LogBeginRule = "None",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait10Minutes,
///         },
///     });
///
///     var defaultV3ProvisionConfig = new AliCloud.FC.V3ProvisionConfig("default", new()
///     {
///         Target = 1,
///         TargetTrackingPolicies = new[]
///         {
///             new AliCloud.FC.Inputs.V3ProvisionConfigTargetTrackingPolicyArgs
///             {
///                 Name = "t1",
///                 StartTime = "2030-10-10T10:10:10Z",
///                 EndTime = "2035-10-10T10:10:10Z",
///                 MinCapacity = 0,
///                 MaxCapacity = 1,
///                 MetricTarget = 1,
///                 MetricType = "ProvisionedConcurrencyUtilization",
///             },
///             new AliCloud.FC.Inputs.V3ProvisionConfigTargetTrackingPolicyArgs
///             {
///                 MetricTarget = 1,
///                 MetricType = "ProvisionedConcurrencyUtilization",
///                 Name = "t2",
///                 StartTime = "2030-10-10T10:10:10Z",
///                 EndTime = "2035-10-10T10:10:10Z",
///                 MinCapacity = 0,
///                 MaxCapacity = 1,
///             },
///             new AliCloud.FC.Inputs.V3ProvisionConfigTargetTrackingPolicyArgs
///             {
///                 MetricType = "ProvisionedConcurrencyUtilization",
///                 TimeZone = "Asia/Shanghai",
///                 Name = "t3",
///                 StartTime = "2030-10-10T10:10:10",
///                 EndTime = "2035-10-10T10:10:10",
///                 MinCapacity = 0,
///                 MaxCapacity = 1,
///                 MetricTarget = 1,
///             },
///         },
///         ScheduledActions = new[]
///         {
///             new AliCloud.FC.Inputs.V3ProvisionConfigScheduledActionArgs
///             {
///                 Target = 0,
///                 Name = "s1",
///                 StartTime = "2030-10-10T10:10:10Z",
///                 EndTime = "2035-10-10T10:10:10Z",
///                 ScheduleExpression = "cron(0 0 4 * * *)",
///             },
///             new AliCloud.FC.Inputs.V3ProvisionConfigScheduledActionArgs
///             {
///                 Name = "s2",
///                 StartTime = "2030-10-10T10:10:10Z",
///                 EndTime = "2035-10-10T10:10:10Z",
///                 ScheduleExpression = "cron(0 0 6 * * *)",
///                 Target = 1,
///             },
///             new AliCloud.FC.Inputs.V3ProvisionConfigScheduledActionArgs
///             {
///                 StartTime = "2030-10-10T10:10:10",
///                 EndTime = "2035-10-10T10:10:10",
///                 ScheduleExpression = "cron(0 0 7 * * *)",
///                 Target = 0,
///                 TimeZone = "Asia/Shanghai",
///                 Name = "s3",
///             },
///         },
///         Qualifier = "LATEST",
///         AlwaysAllocateGpu = true,
///         FunctionName = function.FunctionName,
///         AlwaysAllocateCpu = true,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-time/sdk/go/time"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Description: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// 			ProjectName:        defaultProject.Name,
/// 			LogstoreName:       pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait10Minutes, err := time.NewSleep(ctx, "wait_10_minutes", &time.SleepArgs{
/// 			CreateDuration: "10m",
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultStore,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		function, err := fc.NewV3Function(ctx, "function", &fc.V3FunctionArgs{
/// 			MemorySize:   pulumi.Int(512),
/// 			Cpu:          pulumi.Float64(0.5),
/// 			Handler:      pulumi.String("index.handler"),
/// 			FunctionName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Runtime:      pulumi.String("python3.10"),
/// 			DiskSize:     pulumi.Int(512),
/// 			Code: &fc.V3FunctionCodeArgs{
/// 				ZipFile: pulumi.String("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA="),
/// 			},
/// 			LogConfig: &fc.V3FunctionLogConfigArgs{
/// 				EnableInstanceMetrics: pulumi.Bool(true),
/// 				EnableRequestMetrics:  pulumi.Bool(true),
/// 				Project:               defaultProject.ProjectName,
/// 				Logstore:              defaultStore.LogstoreName,
/// 				LogBeginRule:          pulumi.String("None"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait10Minutes,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewV3ProvisionConfig(ctx, "default", &fc.V3ProvisionConfigArgs{
/// 			Target: pulumi.Int(1),
/// 			TargetTrackingPolicies: fc.V3ProvisionConfigTargetTrackingPolicyArray{
/// 				&fc.V3ProvisionConfigTargetTrackingPolicyArgs{
/// 					Name:         pulumi.String("t1"),
/// 					StartTime:    pulumi.String("2030-10-10T10:10:10Z"),
/// 					EndTime:      pulumi.String("2035-10-10T10:10:10Z"),
/// 					MinCapacity:  pulumi.Int(0),
/// 					MaxCapacity:  pulumi.Int(1),
/// 					MetricTarget: pulumi.Float64(1),
/// 					MetricType:   pulumi.String("ProvisionedConcurrencyUtilization"),
/// 				},
/// 				&fc.V3ProvisionConfigTargetTrackingPolicyArgs{
/// 					MetricTarget: pulumi.Float64(1),
/// 					MetricType:   pulumi.String("ProvisionedConcurrencyUtilization"),
/// 					Name:         pulumi.String("t2"),
/// 					StartTime:    pulumi.String("2030-10-10T10:10:10Z"),
/// 					EndTime:      pulumi.String("2035-10-10T10:10:10Z"),
/// 					MinCapacity:  pulumi.Int(0),
/// 					MaxCapacity:  pulumi.Int(1),
/// 				},
/// 				&fc.V3ProvisionConfigTargetTrackingPolicyArgs{
/// 					MetricType:   pulumi.String("ProvisionedConcurrencyUtilization"),
/// 					TimeZone:     pulumi.String("Asia/Shanghai"),
/// 					Name:         pulumi.String("t3"),
/// 					StartTime:    pulumi.String("2030-10-10T10:10:10"),
/// 					EndTime:      pulumi.String("2035-10-10T10:10:10"),
/// 					MinCapacity:  pulumi.Int(0),
/// 					MaxCapacity:  pulumi.Int(1),
/// 					MetricTarget: pulumi.Float64(1),
/// 				},
/// 			},
/// 			ScheduledActions: fc.V3ProvisionConfigScheduledActionArray{
/// 				&fc.V3ProvisionConfigScheduledActionArgs{
/// 					Target:             pulumi.Int(0),
/// 					Name:               pulumi.String("s1"),
/// 					StartTime:          pulumi.String("2030-10-10T10:10:10Z"),
/// 					EndTime:            pulumi.String("2035-10-10T10:10:10Z"),
/// 					ScheduleExpression: pulumi.String("cron(0 0 4 * * *)"),
/// 				},
/// 				&fc.V3ProvisionConfigScheduledActionArgs{
/// 					Name:               pulumi.String("s2"),
/// 					StartTime:          pulumi.String("2030-10-10T10:10:10Z"),
/// 					EndTime:            pulumi.String("2035-10-10T10:10:10Z"),
/// 					ScheduleExpression: pulumi.String("cron(0 0 6 * * *)"),
/// 					Target:             pulumi.Int(1),
/// 				},
/// 				&fc.V3ProvisionConfigScheduledActionArgs{
/// 					StartTime:          pulumi.String("2030-10-10T10:10:10"),
/// 					EndTime:            pulumi.String("2035-10-10T10:10:10"),
/// 					ScheduleExpression: pulumi.String("cron(0 0 7 * * *)"),
/// 					Target:             pulumi.Int(0),
/// 					TimeZone:           pulumi.String("Asia/Shanghai"),
/// 					Name:               pulumi.String("s3"),
/// 				},
/// 			},
/// 			Qualifier:         pulumi.String("LATEST"),
/// 			AlwaysAllocateGpu: pulumi.Bool(true),
/// 			FunctionName:      function.FunctionName,
/// 			AlwaysAllocateCpu: pulumi.Bool(true),
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
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.time.Sleep;
/// import com.pulumi.time.SleepArgs;
/// import com.pulumi.alicloud.fc.V3Function;
/// import com.pulumi.alicloud.fc.V3FunctionArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionCodeArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionLogConfigArgs;
/// import com.pulumi.alicloud.fc.V3ProvisionConfig;
/// import com.pulumi.alicloud.fc.V3ProvisionConfigArgs;
/// import com.pulumi.alicloud.fc.inputs.V3ProvisionConfigTargetTrackingPolicyArgs;
/// import com.pulumi.alicloud.fc.inputs.V3ProvisionConfigScheduledActionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .projectName(String.format("%s-%s", name,default_.result()))
///             .description(name)
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .projectName(defaultProject.name())
///             .logstoreName(String.format("%s-%s", name,default_.result()))
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var wait10Minutes = new Sleep("wait10Minutes", SleepArgs.builder()
///             .createDuration("10m")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(List.of(defaultStore))
///                 .build());
///
///         var function = new V3Function("function", V3FunctionArgs.builder()
///             .memorySize(512)
///             .cpu(0.5)
///             .handler("index.handler")
///             .functionName(String.format("%s-%s", name,default_.result()))
///             .runtime("python3.10")
///             .diskSize(512)
///             .code(V3FunctionCodeArgs.builder()
///                 .zipFile("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=")
///                 .build())
///             .logConfig(V3FunctionLogConfigArgs.builder()
///                 .enableInstanceMetrics(true)
///                 .enableRequestMetrics(true)
///                 .project(defaultProject.projectName())
///                 .logstore(defaultStore.logstoreName())
///                 .logBeginRule("None")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait10Minutes)
///                 .build());
///
///         var defaultV3ProvisionConfig = new V3ProvisionConfig("defaultV3ProvisionConfig", V3ProvisionConfigArgs.builder()
///             .target(1)
///             .targetTrackingPolicies(
///                 V3ProvisionConfigTargetTrackingPolicyArgs.builder()
///                     .name("t1")
///                     .startTime("2030-10-10T10:10:10Z")
///                     .endTime("2035-10-10T10:10:10Z")
///                     .minCapacity(0)
///                     .maxCapacity(1)
///                     .metricTarget(1.0)
///                     .metricType("ProvisionedConcurrencyUtilization")
///                     .build(),
///                 V3ProvisionConfigTargetTrackingPolicyArgs.builder()
///                     .metricTarget(1.0)
///                     .metricType("ProvisionedConcurrencyUtilization")
///                     .name("t2")
///                     .startTime("2030-10-10T10:10:10Z")
///                     .endTime("2035-10-10T10:10:10Z")
///                     .minCapacity(0)
///                     .maxCapacity(1)
///                     .build(),
///                 V3ProvisionConfigTargetTrackingPolicyArgs.builder()
///                     .metricType("ProvisionedConcurrencyUtilization")
///                     .timeZone("Asia/Shanghai")
///                     .name("t3")
///                     .startTime("2030-10-10T10:10:10")
///                     .endTime("2035-10-10T10:10:10")
///                     .minCapacity(0)
///                     .maxCapacity(1)
///                     .metricTarget(1.0)
///                     .build())
///             .scheduledActions(
///                 V3ProvisionConfigScheduledActionArgs.builder()
///                     .target(0)
///                     .name("s1")
///                     .startTime("2030-10-10T10:10:10Z")
///                     .endTime("2035-10-10T10:10:10Z")
///                     .scheduleExpression("cron(0 0 4 * * *)")
///                     .build(),
///                 V3ProvisionConfigScheduledActionArgs.builder()
///                     .name("s2")
///                     .startTime("2030-10-10T10:10:10Z")
///                     .endTime("2035-10-10T10:10:10Z")
///                     .scheduleExpression("cron(0 0 6 * * *)")
///                     .target(1)
///                     .build(),
///                 V3ProvisionConfigScheduledActionArgs.builder()
///                     .startTime("2030-10-10T10:10:10")
///                     .endTime("2035-10-10T10:10:10")
///                     .scheduleExpression("cron(0 0 7 * * *)")
///                     .target(0)
///                     .timeZone("Asia/Shanghai")
///                     .name("s3")
///                     .build())
///             .qualifier("LATEST")
///             .alwaysAllocateGpu(true)
///             .functionName(function.functionName())
///             .alwaysAllocateCpu(true)
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
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       projectName: ${name}-${default.result}
///       description: ${name}
///   defaultStore:
///     type: alicloud:log:Store
///     name: default
///     properties:
///       projectName: ${defaultProject.name}
///       logstoreName: ${name}-${default.result}
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   wait10Minutes:
///     type: time:Sleep
///     name: wait_10_minutes
///     properties:
///       createDuration: 10m
///     options:
///       dependsOn:
///         - ${defaultStore}
///   function:
///     type: alicloud:fc:V3Function
///     properties:
///       memorySize: '512'
///       cpu: 0.5
///       handler: index.handler
///       functionName: ${name}-${default.result}
///       runtime: python3.10
///       diskSize: '512'
///       code:
///         zipFile: UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=
///       logConfig:
///         enableInstanceMetrics: true
///         enableRequestMetrics: true
///         project: ${defaultProject.projectName}
///         logstore: ${defaultStore.logstoreName}
///         logBeginRule: None
///     options:
///       dependsOn:
///         - ${wait10Minutes}
///   defaultV3ProvisionConfig:
///     type: alicloud:fc:V3ProvisionConfig
///     name: default
///     properties:
///       target: '1'
///       targetTrackingPolicies:
///         - name: t1
///           startTime: 2030-10-10T10:10:10Z
///           endTime: 2035-10-10T10:10:10Z
///           minCapacity: '0'
///           maxCapacity: '1'
///           metricTarget: '1'
///           metricType: ProvisionedConcurrencyUtilization
///         - metricTarget: '1'
///           metricType: ProvisionedConcurrencyUtilization
///           name: t2
///           startTime: 2030-10-10T10:10:10Z
///           endTime: 2035-10-10T10:10:10Z
///           minCapacity: '0'
///           maxCapacity: '1'
///         - metricType: ProvisionedConcurrencyUtilization
///           timeZone: Asia/Shanghai
///           name: t3
///           startTime: 2030-10-10T10:10:10
///           endTime: 2035-10-10T10:10:10
///           minCapacity: '0'
///           maxCapacity: '1'
///           metricTarget: '1'
///       scheduledActions:
///         - target: '0'
///           name: s1
///           startTime: 2030-10-10T10:10:10Z
///           endTime: 2035-10-10T10:10:10Z
///           scheduleExpression: cron(0 0 4 * * *)
///         - name: s2
///           startTime: 2030-10-10T10:10:10Z
///           endTime: 2035-10-10T10:10:10Z
///           scheduleExpression: cron(0 0 6 * * *)
///           target: '1'
///         - startTime: 2030-10-10T10:10:10
///           endTime: 2035-10-10T10:10:10
///           scheduleExpression: cron(0 0 7 * * *)
///           target: '0'
///           timeZone: Asia/Shanghai
///           name: s3
///       qualifier: LATEST
///       alwaysAllocateGpu: 'true'
///       functionName: ${function.functionName}
///       alwaysAllocateCpu: 'true'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// FCV3 Provision Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/v3ProvisionConfig:V3ProvisionConfig example <id>
/// ```
class V3ProvisionConfig extends pulumi.CustomResource {
  /// Whether the CPU is always allocated. The default value is true.
  late final pulumi.Output<bool?> alwaysAllocateCpu;
  /// Whether to always assign GPU to function instance
  late final pulumi.Output<bool?> alwaysAllocateGpu;
  /// (Available since v1.234.0) Number of actual resources
  late final pulumi.Output<int> current;
  /// (Available since v1.234.0) Error message when a Reserved Instance creation fails
  late final pulumi.Output<String> currentError;
  /// (Available since v1.234.0) Resource Description of the function
  late final pulumi.Output<String> functionArn;
  /// The name of the function. If this parameter is not specified, the provisioned configurations of all functions are listed.
  late final pulumi.Output<String> functionName;
  /// The function alias or LATEST.
  late final pulumi.Output<String?> qualifier;
  /// Timing policy configuration See `scheduled_actions` below.
  late final pulumi.Output<List<V3ProvisionConfigScheduledAction>?> scheduledActions;
  /// Number of reserved target resources. The value range is [0,10000].
  late final pulumi.Output<int?> target;
  /// Metric tracking scaling policy configuration See `target_tracking_policies` below.
  late final pulumi.Output<List<V3ProvisionConfigTargetTrackingPolicy>?> targetTrackingPolicies;

  /// Creates a new [V3ProvisionConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V3ProvisionConfig]. {@macro pulumi_fc_v3_provision_config_v3_provision_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V3ProvisionConfig(
    String name, {
    V3ProvisionConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/v3ProvisionConfig:V3ProvisionConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alwaysAllocateCpu = registerOutput<bool?>('alwaysAllocateCpu');
    this.alwaysAllocateGpu = registerOutput<bool?>('alwaysAllocateGpu');
    this.current = registerOutput<int>('current');
    this.currentError = registerOutput<String>('currentError');
    this.functionArn = registerOutput<String>('functionArn');
    this.functionName = registerOutput<String>('functionName');
    this.qualifier = registerOutput<String?>('qualifier');
    this.scheduledActions = registerOutput<List<V3ProvisionConfigScheduledAction>?>('scheduledActions');
    this.target = registerOutput<int?>('target');
    this.targetTrackingPolicies = registerOutput<List<V3ProvisionConfigTargetTrackingPolicy>?>('targetTrackingPolicies');
  }

  /// Gets an existing [V3ProvisionConfig] resource's state with the given [name] and [id].
  static V3ProvisionConfig get(
    String name,
    pulumi.Input<String> id, {
    V3ProvisionConfigState? state,
  }) {
    return V3ProvisionConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V3ProvisionConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/v3ProvisionConfig:V3ProvisionConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alwaysAllocateCpu = registerOutput<bool?>('alwaysAllocateCpu');
    this.alwaysAllocateGpu = registerOutput<bool?>('alwaysAllocateGpu');
    this.current = registerOutput<int>('current');
    this.currentError = registerOutput<String>('currentError');
    this.functionArn = registerOutput<String>('functionArn');
    this.functionName = registerOutput<String>('functionName');
    this.qualifier = registerOutput<String?>('qualifier');
    this.scheduledActions = registerOutput<List<V3ProvisionConfigScheduledAction>?>('scheduledActions');
    this.target = registerOutput<int?>('target');
    this.targetTrackingPolicies = registerOutput<List<V3ProvisionConfigTargetTrackingPolicy>?>('targetTrackingPolicies');
  }
}
