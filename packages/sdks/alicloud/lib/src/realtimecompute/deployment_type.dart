import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_artifact.dart';
import 'deployment_batch_resource_setting.dart';
import 'deployment_deployment_target.dart';
import 'deployment_logging.dart';
import 'deployment_state.dart';
import 'deployment_streaming_resource_setting.dart';

/// Provides a Realtime Compute Deployment resource.
///
/// Deployment in the Realtime Compute console.
///
/// For information about Realtime Compute Deployment and how to use it, see [What is Deployment](https://next.api.alibabacloud.com/document/ververica/2022-07-18/CreateDeployment).
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
/// 		_, err = realtimecompute.NewDeployment(ctx, "create_Deployment9", &realtimecompute.DeploymentArgs{
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Realtime Compute Deployment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:realtimecompute/deployment:Deployment example <resource_id>:<namespace>:<deployment_id>
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// Content of the deployment job See `artifact` below.
  late final pulumi.Output<DeploymentArtifact> artifact;

  /// Batch job resource settings See `batch_resource_setting` below.
  late final pulumi.Output<DeploymentBatchResourceSetting?>
  batchResourceSetting;

  /// Resource property field representing the primary resource ID
  late final pulumi.Output<String> deploymentId;

  /// Name of the deployment
  late final pulumi.Output<String> deploymentName;

  /// Deployment target See `deployment_target` below.
  late final pulumi.Output<DeploymentDeploymentTarget> deploymentTarget;

  /// Description
  late final pulumi.Output<String?> description;

  /// Engine version of the deployment instance
  late final pulumi.Output<String> engineVersion;

  /// Execution mode. Valid values: STREAMING or BATCH.
  late final pulumi.Output<String> executionMode;

  /// Flink configuration
  late final pulumi.Output<Map<String, String>> flinkConf;

  /// Deployment labels
  late final pulumi.Output<Map<String, String>?> labels;

  /// Job variables See `local_variables` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> localVariables;

  /// Job log configuration   See `logging` below.
  late final pulumi.Output<DeploymentLogging> logging;

  /// Namespace name
  late final pulumi.Output<String> namespace;

  /// Workspace resource ID
  late final pulumi.Output<String> resourceId;

  /// Resource settings for streaming mode See `streaming_resource_setting` below.
  late final pulumi.Output<DeploymentStreamingResourceSetting>
  streamingResourceSetting;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_realtimecompute_deployment_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:realtimecompute/deployment:Deployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    artifact = registerOutput<DeploymentArtifact>(
      'artifact',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentArtifact.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    batchResourceSetting = registerOutput<DeploymentBatchResourceSetting?>(
      'batchResourceSetting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentBatchResourceSetting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    deploymentId = registerOutput<String>('deploymentId');
    deploymentName = registerOutput<String>('deploymentName');
    deploymentTarget = registerOutput<DeploymentDeploymentTarget>(
      'deploymentTarget',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentDeploymentTarget.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    engineVersion = registerOutput<String>('engineVersion');
    executionMode = registerOutput<String>('executionMode');
    flinkConf = registerOutput<Map<String, String>>('flinkConf');
    labels = registerOutput<Map<String, String>?>('labels');
    localVariables = registerOutput<List<Map<String, dynamic>>?>(
      'localVariables',
    );
    logging = registerOutput<DeploymentLogging>(
      'logging',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentLogging.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    namespace = registerOutput<String>('namespace');
    resourceId = registerOutput<String>('resourceId');
    streamingResourceSetting =
        registerOutput<DeploymentStreamingResourceSetting>(
          'streamingResourceSetting',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return DeploymentStreamingResourceSetting.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }

  /// Gets an existing [DeploymentType] resource's state with the given [name] and [id].
  static DeploymentType get(
    String name,
    pulumi.Input<String> id, {
    DeploymentState? state,
  }) {
    return DeploymentType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeploymentType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:realtimecompute/deployment:Deployment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    artifact = registerOutput<DeploymentArtifact>(
      'artifact',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentArtifact.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    batchResourceSetting = registerOutput<DeploymentBatchResourceSetting?>(
      'batchResourceSetting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentBatchResourceSetting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    deploymentId = registerOutput<String>('deploymentId');
    deploymentName = registerOutput<String>('deploymentName');
    deploymentTarget = registerOutput<DeploymentDeploymentTarget>(
      'deploymentTarget',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentDeploymentTarget.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    engineVersion = registerOutput<String>('engineVersion');
    executionMode = registerOutput<String>('executionMode');
    flinkConf = registerOutput<Map<String, String>>('flinkConf');
    labels = registerOutput<Map<String, String>?>('labels');
    localVariables = registerOutput<List<Map<String, dynamic>>?>(
      'localVariables',
    );
    logging = registerOutput<DeploymentLogging>(
      'logging',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentLogging.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    namespace = registerOutput<String>('namespace');
    resourceId = registerOutput<String>('resourceId');
    streamingResourceSetting =
        registerOutput<DeploymentStreamingResourceSetting>(
          'streamingResourceSetting',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return DeploymentStreamingResourceSetting.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
