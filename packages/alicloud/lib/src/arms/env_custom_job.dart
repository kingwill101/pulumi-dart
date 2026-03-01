import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_custom_job_args.dart';

/// Provides a ARMS Env Custom Job resource. Custom jobs in the arms environment.
///
/// For information about ARMS Env Custom Job and how to use it, see [What is Env Custom Job](https://www.alibabacloud.com/help/en/arms/developer-reference/api-arms-2019-08-08-createenvcustomjob).
///
/// > **NOTE:** Available since v1.212.0.
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
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const vpc = new alicloud.vpc.Network("vpc", {
///     description: name,
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const env_ecs = new alicloud.arms.Environment("env-ecs", {
///     environmentType: "ECS",
///     environmentName: `terraform-example-${_default.result}`,
///     bindResourceId: vpc.id,
///     environmentSubType: "ECS",
/// });
/// const defaultEnvCustomJob = new alicloud.arms.EnvCustomJob("default", {
///     status: "run",
///     environmentId: env_ecs.id,
///     envCustomJobName: name,
///     configYaml: `scrape_configs:
/// - job_name: job-demo1
///   honor_timestamps: false
///   honor_labels: false
///   scrape_interval: 30s
///   scheme: http
///   metrics_path: /metric
///   static_configs:
///   - targets:
///     - 127.0.0.1:9090
/// `,
///     aliyunLang: "en",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// vpc = alicloud.vpc.Network("vpc",
///     description=name,
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// env_ecs = alicloud.arms.Environment("env-ecs",
///     environment_type="ECS",
///     environment_name=f"terraform-example-{default['result']}",
///     bind_resource_id=vpc.id,
///     environment_sub_type="ECS")
/// default_env_custom_job = alicloud.arms.EnvCustomJob("default",
///     status="run",
///     environment_id=env_ecs.id,
///     env_custom_job_name=name,
///     config_yaml="""scrape_configs:
/// - job_name: job-demo1
///   honor_timestamps: false
///   honor_labels: false
///   scrape_interval: 30s
///   scheme: http
///   metrics_path: /metric
///   static_configs:
///   - targets:
///     - 127.0.0.1:9090
/// """,
///     aliyun_lang="en")
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         Description = name,
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var env_ecs = new AliCloud.Arms.Environment("env-ecs", new()
///     {
///         EnvironmentType = "ECS",
///         EnvironmentName = $"terraform-example-{@default.Result}",
///         BindResourceId = vpc.Id,
///         EnvironmentSubType = "ECS",
///     });
///
///     var defaultEnvCustomJob = new AliCloud.Arms.EnvCustomJob("default", new()
///     {
///         Status = "run",
///         EnvironmentId = env_ecs.Id,
///         EnvCustomJobName = name,
///         ConfigYaml = @"scrape_configs:
/// - job_name: job-demo1
///   honor_timestamps: false
///   honor_labels: false
///   scrape_interval: 30s
///   scheme: http
///   metrics_path: /metric
///   static_configs:
///   - targets:
///     - 127.0.0.1:9090
/// ",
///         AliyunLang = "en",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// 			Description: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("172.16.0.0/12"),
/// 			VpcName:     pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		env_ecs, err := arms.NewEnvironment(ctx, "env-ecs", &arms.EnvironmentArgs{
/// 			EnvironmentType:    pulumi.String("ECS"),
/// 			EnvironmentName:    pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			BindResourceId:     vpc.ID(),
/// 			EnvironmentSubType: pulumi.String("ECS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arms.NewEnvCustomJob(ctx, "default", &arms.EnvCustomJobArgs{
/// 			Status:           pulumi.String("run"),
/// 			EnvironmentId:    env_ecs.ID(),
/// 			EnvCustomJobName: pulumi.String(name),
/// 			ConfigYaml: pulumi.String(`scrape_configs:
/// - job_name: job-demo1
///   honor_timestamps: false
///   honor_labels: false
///   scrape_interval: 30s
///   scheme: http
///   metrics_path: /metric
///   static_configs:
///   - targets:
///     - 127.0.0.1:9090
/// `),
/// 			AliyunLang: pulumi.String("en"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.arms.Environment;
/// import com.pulumi.alicloud.arms.EnvironmentArgs;
/// import com.pulumi.alicloud.arms.EnvCustomJob;
/// import com.pulumi.alicloud.arms.EnvCustomJobArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         final var name = config.get("name").orElse("terraform-example");
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .description(name)
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         var env_ecs = new Environment("env-ecs", EnvironmentArgs.builder()
///             .environmentType("ECS")
///             .environmentName(String.format("terraform-example-%s", default_.result()))
///             .bindResourceId(vpc.id())
///             .environmentSubType("ECS")
///             .build());
///
///         var defaultEnvCustomJob = new EnvCustomJob("defaultEnvCustomJob", EnvCustomJobArgs.builder()
///             .status("run")
///             .environmentId(env_ecs.id())
///             .envCustomJobName(name)
///             .configYaml("""
/// scrape_configs:
/// - job_name: job-demo1
///   honor_timestamps: false
///   honor_labels: false
///   scrape_interval: 30s
///   scheme: http
///   metrics_path: /metric
///   static_configs:
///   - targets:
///     - 127.0.0.1:9090
///             """)
///             .aliyunLang("en")
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
///       max: 99999
///       min: 10000
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       description: ${name}
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   env-ecs:
///     type: alicloud:arms:Environment
///     properties:
///       environmentType: ECS
///       environmentName: terraform-example-${default.result}
///       bindResourceId: ${vpc.id}
///       environmentSubType: ECS
///   defaultEnvCustomJob:
///     type: alicloud:arms:EnvCustomJob
///     name: default
///     properties:
///       status: run
///       environmentId: ${["env-ecs"].id}
///       envCustomJobName: ${name}
///       configYaml: |
///         scrape_configs:
///         - job_name: job-demo1
///           honor_timestamps: false
///           honor_labels: false
///           scrape_interval: 30s
///           scheme: http
///           metrics_path: /metric
///           static_configs:
///           - targets:
///             - 127.0.0.1:9090
///       aliyunLang: en
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ARMS Env Custom Job can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:arms/envCustomJob:EnvCustomJob example <environment_id>:<env_custom_job_name>
/// ```
class EnvCustomJob extends pulumi.CustomResource {
  /// The locale. The default is Chinese zh | en.
  late final pulumi.Output<String?> aliyunLang;
  /// Yaml configuration string.
  late final pulumi.Output<String> configYaml;
  /// Custom job name.
  late final pulumi.Output<String> envCustomJobName;
  /// Environment id.
  late final pulumi.Output<String> environmentId;
  /// Status: run, stop.
  late final pulumi.Output<String> status;

  /// Creates a new [EnvCustomJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvCustomJob]. {@macro pulumi_arms_env_custom_job_env_custom_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvCustomJob(
    String name, {
    EnvCustomJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:arms/envCustomJob:EnvCustomJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aliyunLang = registerOutput<String?>('aliyunLang');
    this.configYaml = registerOutput<String>('configYaml');
    this.envCustomJobName = registerOutput<String>('envCustomJobName');
    this.environmentId = registerOutput<String>('environmentId');
    this.status = registerOutput<String>('status');
  }
}
