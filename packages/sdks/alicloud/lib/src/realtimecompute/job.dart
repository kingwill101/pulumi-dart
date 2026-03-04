import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_restore_strategy.dart';
import 'job_state.dart';
import 'job_status.dart';

/// Provides a Realtime Compute Job resource.
///
///
///
/// For information about Realtime Compute Job and how to use it, see [What is Job](https://next.api.alibabacloud.com/document/ververica/2022-07-18/StartJobWithParams).
///
/// &gt; **NOTE:** Available since v1.265.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.vpc.Network("default", {
///     isDefault: false,
///     cidrBlock: "172.16.0.0/16",
///     vpcName: "example-tf-vpc-deployment",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     isDefault: false,
///     vpcId: _default.id,
///     zoneId: "cn-beijing-g",
///     cidrBlock: "172.16.0.0/24",
///     vswitchName: "example-tf-vSwitch-deployment",
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {});
/// const defaultVvpInstance = new alicloud.realtimecompute.VvpInstance("default", {
///     vvpInstanceName: "code-example-tf-deployment",
///     storage: {
///         oss: {
///             bucket: defaultBucket.id,
///         },
///     },
///     vpcId: _default.id,
///     vswitchIds: [defaultSwitch.id],
///     resourceSpec: {
///         cpu: 8,
///         memoryGb: 32,
///     },
///     paymentType: "PayAsYouGo",
///     zoneId: defaultSwitch.zoneId,
/// });
/// const createDeployment9 = new alicloud.realtimecompute.Deployment("create_Deployment9", {
///     deploymentName: "tf-example-deployment-sql-56",
///     engineVersion: "vvr-8.0.10-flink-1.17",
///     resourceId: defaultVvpInstance.resourceId,
///     executionMode: "STREAMING",
///     deploymentTarget: {
///         mode: "PER_JOB",
///         name: "default-queue",
///     },
///     namespace: pulumi.interpolate`${defaultVvpInstance.vvpInstanceName}-default`,
///     artifact: {
///         kind: "SQLSCRIPT",
///         sqlArtifact: {
///             sqlScript: "create temporary table `datagen` ( id varchar, name varchar ) with ( 'connector' = 'datagen' );  create temporary table `blackhole` ( id varchar, name varchar ) with ( 'connector' = 'blackhole' );  insert into blackhole select * from datagen;",
///         },
///     },
/// });
/// const defaultJob = new alicloud.realtimecompute.Job("default", {
///     localVariables: [{
///         value: "qq",
///         name: "tt",
///     }],
///     restoreStrategy: {
///         kind: "NONE",
///         jobStartTimeInMs: 1763694521254,
///     },
///     namespace: pulumi.interpolate`${defaultVvpInstance.vvpInstanceName}-default`,
///     stopStrategy: "NONE",
///     deploymentId: createDeployment9.deploymentId,
///     resourceQueueName: "default-queue",
///     status: {
///         currentJobStatus: "CANCELLED",
///     },
///     resourceId: defaultVvpInstance.resourceId,
/// });
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
///     is_default=False,
///     cidr_block="172.16.0.0/16",
///     vpc_name="example-tf-vpc-deployment")
/// default_switch = alicloud.vpc.Switch("default",
///     is_default=False,
///     vpc_id=default.id,
///     zone_id="cn-beijing-g",
///     cidr_block="172.16.0.0/24",
///     vswitch_name="example-tf-vSwitch-deployment")
/// default_bucket = alicloud.oss.Bucket("default")
/// default_vvp_instance = alicloud.realtimecompute.VvpInstance("default",
///     vvp_instance_name="code-example-tf-deployment",
///     storage={
///         "oss": {
///             "bucket": default_bucket.id,
///         },
///     },
///     vpc_id=default.id,
///     vswitch_ids=[default_switch.id],
///     resource_spec={
///         "cpu": 8,
///         "memory_gb": 32,
///     },
///     payment_type="PayAsYouGo",
///     zone_id=default_switch.zone_id)
/// create_deployment9 = alicloud.realtimecompute.Deployment("create_Deployment9",
///     deployment_name="tf-example-deployment-sql-56",
///     engine_version="vvr-8.0.10-flink-1.17",
///     resource_id=default_vvp_instance.resource_id,
///     execution_mode="STREAMING",
///     deployment_target={
///         "mode": "PER_JOB",
///         "name": "default-queue",
///     },
///     namespace=default_vvp_instance.vvp_instance_name.apply(lambda vvp_instance_name: f"{vvp_instance_name}-default"),
///     artifact={
///         "kind": "SQLSCRIPT",
///         "sql_artifact": {
///             "sql_script": "create temporary table `datagen` ( id varchar, name varchar ) with ( 'connector' = 'datagen' );  create temporary table `blackhole` ( id varchar, name varchar ) with ( 'connector' = 'blackhole' );  insert into blackhole select * from datagen;",
///         },
///     })
/// default_job = alicloud.realtimecompute.Job("default",
///     local_variables=[{
///         "value": "qq",
///         "name": "tt",
///     }],
///     restore_strategy={
///         "kind": "NONE",
///         "job_start_time_in_ms": 1763694521254,
///     },
///     namespace=default_vvp_instance.vvp_instance_name.apply(lambda vvp_instance_name: f"{vvp_instance_name}-default"),
///     stop_strategy="NONE",
///     deployment_id=create_deployment9.deployment_id,
///     resource_queue_name="default-queue",
///     status={
///         "current_job_status": "CANCELLED",
///     },
///     resource_id=default_vvp_instance.resource_id)
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
///         IsDefault = false,
///         CidrBlock = "172.16.0.0/16",
///         VpcName = "example-tf-vpc-deployment",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         IsDefault = false,
///         VpcId = @default.Id,
///         ZoneId = "cn-beijing-g",
///         CidrBlock = "172.16.0.0/24",
///         VswitchName = "example-tf-vSwitch-deployment",
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default");
///
///     var defaultVvpInstance = new AliCloud.RealtimeCompute.VvpInstance("default", new()
///     {
///         VvpInstanceName = "code-example-tf-deployment",
///         Storage = new AliCloud.RealtimeCompute.Inputs.VvpInstanceStorageArgs
///         {
///             Oss = new AliCloud.RealtimeCompute.Inputs.VvpInstanceStorageOssArgs
///             {
///                 Bucket = defaultBucket.Id,
///             },
///         },
///         VpcId = @default.Id,
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         ResourceSpec = new AliCloud.RealtimeCompute.Inputs.VvpInstanceResourceSpecArgs
///         {
///             Cpu = 8,
///             MemoryGb = 32,
///         },
///         PaymentType = "PayAsYouGo",
///         ZoneId = defaultSwitch.ZoneId,
///     });
///
///     var createDeployment9 = new AliCloud.RealtimeCompute.Deployment("create_Deployment9", new()
///     {
///         DeploymentName = "tf-example-deployment-sql-56",
///         EngineVersion = "vvr-8.0.10-flink-1.17",
///         ResourceId = defaultVvpInstance.ResourceId,
///         ExecutionMode = "STREAMING",
///         DeploymentTarget = new AliCloud.RealtimeCompute.Inputs.DeploymentDeploymentTargetArgs
///         {
///             Mode = "PER_JOB",
///             Name = "default-queue",
///         },
///         Namespace = defaultVvpInstance.VvpInstanceName.Apply(vvpInstanceName => $"{vvpInstanceName}-default"),
///         Artifact = new AliCloud.RealtimeCompute.Inputs.DeploymentArtifactArgs
///         {
///             Kind = "SQLSCRIPT",
///             SqlArtifact = new AliCloud.RealtimeCompute.Inputs.DeploymentArtifactSqlArtifactArgs
///             {
///                 SqlScript = "create temporary table `datagen` ( id varchar, name varchar ) with ( 'connector' = 'datagen' );  create temporary table `blackhole` ( id varchar, name varchar ) with ( 'connector' = 'blackhole' );  insert into blackhole select * from datagen;",
///             },
///         },
///     });
///
///     var defaultJob = new AliCloud.RealtimeCompute.Job("default", new()
///     {
///         LocalVariables = new[]
///         {
///             new AliCloud.RealtimeCompute.Inputs.JobLocalVariableArgs
///             {
///                 Value = "qq",
///                 Name = "tt",
///             },
///         },
///         RestoreStrategy = new AliCloud.RealtimeCompute.Inputs.JobRestoreStrategyArgs
///         {
///             Kind = "NONE",
///             JobStartTimeInMs = 1763694521254,
///         },
///         Namespace = defaultVvpInstance.VvpInstanceName.Apply(vvpInstanceName => $"{vvpInstanceName}-default"),
///         StopStrategy = "NONE",
///         DeploymentId = createDeployment9.DeploymentId,
///         ResourceQueueName = "default-queue",
///         Status = new AliCloud.RealtimeCompute.Inputs.JobStatusArgs
///         {
///             CurrentJobStatus = "CANCELLED",
///         },
///         ResourceId = defaultVvpInstance.ResourceId,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/realtimecompute"
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
/// 			IsDefault: pulumi.Bool(false),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 			VpcName:   pulumi.String("example-tf-vpc-deployment"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			IsDefault:   pulumi.Bool(false),
/// 			VpcId:       _default.ID(),
/// 			ZoneId:      pulumi.String("cn-beijing-g"),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			VswitchName: pulumi.String("example-tf-vSwitch-deployment"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVvpInstance, err := realtimecompute.NewVvpInstance(ctx, "default", &realtimecompute.VvpInstanceArgs{
/// 			VvpInstanceName: pulumi.String("code-example-tf-deployment"),
/// 			Storage: &realtimecompute.VvpInstanceStorageArgs{
/// 				Oss: &realtimecompute.VvpInstanceStorageOssArgs{
/// 					Bucket: defaultBucket.ID(),
/// 				},
/// 			},
/// 			VpcId: _default.ID(),
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			ResourceSpec: &realtimecompute.VvpInstanceResourceSpecArgs{
/// 				Cpu:      pulumi.Int(8),
/// 				MemoryGb: pulumi.Int(32),
/// 			},
/// 			PaymentType: pulumi.String("PayAsYouGo"),
/// 			ZoneId:      defaultSwitch.ZoneId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createDeployment9, err := realtimecompute.NewDeployment(ctx, "create_Deployment9", &realtimecompute.DeploymentArgs{
/// 			DeploymentName: pulumi.String("tf-example-deployment-sql-56"),
/// 			EngineVersion:  pulumi.String("vvr-8.0.10-flink-1.17"),
/// 			ResourceId:     defaultVvpInstance.ResourceId,
/// 			ExecutionMode:  pulumi.String("STREAMING"),
/// 			DeploymentTarget: &realtimecompute.DeploymentDeploymentTargetArgs{
/// 				Mode: pulumi.String("PER_JOB"),
/// 				Name: pulumi.String("default-queue"),
/// 			},
/// 			Namespace: defaultVvpInstance.VvpInstanceName.ApplyT(func(vvpInstanceName string) (string, error) {
/// 				return fmt.Sprintf("%v-default", vvpInstanceName), nil
/// 			}).(pulumi.StringOutput),
/// 			Artifact: &realtimecompute.DeploymentArtifactArgs{
/// 				Kind: pulumi.String("SQLSCRIPT"),
/// 				SqlArtifact: &realtimecompute.DeploymentArtifactSqlArtifactArgs{
/// 					SqlScript: pulumi.String("create temporary table `datagen` ( id varchar, name varchar ) with ( 'connector' = 'datagen' );  create temporary table `blackhole` ( id varchar, name varchar ) with ( 'connector' = 'blackhole' );  insert into blackhole select * from datagen;"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = realtimecompute.NewJob(ctx, "default", &realtimecompute.JobArgs{
/// 			LocalVariables: realtimecompute.JobLocalVariableArray{
/// 				&realtimecompute.JobLocalVariableArgs{
/// 					Value: pulumi.String("qq"),
/// 					Name:  pulumi.String("tt"),
/// 				},
/// 			},
/// 			RestoreStrategy: &realtimecompute.JobRestoreStrategyArgs{
/// 				Kind:             pulumi.String("NONE"),
/// 				JobStartTimeInMs: pulumi.Int(1763694521254),
/// 			},
/// 			Namespace: defaultVvpInstance.VvpInstanceName.ApplyT(func(vvpInstanceName string) (string, error) {
/// 				return fmt.Sprintf("%v-default", vvpInstanceName), nil
/// 			}).(pulumi.StringOutput),
/// 			StopStrategy:      pulumi.String("NONE"),
/// 			DeploymentId:      createDeployment9.DeploymentId,
/// 			ResourceQueueName: pulumi.String("default-queue"),
/// 			Status: &realtimecompute.JobStatusArgs{
/// 				CurrentJobStatus: pulumi.String("CANCELLED"),
/// 			},
/// 			ResourceId: defaultVvpInstance.ResourceId,
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.realtimecompute.VvpInstance;
/// import com.pulumi.alicloud.realtimecompute.VvpInstanceArgs;
/// import com.pulumi.alicloud.realtimecompute.inputs.VvpInstanceStorageArgs;
/// import com.pulumi.alicloud.realtimecompute.inputs.VvpInstanceStorageOssArgs;
/// import com.pulumi.alicloud.realtimecompute.inputs.VvpInstanceResourceSpecArgs;
/// import com.pulumi.alicloud.realtimecompute.Deployment;
/// import com.pulumi.alicloud.realtimecompute.DeploymentArgs;
/// import com.pulumi.alicloud.realtimecompute.inputs.DeploymentDeploymentTargetArgs;
/// import com.pulumi.alicloud.realtimecompute.inputs.DeploymentArtifactArgs;
/// import com.pulumi.alicloud.realtimecompute.inputs.DeploymentArtifactSqlArtifactArgs;
/// import com.pulumi.alicloud.realtimecompute.Job;
/// import com.pulumi.alicloud.realtimecompute.JobArgs;
/// import com.pulumi.alicloud.realtimecompute.inputs.JobLocalVariableArgs;
/// import com.pulumi.alicloud.realtimecompute.inputs.JobRestoreStrategyArgs;
/// import com.pulumi.alicloud.realtimecompute.inputs.JobStatusArgs;
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
///             .isDefault(false)
///             .cidrBlock("172.16.0.0/16")
///             .vpcName("example-tf-vpc-deployment")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .isDefault(false)
///             .vpcId(default_.id())
///             .zoneId("cn-beijing-g")
///             .cidrBlock("172.16.0.0/24")
///             .vswitchName("example-tf-vSwitch-deployment")
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket");
///
///         var defaultVvpInstance = new VvpInstance("defaultVvpInstance", VvpInstanceArgs.builder()
///             .vvpInstanceName("code-example-tf-deployment")
///             .storage(VvpInstanceStorageArgs.builder()
///                 .oss(VvpInstanceStorageOssArgs.builder()
///                     .bucket(defaultBucket.id())
///                     .build())
///                 .build())
///             .vpcId(default_.id())
///             .vswitchIds(defaultSwitch.id())
///             .resourceSpec(VvpInstanceResourceSpecArgs.builder()
///                 .cpu(8)
///                 .memoryGb(32)
///                 .build())
///             .paymentType("PayAsYouGo")
///             .zoneId(defaultSwitch.zoneId())
///             .build());
///
///         var createDeployment9 = new Deployment("createDeployment9", DeploymentArgs.builder()
///             .deploymentName("tf-example-deployment-sql-56")
///             .engineVersion("vvr-8.0.10-flink-1.17")
///             .resourceId(defaultVvpInstance.resourceId())
///             .executionMode("STREAMING")
///             .deploymentTarget(DeploymentDeploymentTargetArgs.builder()
///                 .mode("PER_JOB")
///                 .name("default-queue")
///                 .build())
///             .namespace(defaultVvpInstance.vvpInstanceName().applyValue(_vvpInstanceName -> String.format("%s-default", _vvpInstanceName)))
///             .artifact(DeploymentArtifactArgs.builder()
///                 .kind("SQLSCRIPT")
///                 .sqlArtifact(DeploymentArtifactSqlArtifactArgs.builder()
///                     .sqlScript("create temporary table `datagen` ( id varchar, name varchar ) with ( 'connector' = 'datagen' );  create temporary table `blackhole` ( id varchar, name varchar ) with ( 'connector' = 'blackhole' );  insert into blackhole select * from datagen;")
///                     .build())
///                 .build())
///             .build());
///
///         var defaultJob = new Job("defaultJob", JobArgs.builder()
///             .localVariables(JobLocalVariableArgs.builder()
///                 .value("qq")
///                 .name("tt")
///                 .build())
///             .restoreStrategy(JobRestoreStrategyArgs.builder()
///                 .kind("NONE")
///                 .jobStartTimeInMs(1763694521254)
///                 .build())
///             .namespace(defaultVvpInstance.vvpInstanceName().applyValue(_vvpInstanceName -> String.format("%s-default", _vvpInstanceName)))
///             .stopStrategy("NONE")
///             .deploymentId(createDeployment9.deploymentId())
///             .resourceQueueName("default-queue")
///             .status(JobStatusArgs.builder()
///                 .currentJobStatus("CANCELLED")
///                 .build())
///             .resourceId(defaultVvpInstance.resourceId())
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
///     type: alicloud:vpc:Network
///     properties:
///       isDefault: false
///       cidrBlock: 172.16.0.0/16
///       vpcName: example-tf-vpc-deployment
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       isDefault: false
///       vpcId: ${default.id}
///       zoneId: cn-beijing-g
///       cidrBlock: 172.16.0.0/24
///       vswitchName: example-tf-vSwitch-deployment
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///   defaultVvpInstance:
///     type: alicloud:realtimecompute:VvpInstance
///     name: default
///     properties:
///       vvpInstanceName: code-example-tf-deployment
///       storage:
///         oss:
///           bucket: ${defaultBucket.id}
///       vpcId: ${default.id}
///       vswitchIds:
///         - ${defaultSwitch.id}
///       resourceSpec:
///         cpu: '8'
///         memoryGb: '32'
///       paymentType: PayAsYouGo
///       zoneId: ${defaultSwitch.zoneId}
///   createDeployment9:
///     type: alicloud:realtimecompute:Deployment
///     name: create_Deployment9
///     properties:
///       deploymentName: tf-example-deployment-sql-56
///       engineVersion: vvr-8.0.10-flink-1.17
///       resourceId: ${defaultVvpInstance.resourceId}
///       executionMode: STREAMING
///       deploymentTarget:
///         mode: PER_JOB
///         name: default-queue
///       namespace: ${defaultVvpInstance.vvpInstanceName}-default
///       artifact:
///         kind: SQLSCRIPT
///         sqlArtifact:
///           sqlScript: create temporary table `datagen` ( id varchar, name varchar ) with ( 'connector' = 'datagen' );  create temporary table `blackhole` ( id varchar, name varchar ) with ( 'connector' = 'blackhole' );  insert into blackhole select * from datagen;
///   defaultJob:
///     type: alicloud:realtimecompute:Job
///     name: default
///     properties:
///       localVariables:
///         - value: qq
///           name: tt
///       restoreStrategy:
///         kind: NONE
///         jobStartTimeInMs: '1763694521254'
///       namespace: ${defaultVvpInstance.vvpInstanceName}-default
///       stopStrategy: NONE
///       deploymentId: ${createDeployment9.deploymentId}
///       resourceQueueName: default-queue
///       status:
///         currentJobStatus: CANCELLED
///       resourceId: ${defaultVvpInstance.resourceId}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Realtime Compute Job can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:realtimecompute/job:Job example <resource_id>:<namespace>:<job_id>
/// ```
class Job extends pulumi.CustomResource {
  /// deploymentId
  late final pulumi.Output<String?> deploymentId;

  /// The first ID of the resource
  late final pulumi.Output<String> jobId;

  /// Local variables See `local_variables` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> localVariables;

  /// namespace
  late final pulumi.Output<String> namespace;

  /// workspace
  late final pulumi.Output<String> resourceId;

  /// Resource Queue for Job Run
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> resourceQueueName;

  /// Restore strategy See `restore_strategy` below.
  late final pulumi.Output<JobRestoreStrategy?> restoreStrategy;

  /// job status See `status` below.
  late final pulumi.Output<JobStatus> status;
  late final pulumi.Output<String?> stopStrategy;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_realtimecompute_job_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:realtimecompute/job:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    deploymentId = registerOutput<String?>('deploymentId');
    jobId = registerOutput<String>('jobId');
    localVariables = registerOutput<List<Map<String, dynamic>>?>(
      'localVariables',
    );
    namespace = registerOutput<String>('namespace');
    resourceId = registerOutput<String>('resourceId');
    resourceQueueName = registerOutput<String?>('resourceQueueName');
    restoreStrategy = registerOutput<JobRestoreStrategy?>('restoreStrategy');
    status = registerOutput<JobStatus>('status');
    stopStrategy = registerOutput<String?>('stopStrategy');
  }

  /// Gets an existing [Job] resource's state with the given [name] and [id].
  static Job get(String name, pulumi.Input<String> id, {JobState? state}) {
    return Job._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Job._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:realtimecompute/job:Job',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deploymentId = registerOutput<String?>('deploymentId');
    jobId = registerOutput<String>('jobId');
    localVariables = registerOutput<List<Map<String, dynamic>>?>(
      'localVariables',
    );
    namespace = registerOutput<String>('namespace');
    resourceId = registerOutput<String>('resourceId');
    resourceQueueName = registerOutput<String?>('resourceQueueName');
    restoreStrategy = registerOutput<JobRestoreStrategy?>('restoreStrategy');
    status = registerOutput<JobStatus>('status');
    stopStrategy = registerOutput<String?>('stopStrategy');
  }
}
